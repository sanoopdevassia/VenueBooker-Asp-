using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_additional_devices : System.Web.UI.Page
{
    dboperation db = new dboperation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select max(ID) from product_table";
       int id = db.max_id(cmd);
        cmd.CommandText = "insert into product_table values ('" + id + "','" + txttyp.Text + "','" + txtqnt.Text + "','" + DropDownList1.SelectedValue + "','0')";
        db.execute(cmd);
        Response.Write("<script>alert('Devices Added')</script>");
       
        txtqnt.Text = "";
        txttyp.Text = "";
       
    }
}