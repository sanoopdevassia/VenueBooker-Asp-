using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class book : System.Web.UI.Page
{
    dboperation db = new dboperation();
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
      
        
    }

    protected void TextBox10_TextChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        SqlCommand cm = new SqlCommand();
        cmd.CommandText = "select blockid from block_table where blockname='" + dd_blck.SelectedValue + "'";
        DataTable dt = db.getdata(cmd);
       string a = dt.Rows[0][0].ToString();
        //if (dt.Rows.Count > 0)
        //{
            //cmd.CommandText = "select venue_id from book_table where date='" + txt_date.Text + "'";
            //DataTable dt1 = db.getdata(cmd);
            //int i;
            //int y = dt1.Rows.Count;
           // if (y > 0)
           // {
                //   string b= dt1.Rows[0][0].ToString();
                
                //for (i = 0; i < y; i++)
                //{
                  //  cmd.CommandText = "select venue_id from book_table where date='" + txt_date.Text + "'";
                  //  DataTable dt2 = db.getdata(cmd);
                  //  if (dt2.Rows.Count > 0)
                   /// {
                     //   string c = dt2.Rows[i][0].ToString();
                        cmd.CommandText = "select name,venue_id from venue_table where block='" + a + "' and seats > '" + txt_no.Text + "' "; ;
                        // cmd.CommandText = "select name,venue_id from venue_table where block='" + a + "' and seats > '" + txt_no.Text + "'"; ;
                        dd_venue.DataSource = db.getdata(cmd);
                        dd_venue.DataTextField = "name";
                        dd_venue.DataValueField = "venue_id";
                        dd_venue.DataBind();
                         dd_venue.Items.Insert(0, "select");
    }

                
            
            //else
            //{//
            // // string c = dt2.Rows[0][0].ToString();
            // // cmd.CommandText = "select name,venue_id from venue_table where block='" + a + "' and seats > '" + txt_no.Text + "' and venue_id='" + c + "' "; ;
            //    cmd.CommandText = "select name,venue_id from venue_table where block='" + a + "' and seats > '" + txt_no.Text + "'"; ;
            //    dd_venue.DataSource = db.getdata(cmd);
            //    dd_venue.DataTextField = "name";
            //    dd_venue.DataValueField = "venue_id";
            //    dd_venue.DataBind();

            //}

            
        

    

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        SqlCommand cn = new SqlCommand();
        string vid = dd_venue.SelectedValue.ToString();
        cn.CommandText = "select seats from venue_table where venue_id='" + vid + "'";
        DataTable dt2 = db.getdata(cn);
        DateTime di = Convert.ToDateTime(txt_time.Text);
        int strttime = (di.Hour * 60) + di.Minute;
        cmd.CommandText = "select * from book_table where venue_id='" + vid + "' and date='" + txt_date.Text + "' and end_time> '" + strttime+ "'";
    DataTable dt = db.getdata(cmd);
      //  int w = CompareValidator(txt_endtime, txt_time);
        if (dt.Rows.Count > 0)
        {

            Response.Write("<script>alert('Sorry,Venue is not available in this time or date')</script>");


        }

        else
        {
            cmd.CommandText = "select max(bookid) from book_table";
            id = db.max_id(cmd);
            //string vid = dd_venue.SelectedValue.ToString();
            DateTime dr1= Convert.ToDateTime(txt_time.Text);
            int total1= (dr1.Hour * 60) + dr1.Minute;
            DateTime dr = Convert.ToDateTime(txt_endtime.Text);
            int total = (dr.Hour * 60) + dr.Minute;
            cmd.CommandText = "insert into book_table values('" + id + "','" + txt_date.Text + "','" + txt_reg.Text + "','" + dd_dep.SelectedItem.Text + "','" + txt_time.Text + "','" + txt_evnt.Text + "','" + dd_blck.SelectedItem.Text + "','" + txt_phn.Text + "','" + txt_no.Text + "','" + vid + "','pending','" + total + "','" + txt_cor.Text + "','" + total1 + "','" + txt_endtime.Text+ "')";
            db.execute(cmd);
            Response.Write("<script>alert('Venue Successfully booked')</script>");
            txt_cor.Text = "";
            txt_date.Text = "";
            txt_endtime.Text = "";
            txt_evnt.Text = "";
            txt_no.Text = "";
            txt_phn.Text = "";
            txt_reg.Text = "";
            txt_time.Text = "";
            dd_blck.SelectedIndex = -1;
            dd_dep.SelectedIndex = -1;
            dd_venue.SelectedIndex = -1;

        }







    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txt_no_TextChanged(object sender, EventArgs e)
    {

    }
}