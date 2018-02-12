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

using System.Data.SqlClient;
public partial class Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlData da = new SqlData();
        string strShiShi = "select top 5 * from tb_News where Categories='时事新闻' order by issueDate desc";
        string strEconomic = "select top 5 * from tb_News where Categories='环球经济' order by issueDate desc";
        string strMilitary = "select top 5 * from tb_News where Categories='军事世界' order by issueDate desc";
        string strScience = "select top 5 * from tb_News where Categories='科学技术' order by issueDate desc";
        string strSocial = "select top 5 * from tb_News where Categories='社会百态' order by issueDate desc";
        string strSports = "select top 5 * from tb_News where Categories='世界体育' order by issueDate desc";
        string strFun = "select top 5 * from tb_News where Categories='娱乐综艺' order by issueDate desc";
        string strLife = "select top 5 * from tb_News where Categories='生活理财' order by issueDate desc";
        SqlDataReader dar = da.ExecuteRead(strShiShi);
        dlstShiShi.DataSource = dar;
        dlstShiShi.DataKeyField = "id";
        dlstShiShi.DataBind();
        dar.Close();

        SqlDataReader sdrEco = da.ExecuteRead(strEconomic);
        dlstEconomic.DataSource = sdrEco;
        dlstEconomic.DataKeyField = "id";
        dlstEconomic.DataBind();
        sdrEco.Close();

        SqlDataReader sdrM = da.ExecuteRead(strMilitary);
        dlstMilitary.DataSource=sdrM;
        dlstMilitary.DataKeyField="id";
        dlstMilitary.DataBind();
        sdrM.Close();

        SqlDataReader sdrS = da.ExecuteRead(strScience);
        dlstScience.DataSource = sdrS;
        dlstScience.DataKeyField = "id";
        dlstScience.DataBind();
        sdrS.Close();

        SqlDataReader sdrSoc = da.ExecuteRead(strSocial);
        dlstSocial.DataSource = sdrSoc;
        dlstSocial.DataKeyField = "id";
        dlstSocial.DataBind();
        sdrSoc.Close();

        SqlDataReader sdrSp = da.ExecuteRead(strSports);
        dlstSports.DataSource = sdrSp;
        dlstSports.DataKeyField = "id";
        dlstSports.DataBind();
        sdrSp.Close();

        SqlDataReader sdrFun = da.ExecuteRead(strFun);
        dlstFun.DataSource = sdrFun;
        dlstFun.DataKeyField = "id";
        dlstFun.DataBind();
        sdrFun.Close();

        SqlDataReader sdrLife = da.ExecuteRead(strLife);
        dlstLife.DataSource = sdrLife;
        dlstLife.DataKeyField = "id";
        dlstLife.DataBind();
        sdrLife.Close();
    }

    protected void dlstShiShi_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int id = Convert.ToInt32(dlstShiShi.DataKeys[e.Item.ItemIndex].ToString());
        Response.Write("<script language=javascript>window.open('NewsDetail.aspx?id=" + id + "','','_blank')</script>");
    }
    protected void dlstEconomic_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int id = Convert.ToInt32(dlstEconomic.DataKeys[e.Item.ItemIndex].ToString());
        Response.Write("<script language=javascript>window.open('NewsDetail.aspx?id=" + id + "','','width=520,height=260')</script>");
    }
    protected void dlstMilitary_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int id = Convert.ToInt32(dlstMilitary.DataKeys[e.Item.ItemIndex].ToString());
        Response.Write("<script language=javascript>window.open('NewsDetail.aspx?id=" + id + "','','width=520,height=260')</script>");
    }
    protected void dlstScience_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int id = Convert.ToInt32(dlstScience.DataKeys[e.Item.ItemIndex].ToString());
        Response.Write("<script language=javascript>window.open('NewsDetail.aspx?id=" + id + "','','width=520,height=260')</script>");
    }
    protected void dlstSocial_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int id = Convert.ToInt32(dlstSocial.DataKeys[e.Item.ItemIndex].ToString());
        Response.Write("<script language=javascript>window.open('NewsDetail.aspx?id=" + id + "','','width=520,height=260')</script>");
    }
    protected void dlstSports_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int id = Convert.ToInt32(dlstSports.DataKeys[e.Item.ItemIndex].ToString());
        Response.Write("<script language=javascript>window.open('NewsDetail.aspx?id=" + id + "','','width=520,height=260')</script>");
    }
    protected void dlstFun_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int id = Convert.ToInt32(dlstFun.DataKeys[e.Item.ItemIndex].ToString());
        Response.Write("<script language=javascript>window.open('NewsDetail.aspx?id=" + id + "','','width=520,height=260')</script>");
    }
    protected void dlstLife_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int id = Convert.ToInt32(dlstLife.DataKeys[e.Item.ItemIndex].ToString());
        Response.Write("<script language=javascript>window.open('NewsDetail.aspx?id=" + id + "','','width=520,height=260')</script>");
    }
}
