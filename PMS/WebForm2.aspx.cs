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
    public partial class WebForm2 : System.Web.UI.Page
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
   

        protected void Button3_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {


                cn.ConnectionString = sqlconn;
                cn.Open();

                DataSet ds = new DataSet();


                string cmdtext = string.Format("select * from 部门 where departID= '{0}'", TextBox6.Text);

                SqlDataAdapter sda = new SqlDataAdapter(cmdtext, cn);

                sda.Fill(ds, "部门");

                GridView2.DataSource = ds;
                GridView2.DataBind();


            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {


                cn.ConnectionString = sqlconn;
                cn.Open();

                DataSet ds = new DataSet();


                string cmdtext = string.Format("select * from 员工 where eid= '{0}'", TextBox1.Text);

                SqlDataAdapter sda = new SqlDataAdapter(cmdtext, cn);

                sda.Fill(ds, "员工");

                GridView1.DataSource = ds;
                GridView1.DataBind();


            }
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {


                cn.ConnectionString = sqlconn;
                cn.Open();

                DataSet ds = new DataSet();


                string cmdtext = string.Format("select * from 部门 where departID= '{0}'", TextBox6.Text);

                SqlDataAdapter sda = new SqlDataAdapter(cmdtext, cn);

                sda.Fill(ds, "部门");

                GridView2.DataSource = ds;
                GridView2.DataBind();


            }
        }
    }
}
