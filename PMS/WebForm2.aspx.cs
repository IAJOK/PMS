using KuanJia;
using Microsoft.Office.Interop.Excel;
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                ExcelOperator excel = new ExcelOperator();
                excel.CreateExcel();//创建excel表
                cn.ConnectionString = sqlconn;
                cn.Open();
                string sqlstr = string.Format("SELECT * FROM 员工 WHERE eid = N'{0}'", TextBox_yid.Text);
                SqlCommand cmd = new SqlCommand(sqlstr, cn);
                SqlDataAdapter adapter = new SqlDataAdapter(); //实例化数据适配器
                adapter.SelectCommand = cmd;                   //让适配器执行SELECT命令
                DataSet dataSet = new DataSet();            //实例化结果数据集
                int n = adapter.Fill(dataSet);                 //将结果放入数据适配器，返回元祖个数
                string[] fields = new string[] { "员工代号", "员工姓名", "所属部门", "年龄", "登入密码", "是否管理员" };
                for (int indexColumn = 0; indexColumn < dataSet.Tables[0].Columns.Count; indexColumn++)
                {
                    Range range = excel[1, indexColumn + 1];
                    range.Value2 = fields[indexColumn];
                }
                for (int indexRow = 0; indexRow < dataSet.Tables[0].Rows.Count; indexRow++)
                {
                    for (int indexColumn = 0; indexColumn < dataSet.Tables[0].Columns.Count; indexColumn++)
                    {
                        Range range = excel[indexRow + 2, indexColumn + 1];
                        range.Value2 = dataSet.Tables[0].Rows[indexRow][indexColumn];
                    }
                }
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                ExcelOperator excel = new ExcelOperator();
                excel.CreateExcel();//创建excel表
                cn.ConnectionString = sqlconn;
                cn.Open();
                string sqlstr = string.Format("SELECT * FROM 部门 WHERE departID = N'{0}'", TextBox_id.Text);
                SqlCommand cmd = new SqlCommand(sqlstr, cn);
                SqlDataAdapter adapter = new SqlDataAdapter(); //实例化数据适配器
                adapter.SelectCommand = cmd;                   //让适配器执行SELECT命令
                DataSet dataSet = new DataSet();            //实例化结果数据集
                int n = adapter.Fill(dataSet);                 //将结果放入数据适配器，返回元祖个数
                string[] fields = new string[] { "部门代号", "部门名称", "部门主管" };
                for (int indexColumn = 0; indexColumn < dataSet.Tables[0].Columns.Count; indexColumn++)
                {
                    Range range = excel[1, indexColumn + 1];
                    range.Value2 = fields[indexColumn];
                }
                for (int indexRow = 0; indexRow < dataSet.Tables[0].Rows.Count; indexRow++)
                {
                    for (int indexColumn = 0; indexColumn < dataSet.Tables[0].Columns.Count; indexColumn++)
                    {
                        Range range = excel[indexRow + 2, indexColumn + 1];
                        range.Value2 = dataSet.Tables[0].Rows[indexRow][indexColumn];
                    }
                }
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                ExcelOperator excel = new ExcelOperator();
                excel.CreateExcel();//创建excel表
                cn.ConnectionString = sqlconn;
                cn.Open();
                SqlCommand cmd = new SqlCommand("select * from 员工", cn);      //创建查询类实例
                SqlDataAdapter adapter = new SqlDataAdapter(); //实例化数据适配器
                adapter.SelectCommand = cmd;                   //让适配器执行SELECT命令
                DataSet dataSet = new DataSet();            //实例化结果数据集
                int n = adapter.Fill(dataSet);                 //将结果放入数据适配器，返回元祖个数
                string[] fields = new string[] { "员工代号", "员工姓名", "所属部门", "年龄", "登入密码", "是否管理员" };
                for (int indexColumn = 0; indexColumn < dataSet.Tables[0].Columns.Count; indexColumn++)
                {
                    Range range = excel[1, indexColumn + 1];
                    range.Value2 = fields[indexColumn];
                }
                for (int indexRow = 0; indexRow < dataSet.Tables[0].Rows.Count; indexRow++)
                {
                    for (int indexColumn = 0; indexColumn < dataSet.Tables[0].Columns.Count; indexColumn++)
                    {
                        Range range = excel[indexRow + 2, indexColumn + 1];
                        range.Value2 = dataSet.Tables[0].Rows[indexRow][indexColumn];
                    }
                }
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                ExcelOperator excel = new ExcelOperator();
                excel.CreateExcel();//创建excel表
                cn.ConnectionString = sqlconn;
                cn.Open();
                SqlCommand cmd = new SqlCommand("select * from 部门", cn);      //创建查询类实例
                SqlDataAdapter adapter = new SqlDataAdapter(); //实例化数据适配器
                adapter.SelectCommand = cmd;                   //让适配器执行SELECT命令
                DataSet dataSet = new DataSet();            //实例化结果数据集
                int n = adapter.Fill(dataSet);                 //将结果放入数据适配器，返回元祖个数
                string[] fields = new string[] { "部门代号", "部门名称", "部门主管" };
                for (int indexColumn = 0; indexColumn < dataSet.Tables[0].Columns.Count; indexColumn++)
                {
                    Range range = excel[1, indexColumn + 1];
                    range.Value2 = fields[indexColumn];
                }
                for (int indexRow = 0; indexRow < dataSet.Tables[0].Rows.Count; indexRow++)
                {
                    for (int indexColumn = 0; indexColumn < dataSet.Tables[0].Columns.Count; indexColumn++)
                    {
                        Range range = excel[indexRow + 2, indexColumn + 1];
                        range.Value2 = dataSet.Tables[0].Rows[indexRow][indexColumn];
                    }
                }
            }
        }
    }
}
