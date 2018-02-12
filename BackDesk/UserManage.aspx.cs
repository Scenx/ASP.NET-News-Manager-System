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

public partial class UserManage : System.Web.UI.Page
{
    SqlData da = new SqlData();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }
    protected void Bind()
    {
        string str = "select * from tb_User";
        DataSet ds = da.ExecuteDateSet(str);
        this.gdvUserManage.DataSource = ds;
        this.gdvUserManage.DataBind();
    }
    protected void gdvUserManage_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.gdvUserManage.PageIndex = e.NewPageIndex;
        this.gdvUserManage.DataBind();
    }
    protected void gvEditAdmin_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(gdvUserManage.DataKeys[e.RowIndex].Value.ToString());
        SqlDataReader sdr = da.ExecuteRead("Delete from tb_User where ID='" + id + "'");
        sdr.Close();
        Bind();
    }
    protected void gvEditAdmin_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        this.gdvUserManage.EditIndex = -1;
        Bind();
    }
    protected void gvEditAdmin_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gdvUserManage.EditIndex = e.NewEditIndex;
        Bind();
    }
    protected void gvEditAdmin_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int id = Convert.ToInt32(gdvUserManage.DataKeys[e.RowIndex].Value.ToString());
        string str = ((TextBox)(gdvUserManage.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString();
        string stringPassword = ((TextBox)(gdvUserManage.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString();
        SqlDataReader sdr = da.ExecuteRead("Update tb_User set Name='" + str + "',PassWord='" + stringPassword + "' where ID='" + id + "'");
        gdvUserManage.EditIndex = -1;
        sdr.Close();
        Bind();
    }
}
