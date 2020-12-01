using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class editbooking : System.Web.UI.Page
{
    dboperation db = new dboperation();
    protected void Page_Load(object sender, EventArgs e)

    {
        if (Session["Name"] != null)
            Label1.Text = Session["Name"].ToString();

        if (!IsPostBack)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from book_table where regno='" + Label1.Text + "'";
            DataGrid1.DataSource = db.getdata(cmd);
            DataGrid1.DataBind();


            MultiView1.SetActiveView(View1);
        }
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        txtprg.Text = e.Item.Cells[1].Text;
        txtdep.Text = e.Item.Cells[2].Text;
        txtdate.Text = e.Item.Cells[3].Text;
        txtcor.Text = e.Item.Cells[5].Text;
        txtno.Text = e.Item.Cells[6].Text;
        txttime0.Text = e.Item.Cells[4].Text;
        TextBox1.Text= e.Item.Cells[7].Text;

        //DateTime dtValue = e.Item.Cells[2].Text;  // load your date & time into this variable
        //TextBox1.Text = dtValue.ToString("yyyy-MM-dd");
        //TextBox2.Text = dtValue.ToString("HH:mm:ss");
        // txtprg.Text = e.Item.Cells[0].Text;
        //  txtcor.Text= e.Item.Cells[13].Text;
        Label2.Text = e.Item.Cells[0].Text;

        MultiView1.SetActiveView(View2);

    }

    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void txtprg_TextChanged(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        SqlCommand cn = new SqlCommand();
        string vid = DropDownList5.SelectedValue.ToString();
        cn.CommandText = "select seats from venue_table where venue_id='" + vid + "'";
        DataTable dt2 = db.getdata(cn);
        DateTime di = Convert.ToDateTime(txttime0.Text);
        int strttime = (di.Hour * 60) + di.Minute;
        cmd.CommandText = "select * from book_table where venue_id='" + vid + "' and date='" + txtdate.Text + "' and end_time> '" + strttime + "'";
        DataTable dt = db.getdata(cmd);
        //  int w = CompareValidator(txt_endtime, txt_time);
        if (dt.Rows.Count > 0)
        {

            Response.Write("<script>alert('Sorry,Venue is not available in this time or date')</script>");


        }

        else
        {
           

            cmd.CommandText = "update book_table set date = '"+txtdate.Text+"',department = '"+txtdep.Text+"',time = '"+txttime0.Text+"',evnt_name= '"+txtprg.Text+"',block = '"+dd_block.SelectedItem+"',phone = '"+txtcor.Text+ "',no_of_seats = '" + txtno.Text + "',venue_id = '" + DropDownList5.SelectedValue + "',coordinator='"+TextBox1.Text+"' WHERE bookid= '" +Label2.Text+"'";;
            db.execute(cmd);
            cmd.CommandText = "select * from book_table where regno='" + Label1.Text + "'";
            DataGrid1.DataSource = db.getdata(cmd);
            DataGrid1.DataBind();
            MultiView1.SetActiveView(View1);


        }
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        SqlCommand cm = new SqlCommand();
        cmd.CommandText = "select blockid from block_table where blockname='" + dd_block.SelectedValue + "'";
        DataTable dt = db.getdata(cmd);
        string a = dt.Rows[0][0].ToString();
        cmd.CommandText = "select name,venue_id from venue_table where block='" + a + "' and seats > '" + txtno.Text + "' "; ;
        // cmd.CommandText = "select name,venue_id from venue_table where block='" + a + "' and seats > '" + txt_no.Text + "'"; ;
        DropDownList5.DataSource = db.getdata(cmd);
        DropDownList5.DataSource = db.getdata(cmd);
        DropDownList5.DataTextField = "name";
        DropDownList5.DataValueField = "venue_id";
        DropDownList5.DataBind();


    }

    protected void txtcor_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btndlt_Click(object sender, EventArgs e)
    {
        Response.Write("<script>confirm("+'"'+ "Do you want to delete?"+'"'+");</script>");

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "delete from book_table where ID='" + Label2.Text + "'";
        db.execute(cmd);
        cmd.CommandText = "select * from passenger_info where status='pending'";
        DataGrid1.DataSource = db.getdata(cmd);
        DataGrid1.DataBind();
    }
}

  