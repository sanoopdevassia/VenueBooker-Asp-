using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_dev_req : System.Web.UI.Page
{
    dboperation db = new dboperation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from dev_request_table where status='pending'";
            DataGrid1.DataSource = db.getdata(cmd);
            DataGrid1.DataBind();

        }
       
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        Label1.Text = e.Item.Cells[0].Text;
        TextBox1.Text = e.Item.Cells[0].Text;
        txtreg.Text = e.Item.Cells[7].Text;
        txtprg.Text = e.Item.Cells[1].Text; 
        txtdt.Text =  e.Item.Cells[2].Text;
        txtdev.Text = e.Item.Cells[4].Text;
        txtno.Text = e.Item.Cells[5].Text;
        txttim.Text = e.Item.Cells[3].Text;
       // txtid.Text = e.Item.Cells[7].Text;
        Label1.Text = e.Item.Cells[0].Text;
        MultiView1.SetActiveView(View2);

    }

    

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "delete from dev_request_table where req_id='" + Label1.Text + "'";
        db.execute(cmd);
        Response.Write("<script>alert('Rejected')</script>");

        MultiView1.SetActiveView(View1);
        cmd.CommandText = "select* from dev_request_table ";
        DataGrid1.DataSource = db.getdata(cmd);
        DataGrid1.DataBind();

    }

    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update dev_request_table set status='Approved' where req_id='" + Label1.Text + "'";
        db.execute(cmd);
        Response.Write("<script>alert('Approved')</script>");

        MultiView1.SetActiveView(View1);
        cmd.CommandText = "select * from dev_request_table  where status='pending'";
        DataGrid1.DataSource = db.getdata(cmd);
        DataGrid1.DataBind();

        

    }

    protected void txtid_TextChanged(object sender, EventArgs e)
    {

    }
}