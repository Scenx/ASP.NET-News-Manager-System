using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class AddUser : System.Web.UI.Page
{
    SqlData da = new SqlData();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void add_Click(object sender, EventArgs e)
    {
        try
        {
            string stringSql = "select * from tb_User where Name='" + this.username.Text.Trim() + "' and PassWord='" + this.pwd.Text.Trim() + "'";
            string sqlstring = "insert into tb_User (Name,PassWord) values('" + this.username.Text.Trim() + "','" + this.pwd.Text.Trim() + "')";
            SqlDataReader dr = da.ExecuteRead(stringSql);
            dr.Read();
            if (dr.HasRows)
            {
                this.lblMessage.Text = "该用户已存在";
                dr.Close();
            }
            else
            {
                dr.Close();
                SqlDataReader sdr = da.ExecuteRead(sqlstring);
                this.lblMessage.Text = "用户添加成功";
            }
        }
        catch
        {
            this.lblMessage.Text = "添加失败";
        }
    }
    protected void reset_Click(object sender, EventArgs e)
    {
        this.username.Text = "";
        this.pwd.Text = "";
        this.lblMessage.Text = "";
        Response.Redirect("~/BackDesk/Index.aspx");
    }
}
