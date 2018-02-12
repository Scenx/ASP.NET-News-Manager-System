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

public partial class NewsManage : System.Web.UI.Page
{
    public static int number;
    SqlData da = new SqlData();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            number = 0;
            int n = Convert.ToInt32(Request.QueryString["id"]);
            this.ddlNewsCategories.SelectedIndex = (n - 1);
            this.bind(); 
        }
    }
    protected void bind()
    {
        this.gvdNews.DataSource = da.ExecuteDateSet("select * from tb_News where Categories='" + this.ddlNewsCategories.SelectedValue.Trim() + "' order by id");
        this.gvdNews.DataKeyNames = new string[] { "id" };
        this.gvdNews.DataBind();
    }
    protected void SelectBind()
    {
        string sqlstring = "select * from tb_News where Categories='" + this.ddlNewsCategories.SelectedValue.ToString() + "'";
        sqlstring += " and (( content like '%" + this.txtKey.Text + "%')";
        sqlstring += " or (Title like '%" + this.txtKey.Text + "%'))";
        gvdNews.DataSource = da.ExecuteDateSet(sqlstring);
        gvdNews.DataKeyNames = new string[] { "id" };
        gvdNews.DataBind();

    }
    protected void gvdNews_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlDataReader sdr = da.ExecuteRead("delete  from tb_News where id='" + this.gvdNews.DataKeys[e.RowIndex].Value.ToString() + "'");
        sdr.Close();
        if (number == 1)
        {
            this.SelectBind();
        }
        else
        {
            bind();
        }   
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        number = 1;
        this.SelectBind();

    }
    protected void gvdNews_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvdNews.PageIndex = e.NewPageIndex;
        if (number == 1)
        {
            this.SelectBind();
        }
        else
        {
            bind();
        }
    }
    protected void gvdNews_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[3].Text = Convert.ToDateTime(e.Row.Cells[3].Text).ToShortDateString();
        }
    }
}
