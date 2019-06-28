using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PMS
{
    public partial class operation : System.Web.UI.Page
    {
        String sqlconn = "Data Source=(LocalDB)\\MSSQLLocalDB;" + "AttachDbFilename='|DataDirectory|\\Database1.mdf';";
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowData1();
            ShowData2();
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
        void ShowData2()
        {
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = sqlconn;
                cn.Open();
                String sql1 = "select * from 部门";
                SqlCommand cmd = new SqlCommand(sql1, cn);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView2.DataSource = dr;
                GridView2.DataBind();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = sqlconn;
                cn.Open();
                if (TextBox_pid.Text.Trim() != ""&& TextBox_pname.Text.Trim() != ""&& TextBox_age.Text.Trim() != ""&& TextBox_psw.Text.Trim() != "")
                {
                    string sqlstr = string.Format("INSERT INTO 员工(eid,ename,departID,age,password,limit)" +
                                              "VALUES('{0}',N'{1}','{2}','{3}',N'{4}','{5}')", TextBox_pid.Text, TextBox_pname.Text,
                 DropDownList1.SelectedValue.ToString(), TextBox_age.Text, TextBox_psw.Text, CheckBox_limit.Checked.ToString());
                    SqlCommand cmd = new SqlCommand(sqlstr, cn);
                    try
                    {
                        System.Diagnostics.Debug.Write("123");
                        cmd.ExecuteNonQuery();
                    }
                    catch
                    {
                        Label1.Text = "请检查是否已经重复id";
                    }
                    ShowData1();
                }
                else
                {
                    Label1.Text = "不能为空";
                }
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = sqlconn;
                cn.Open();
                if (TextBox_did.Text.Trim() != "" && TextBox_dname.Text.Trim() != "" )
                {
                    if (TextBox_de.Text.Trim() != "")
                    {
                        string sqlstr = string.Format("INSERT INTO 部门(departID,dname,director)" +
                                                  "VALUES('{0}',N'{1}','{2}')", TextBox_did.Text, TextBox_dname.Text, TextBox_de.Text);

                        SqlCommand cmd = new SqlCommand(sqlstr, cn);

                        try
                        {
                            System.Diagnostics.Debug.Write("123");
                            cmd.ExecuteNonQuery();
                        }
                        catch
                        {
                            Label2.Text = "请检查是否重复id或者是否存在这名员工";
                        }
                        ShowData2();
                    }
                    else 
                    {
                        string sqlstr = string.Format("INSERT INTO 部门(departID,dname)" +
                                                  "VALUES('{0}',N'{1}')", TextBox_did.Text, TextBox_dname.Text);

                        SqlCommand cmd = new SqlCommand(sqlstr, cn);

                        try
                        {
                            System.Diagnostics.Debug.Write("123");
                            cmd.ExecuteNonQuery();
                        }
                        catch
                        {
                            Label2.Text = "请检查是否重复id或者是否存在这名员工";
                        }
                        ShowData2();
                    }
                }
                else
                {
                    Label2.Text = "不能为空";
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {

                cn.ConnectionString = sqlconn;
                cn.Open();
                string sql = string.Format("delete from 员工 where eid='{0}'", TextBox_pid.Text);

                SqlCommand cmd = new SqlCommand(sql, cn);

                int effectLine = cmd.ExecuteNonQuery();
                if (effectLine == 1)
                {
                    ShowData1();
                }
                else
                {
                    Label1.Text = "删除失败";
                }
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {

                cn.ConnectionString = sqlconn;
                cn.Open();
                string sql = string.Format("delete from 部门 where departID='{0}'", TextBox_did.Text);
                int effectLine=0;
                try
                {
                    SqlCommand cmd = new SqlCommand(sql, cn);
                    effectLine = cmd.ExecuteNonQuery();
                }
                catch {
                    Label2.Text = "删除失败，请检查你选择的部门是否仍有员工";
                }
                
                if (effectLine == 1)
                {
                    ShowData2();
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = sqlconn;
                cn.Open();
                if (TextBox_pid.Text.Trim() != "")
                {
                    if (TextBox_pname.Text.Trim() != "")
                    {
                        string sql = string.Format("update 员工 set ename=N'{0}' where eid='{1}'",
                        TextBox_pname.Text, TextBox_pid.Text);

                        SqlCommand cmd = new SqlCommand(sql, cn);

                        int effectLine = cmd.ExecuteNonQuery();
                        if (effectLine == 1)
                        {
                            ShowData1();
                        }
                        else
                        {
                            Label1.Text = "更新失败";
                        }
                    }
                    if (TextBox_age.Text.Trim() != "")
                    {
                        string sql = string.Format("update 员工 set age='{0}' where eid='{1}'",
                        TextBox_age.Text, TextBox_pid.Text);

                        SqlCommand cmd = new SqlCommand(sql, cn);

                        int effectLine = cmd.ExecuteNonQuery();
                        if (effectLine == 1)
                        {
                            ShowData1();
                        }
                        else
                        {
                            Label1.Text = "更新失败";
                        }
                    }
                    if (TextBox_psw.Text.Trim() != "")
                    {
                        string sql = string.Format("update 员工 set password =N'{0}' where eid='{1}'",
                        TextBox_psw.Text, TextBox_pid.Text);

                        SqlCommand cmd = new SqlCommand(sql, cn);

                        int effectLine = cmd.ExecuteNonQuery();
                        if (effectLine == 1)
                        {
                            ShowData1();
                        }
                        else
                        {
                            Label1.Text = "更新失败";
                        }
                    }

                }
                else
                {
                    Label1.Text = "代号不能为空";
                }
            }
        }         
            protected void Button6_Click(object sender, EventArgs e)
            {
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = sqlconn;
                cn.Open();
                if (TextBox_did.Text.Trim() != "")
                {
                    if (TextBox_dname.Text.Trim() != "")
                    {
                        string sql = string.Format("update 部门 set dname=N'{0}' where departID='{1}'",
                        TextBox_dname.Text, TextBox_did.Text);

                        SqlCommand cmd = new SqlCommand(sql, cn);

                        int effectLine = cmd.ExecuteNonQuery();
                        if (effectLine == 1)
                        {
                            ShowData2();
                        }
                        else
                        {
                            Label2.Text = "更新失败";
                        }
                    }
                    if (TextBox_de.Text.Trim() != "")
                    {
                        string sql = string.Format("update 部门 set director='{0}' where departID='{1}'",
                        TextBox_de.Text, TextBox_did.Text);

                        SqlCommand cmd = new SqlCommand(sql, cn);

                        int effectLine = cmd.ExecuteNonQuery();
                        if (effectLine == 1)
                        {
                            ShowData2();
                        }
                        else
                        {
                            Label2.Text = "更新失败";
                        }
                    }

                }
                else
                {
                    Label2.Text = "代号不能为空";
                }
            }
        }


        
    }
}
        