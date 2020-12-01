using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    dboperation db = new dboperation();
    protected void Page_Load(object sender, EventArgs e)
    {
//protected void Page_Load(object sender, EventArgs e)
    
        //if (!IsPostBack)
        //{
        //    SqlCommand cmd = new SqlCommand();
        //    cmd.CommandText = "select * from  book_table ";
        //    GridView1.DataSource = db.getdata(cmd);
        //    GridView1.DataBind();


           
        //}
    
}
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        txtreg.Text = e.Item.Cells[0].Text;
        txtdep.Text = e.Item.Cells[1].Text;
        txtblck.Text = e.Item.Cells[2].Text;
       // Label1.Text = e.Item.Cells[3].Text;
        //MultiView1.SetActiveView(View2);

    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }



    
    

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select regno,department,block,phone,venue_id,coordinator,block from book_table where bookid='" + txtid.Text + "' ";
        DataTable dt = db.getdata(cmd);
        if (dt.Rows.Count > 0)
        {
            /*string type = dt.Rows[0][3].ToString();
            /*if ("Select * from login where status=='"admin")*/
            {

                txtdep.Text = dt.Rows[0][1].ToString();
                txtreg.Text = dt.Rows[0][0].ToString();
                txtnum.Text = dt.Rows[0][3].ToString();
                txtcorname.Text = dt.Rows[0][5].ToString();
                txtblck.Text = dt.Rows[0][6].ToString();
                cmd.CommandText = "select name from venue_table where venue_id='" + dt.Rows[0][4] + "'";
                DataTable dt1 = db.getdata(cmd);
                txtven.Text = dt1.Rows[0][0].ToString();

            }

        }
        else
        {
            Response.Write("<script>alert('Incorrect booking ID please enter valid id')</script>");
        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Delete From book_table Where bookid='" + txtid.Text + "'";
        //DataTable dt = db.getdata(cmd);
        db.execute(cmd);
        Response.Write("<script>alert('Successfully deleted')</script>");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {


    }
}