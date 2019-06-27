using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PMS
{
    public partial class ChangeKey2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int pswt = 0;
            String eid = Session["eid"].ToString();
            String pwd = TextBox_old.Text.ToString().Trim();
            // 连接数据库，查询密码是否正确
            string sqlconn = "Data Source=(LocalDB)\\MSSQLLocalDB;" +
                   "AttachDbFilename='|DataDirectory|\\Database1.mdf';";
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = sqlconn;
                cn.Open();
                String sql1 = "select * from 员工 where eid = " + eid;
                SqlCommand cmd = new SqlCommand(sql1, cn);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    if (dr["eid"].ToString().Replace(" ", "") == eid && dr["password"].ToString().Replace(" ", "") == pwd)
                    {
                        pswt = 1;
                    }
                    else
                    {
                        TextBox_old.Text = "";
                        TextBox_new.Text = "";
                        TextBox_new2.Text = "";
                        Label_err.Text = "账号或者密码错误！";
                    }
                }
                cn.Close();
                if (pswt == 1)
                {
                    if (TextBox_new.Text.Equals(TextBox_new2.Text))
                    {
                        cn.ConnectionString = sqlconn;
                        cn.Open();
                        string sql2 = string.Format("update 员工 set password=N'{0}' where eid ='{1}'",
                           TextBox_new.Text, eid);

                        SqlCommand cmd2 = new SqlCommand(sql2, cn);
                        int effectLine = cmd2.ExecuteNonQuery();

                        if (effectLine == 1)
                        {
                            Label_err.Text = "修改成功";
                        }
                        else
                        {
                            Label_err.Text = "修改失败";
                        }
                    }
                    else
                    {
                        Label_err.Text = "输入不一致";
                    }
                }

            }
        }
    }
    }

