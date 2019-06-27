using Microsoft.Office.Interop.Excel;

namespace KuanJia
{
    public class ExcelOperator
    {
        public Application ExcelApplication;//excel应用对象
        public Workbook ExcelWorkbook;//excel工作簿对象
        public Worksheet ExcelWorksheet;//excel工作表对象
        public ExcelOperator()//显示excel
        {
            ExcelApplication = new Application();//创建application对象
            ExcelApplication.Visible = true;//创建完成后是否打开excel
        }

        public void CreateExcel()//创建excel
        {
            ExcelWorkbook = ExcelApplication.Workbooks.Add(true);//添加工作簿
            ExcelWorksheet = ExcelWorkbook.Worksheets[1] as Worksheet;//获取工作表
        }

        public Range this[object indexRow, object indexColum]//获取单元格
        {
            get
            {
                return ExcelWorksheet.Cells[indexRow, indexColum];//返回指定单元格
            }
        }
    }
}