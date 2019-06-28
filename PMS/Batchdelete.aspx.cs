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
    public partial class Batchdelete : System.Web.UI.Page
    {
        String sqlconn = "Data Source=(LocalDB)\\MSSQLLocalDB;" + "AttachDbFilename='|DataDirectory|\\Database1.mdf';";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                btnDelete.Attributes.Add("onclick", "return confirm('您真的要删除该行数据吗？');");

            }
           
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

                DataSet ds = new DataSet();
                int first = 0;//用来检测第一个勾选的对象
                String selectsql = "";//用来编写对应的sql查询语句
                if (CheckBox_yid.Checked)//因为是第一次检测所以不用进行首个勾选的判断
                {

                    first = 1;
                    selectsql = selectsql + "eid= '" + TextBox_yid.Text + "'";
                }
                if (CheckBox_yname.Checked)
                {
                    if (first == 0)//修改检测标记和对应语句
                    {
                        first = 1;
                        selectsql = selectsql + "ename= N'" + TextBox_yname.Text + "'";
                    }
                    else
                    {
                        selectsql = selectsql + "and ename= N'" + TextBox_yname.Text + "'";
                    }
                }
                if (CheckBox_dep.Checked)
                {
                    if (first == 0)//修改检测标记和对应语句
                    {
                        first = 1;
                        if (DropDownList_dep.Text.Equals(""))
                        {
                            selectsql = selectsql + "departID is null";
                        }
                        else
                        { selectsql = selectsql + "departID= '" + DropDownList_dep.Text + "'"; }
                    }
                    else
                    {
                        if (DropDownList_dep.Text.Equals(""))
                        {
                            selectsql = selectsql + " and departID is null";
                        }
                        else
                        { selectsql = selectsql + "and departID= '" + DropDownList_dep.Text + "'"; }

                    }
                }
                if (CheckBox_age.Checked)
                {
                    if (first == 0)//修改检测标记和对应语句
                    {
                        first = 1;
                        if (TextBox_age.Text.Equals(""))
                        {
                            selectsql = selectsql + "age is null";
                        }
                        else
                        { selectsql = selectsql + "age= '" + TextBox_age.Text + "'"; }
                    }
                    else
                    {
                        if (TextBox_age.Text.Equals(""))
                        {
                            selectsql = selectsql + " and age is null";
                        }
                        else
                        { selectsql = selectsql + "and age= '" + TextBox_age.Text + "'"; }

                    }
                }


                if (first == 0)//顺便利用这个标记检测是否至少勾选一个选项，进行报错
                {
                    Label_err.Text = "请至少勾选一个选项进行搜索";
                }
                try//防报错直接跳死，如果发现检测的时候无任何反应可以删除这一句try以及后面对应的catch语句
                {
                    string cmdtext = string.Format("select * from 员工 where " + selectsql);//将编辑好的语句连接好


                    SqlDataAdapter sda = new SqlDataAdapter(cmdtext, cn);

                    sda.Fill(ds, "员工");

                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
                catch
                {
                    Label_yerr.Text = "请检查输入";
                }


            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {


                cn.ConnectionString = sqlconn;
                cn.Open();

                DataSet ds = new DataSet();
                int first = 0;//用来检测第一个勾选的对象
                String selectsql = "";//用来编写对应的sql查询语句
                if (CheckBox_id.Checked)//因为是第一次检测所以不用进行首个勾选的判断
                {

                    first = 1;
                    selectsql = selectsql + "departID= '" + TextBox_id.Text + "'";


                }
                if (CheckBox_name.Checked)
                {
                    if (first == 0)//修改检测标记和对应语句
                    {
                        first = 1;
                        selectsql = selectsql + "dname= N'" + TextBox_name.Text + "'";
                    }
                    else
                    {
                        selectsql = selectsql + "and dname= N'" + TextBox_name.Text + "'";
                    }
                }
                if (CheckBox_de.Checked)
                {
                    if (first == 0)//修改检测标记和对应语句
                    {
                        first = 1;
                        if (TextBox_de.Text.Equals(""))
                        {
                            selectsql = selectsql + "director is null";
                        }
                        else
                        { selectsql = selectsql + "director= '" + TextBox_de.Text + "'"; }
                    }
                    else
                    {
                        if (TextBox_de.Text.Equals(""))
                        {
                            selectsql = selectsql + " and director is null";
                        }
                        else
                        { selectsql = selectsql + "and director= '" + TextBox_de.Text + "'"; }

                    }
                }
                if (first == 0)//顺便利用这个标记检测是否至少勾选一个选项，进行报错
                {
                    Label_err.Text = "请至少勾选一个选项进行搜索";
                }
                try//防报错直接跳死，如果发现检测的时候无任何反应可以删除这一句try以及后面对应的catch语句
                {
                    string cmdtext = string.Format("select * from 部门 where " + selectsql);//将编辑好的语句连接好


                    SqlDataAdapter sda = new SqlDataAdapter(cmdtext, cn);

                    sda.Fill(ds, "部门");

                    GridView2.DataSource = ds;
                    GridView2.DataBind();
                }
                catch
                {
                    Label_err.Text = "请检查输入";
                }


            }
        }

        protected void CheckAll(object sender, EventArgs e)
        {
            CheckBox cbAll = (CheckBox)sender;
                foreach (System.Web.UI.WebControls.GridViewRow gr in this.GridView1.Rows)
                {
                    CheckBox chk = (CheckBox)gr.FindControl("cbSelect");
                    chk.Checked = cbAll.Checked;
                }
        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow dgi in this.GridView1.Rows)
            {
                CheckBox cb = (CheckBox)dgi.FindControl("cbSelect");
                if (cb.Checked)
                {
                    using (SqlConnection cn = new SqlConnection())
                    {
                        cn.ConnectionString = sqlconn;
                        cn.Open();
                        Int32 index = dgi.RowIndex;
                        DataKey key = this.GridView1.DataKeys[index];
                        String newsid = key.Values["eid"].ToString();
                        //以下执行删除操作
                        String strSql = "delete from 员工 where eid = '" + newsid + "'";
                        SqlCommand com = new SqlCommand(strSql, cn);
                        Int32 num = com.ExecuteNonQuery();

                        if (num > 0)
                        {
                            Label_yerr.Text = "成功删除所选！";
                        }
                    }

                }
            }
            this.GridView1.PageIndex = 0;
            
        }

        
    }
}