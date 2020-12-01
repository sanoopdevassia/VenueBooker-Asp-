using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class reg : System.Web.UI.Page
{
    dboperation db = new dboperation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        // cmd.CommandText = "select max(ID) from product_table";
        // int id = db.max_id(cmd);
        if (RadioButton1.Checked)
        {
            cmd.CommandText = "insert into reg values ('" + txtname.Text + "','" + txtreg.Text + "','male','" + dd_course.SelectedItem.Text + "','" + dd_sem.SelectedItem.Text + "','" + txt_phn.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
            db.execute(cmd);
            Response.Write("<script>alert('Registered')</script>");
        }
        else
        {
            cmd.CommandText = "insert into reg values ('" + txtname.Text + "','" + txtreg.Text + "','female','" + dd_course.SelectedValue + "','" + dd_sem.SelectedValue + "','" + dd_course.SelectedValue + "','" + txt_phn.Text + "', '" + TextBox4.Text + "','" + TextBox5.Text + "')";
            db.execute(cmd);
            Response.Write("<script>alert('Registered')</script>");
        }

    }
}