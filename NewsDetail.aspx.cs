using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Linq;
using System.Data.SqlClient;
// 下载于www.51aspx.com 
public partial class NewsDetail : System.Web.UI.Page
{
    public string newsContent = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlData da = new SqlData();
        string sqlString = "select * from tb_News";
        DataSet ds = da.datesetExecute(sqlString, "tbNews");
        DataRow[] row=ds.Tables["tbNews"].Select("id="+Request.QueryString["id"]);
        
        foreach (DataRow rs in row)
        {
            this.labTitle.Text = rs["title"].ToString();
            newsContent = rs["content"].ToString();
        }
    }
    public string GetContent()
    {
        string str = "";
        str = newsContent;
        return str;
    }
}
