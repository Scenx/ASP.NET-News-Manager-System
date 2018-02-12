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

public partial class UpdateNews : System.Web.UI.Page
{
    SqlData da = new SqlData();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = da.datesetExecute("select * from tb_News where id='" + Request["id"] + "'", "tbNews");
            DataRow[] rows = ds.Tables["tbNews"].Select();
            foreach (DataRow dr in rows)
            {
                this.txtNewsTitle.Text = dr["title"].ToString();
                this.txtNewsContent.Text = dr["content"].ToString();
                this.labTitle.Text = dr["Categories"].ToString();

                switch (dr["type"].ToString())
                {
                    case "国内新闻":
                        this.dlstNewsType.SelectedIndex = 1;
                        break;
                    case "国际新闻":
                        this.dlstNewsType.SelectedIndex = 0;
                        break;
                    default:
                        break;
                }
            }
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
       string sqlstring=" UPDATE tb_News SET Title = '"+this.txtNewsTitle.Text+"', Content = '"+this.txtNewsContent.Text+"', Categories = '"+this.labTitle.Text.Trim()+"', Type = '"+this.dlstNewsType.SelectedValue.ToString()+"' WHERE ID = '"+Request.QueryString["id"]+"'";
       SqlDataReader sdr = da.ExecuteRead(sqlstring);
       lblMessage.Text = "新闻修改成功！";

    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        this.txtNewsContent.Text = "";
        this.txtNewsTitle.Text = "";
        Response.Redirect("~/BackDesk/NewsManage.aspx");
    }
}
