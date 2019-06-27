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


        protected void Button1_Click1(object sender, EventArgs e)
        {
            String eid = Session["eid"].ToString();
            Response.Write(eid);
            Response.Write("eid");
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
                        if (TextBox_new.Text.Equals(TextBox_new2.Text))//检查新密码输入是否一致
                        {//编写sql语句实现修改密码
                            string sql = string.Format(" update 员工 set password =N'{0}' where eid ='{1}'", TextBox_new.Text, eid);
                            
                        }
                        else
                        {
                            TextBox_old.Text = "";
                            TextBox_new2.Text = "";
                            TextBox_new.Text = "";
                            Label_err.Text = "请检查输入！";
                        }

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