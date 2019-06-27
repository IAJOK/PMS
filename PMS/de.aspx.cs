using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PMS
{
    public partial class de : System.Web.UI.Page
    {
        String sqlconn = "Data Source=(LocalDB)\\MSSQLLocalDB;" + "AttachDbFilename='|DataDirectory|\\Database1.mdf';";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void ShowData1()
        {
            using (SqlConnection cn = new SqlConnection())
            {

                cn.ConnectionString = sqlconn;
                cn.Open();
                String sql1 = "select * from 员工";
                SqlCommand cmd = new SqlCommand(sql1, cn);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();

            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow dgi in this.GridView1.Rows)
            {
                CheckBox cb = (CheckBox)dgi.FindControl("cbSelect");
                if (cb.Checked)
                {
                    Int32 index = dgi.RowIndex;
                    DataKey key = this.GridView1.DataKeys[index];
                    String newsid = key.Values["news_id"].ToString();
                    //以下执行删除操作
                    String strSql = "delete news where news_id = '" + newsid + "'";
                    SqlCommand com = Data.BuilderCom(strSql);
                    Int32 num = com.ExecuteNonQuery();
                    if (num > 0)
                    {
                        Response.Write("<script>alert('成功删除所选！');</script>");
                    }
                    cbAll.Checked = false;
                }
            }
            this.GridView1.PageIndex = 0;
            ShowData1();
        }
    }
}