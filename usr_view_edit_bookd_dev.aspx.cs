using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usr_view_edit_bookd_dev : System.Web.UI.Page
{
    dboperation db = new dboperation();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["Name"] != null)
        //    Label1.Text = Session["Name"].ToString();
        //SqlCommand cmd = new SqlCommand();
        //if (!IsPostBack)
        //{
        //    cmd.CommandText = "select evnt_name,bookid from book_table where regno='" + Label1.Text + "' ";
        //    DropDownList1.DataSource = db.getdata(cmd);
        //    DropDownList1.DataTextField = "evnt_name";
        //    DropDownList1.DataValueField = "bookid";
        //    DropDownList1.DataBind();
        //    DropDownList1.Items.Insert(0, "Select");
        //}
       MultiView1.SetActiveView(View1);
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }

    protected void OnSelectedIndexChanged(object sender, EventArgs e)
    {
        string message = DropDownList1.SelectedItem.Text;
        //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
        //Response.Write(DropDownList1.SelectedItem.Text);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select device,quantity from dev_request_table where prgm= '" + message + "'";
        DataGrid1.DataSource = db.getdata(cmd);
        DataGrid1.DataBind();
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        TextBox1.Text = e.Item.Cells[0].Text;
        TextBox2.Text = e.Item.Cells[1].Text;
        MultiView1.SetActiveView(View2);

    }
   protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Venue Successfully booked')</script>");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}