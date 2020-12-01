using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class login : System.Web.UI.Page
{
    dboperation db = new dboperation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from login_table where regno='" + TextBox1.Text + "' and password='" + TextBox2.Text + "' ";
        DataTable dt = db.getdata(cmd);
        if (dt.Rows.Count > 0)
        {
            /*string type = dt.Rows[0][3].ToString();
            /*if ("Select * from login where status=='"admin")*/
            {
                Session["Name"] = TextBox1.Text;
                Response.Redirect("editbooking.aspx");
            }

        }
        else
        {
            Response.Write("<script>alert('Incorrect User Name and Password')</script>");
        }

    }
    
}
