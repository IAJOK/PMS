using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 专业技能训练
{
    public partial class Homepage : System.Web.UI.Page
    {
        string eid;
        string pwd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["eid"] != null)
            {
                tb_eid.text = Request.QueryString["eid"].ToString();
            }
        }
        protected void bt_login_Click(object sender, EventArgs e)
        {
            eid = tb_eid.Text.ToString().Trim();
            pwd = tb_pwd.Text.ToString().Trim();

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
                        if (reader["limit"].ToString().Replace(" ", "") == "False")
                        {
                            Response.Redirect("registe.aspx");
                        }
                        else
                        {
                            Response.Redirect("registe.aspx");
                        }
                    }
                    else
                    {
                        tb_eid.Text = "";
                        tb_pwd.Text = "";
                        lb_pwderror.Text = "账号或者密码错误！";
                    }

                }
            }
        }
        protected void tb_uid_TextChanged(object sender, EventArgs e)
        {

        }
        protected void tb_pwd_TextChanged(object sender, EventArgs e)
        {

        }

    }
}