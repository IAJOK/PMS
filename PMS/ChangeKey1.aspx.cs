using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PMS
{
    public partial class ChangeKey1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            String eid = Session["eid"].ToString();
            String pwd = TextBox_old.Text.ToString().Trim();
            // 连接数据库，查询密码是否正确
            string sqlconn = "Data Source=(LocalDB)\\MSSQLLocalDB;" +
                   "AttachDbFilename='|DataDirectory|\\Database1.mdf';";
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = sqlconn; cn.Open();
                string sqlstr = string.Format("SELECT * FROM [员工]");
                SqlCommand cmd = new SqlCommand(sqlstr, cn);
                SqlDataReader reader = cmd.ExecuteReader();//执行查找指令并返回查找结果
                while (reader.Read())
                {
                    if (reader["eid"].ToString().Replace(" ", "") == eid && reader["password"].ToString().Replace(" ", "") == pwd)
                    {
                        // 用HttpUtility解决中文乱码问题
                        HttpCookie cookiePwd = new HttpCookie("eid", HttpUtility.UrlEncode(eid));
                        Response.AppendCookie(cookiePwd);
                        
                        
                    }
                    else
                    {
                        TextBox_old.Text = "";
                        TextBox_new2.Text = "";
                        TextBox_new.Text = "";
                        Label_err.Text = "密码错误！";
                    }

                }
            }
        }
    }
}