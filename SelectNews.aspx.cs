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

public partial class SelectNews : System.Web.UI.Page
{
    SqlData da = new SqlData();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.dlstNews.DataSource = da.datesetExecute(Convert.ToString(Session["select"]),"tbNews");
        this.dlstNews.DataKeyField = "id";
        this.dlstNews.DataBind();

        this.lblType.Text = Session["type"].ToString();
    }
    protected void dlstNews_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int id = Convert.ToInt32(dlstNews.DataKeys[e.Item.ItemIndex].ToString());
        Response.Redirect("NewsDetail.aspx?id="+id+"");
    }
}
