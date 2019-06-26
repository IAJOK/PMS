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
                string sqlstr = string.Format("INSERT INTO 员工(eid,ename,departID,age,password)" +
                                              "VALUES('{0}',N'{1}','{2}','{3}',N'{4}')", TextBox1.Text, TextBox2.Text,
                  TextBox3.Text, TextBox4.Text, TextBox5.Text);
                SqlCommand cmd = new SqlCommand(sqlstr, cn);
                try
                {
                    System.Diagnostics.Debug.Write("123");
                    cmd.ExecuteNonQuery();
                }
                catch (SqlException sqlEx)
                {
                    Label1.Text = sqlEx.Message;
                }
                ShowData1();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = sqlconn;
                cn.Open();
                string sqlstr = string.Format("INSERT INTO 部门(departID,dname,director)" +
                                              "VALUES('{0}',N'{1}','{2}')", TextBox6.Text, TextBox7.Text,
                  TextBox8.Text);
                SqlCommand cmd = new SqlCommand(sqlstr, cn);
                try
                {
                    System.Diagnostics.Debug.Write("123");
                    cmd.ExecuteNonQuery();
                }
                catch (SqlException sqlEx)
                {
                    Label2.Text = sqlEx.Message;
                }
                ShowData2();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {

                cn.ConnectionString = sqlconn;
                cn.Open();
                string sql = string.Format("delete from 员工 where eid='{0}'", TextBox1.Text);

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
                string sql = string.Format("delete from 部门 where departID='{0}'", TextBox6.Text);

                SqlCommand cmd = new SqlCommand(sql, cn);

                int effectLine = cmd.ExecuteNonQuery();
                if (effectLine == 1)
                {
                    ShowData2();
                }
                else
                {
                    Label2.Text = "删除失败";
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = sqlconn;
                cn.Open();
                string sql = string.Format("update 员工 set eid='{0}', ename=N'{1}', departId='{2}', age='{3}',password=N'{4}'where eid='{5}'",
                    TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox1.Text);

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

        protected void Button6_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = sqlconn;
                cn.Open();
                string sql = string.Format("update 部门 set departID='{0}', dname=N'{1}', director='{2}'where eid='{3}'",
                    TextBox5.Text, TextBox6.Text, TextBox7.Text,TextBox1.Text);

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
    }
}