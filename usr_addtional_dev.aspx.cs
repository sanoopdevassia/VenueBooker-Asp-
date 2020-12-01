using System;
using System.Data;
using System.Data.SqlClient;

public partial class usr_addtional_dev : System.Web.UI.Page
{
    dboperation db = new dboperation();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Name"] != null)
        Label1.Text = Session["Name"].ToString();
        SqlCommand cmd = new SqlCommand();
        if (!IsPostBack)
        {
            cmd.CommandText = "select evnt_name,bookid from book_table where regno='" + Label1.Text + "' ";
            DropDownList1.DataSource = db.getdata(cmd);
            DropDownList1.DataTextField = "evnt_name";
            DropDownList1.DataValueField = "bookid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "Select");
        }
        // SqlCommand cmd = new SqlCommand();
        // cmd.CommandText = "select evnt_name,bookid from book_table where regno='" + Label1.Text + "' ";
        // //DataTable dt = db.getdata(cmd);
        // DropDownList1.DataSource = db.getdata(cmd); //dt;
        // DropDownList1.DataTextField = "evnt_name";
        //// DropDownList1.DataValueField = "book_id";
        // DropDownList1.DataBind();

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select max(req_id) from dev_request_table";
        int id = db.max_id(cmd);
        cmd.CommandText = "insert into dev_request_table values ('" + id + "','" + Label1.Text + "','" + DropDownList1.SelectedItem.Text+ "','" + txtdate.Text + "','" + txtstime.Text + "','" + txtetime.Text + "','" + dd_dev.SelectedValue + "','" + dd_qn.SelectedValue + "','pending')";
        db.execute(cmd);
        Response.Write("<script>alert('Devices Added')</script>");

        txtdate.Text = "";
        txtetime.Text = "";
        txtstime.Text = "";
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}