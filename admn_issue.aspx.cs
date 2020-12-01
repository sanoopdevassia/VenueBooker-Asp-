using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System;
using System.Data;

public partial class admn_issue : System.Web.UI.Page
{
    dboperation db = new dboperation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

   

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select name,Course,phone,Sem,Phone from reg where reg ='" + txtreg.Text + "' ";
        DataTable dt = db.getdata(cmd);
        if (dt.Rows.Count > 0)
        {
            
                

                        txtnme.Text = dt.Rows[0][0].ToString();
                       // txtreg.Text = dt.Rows[0][0].ToString();
                        txtdep.Text = dt.Rows[0][1].ToString();
                        txtsem.Text = dt.Rows[0][3].ToString();
                        txtphn.Text = dt.Rows[0][4].ToString();
                       // cmd.CommandText = "select name from venue_table where venue_id='" + dt.Rows[0][4] + "'";
                      //  DataTable dt1 = db.getdata(cmd);
                     //   txtven.Text = dt1.Rows[0][0].ToString();

                    

                }
                else
                {
                    Response.Write("<script>alert('Incorrect ID please enter valid id')</script>");
                }
               

            }


    protected void btnisue_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select max(issueid) from issue_table";
        int id = db.max_id(cmd);
        cmd.CommandText = "insert into issue_table values('" + id + "','" + txtreg.Text + "','" + CheckBoxList3.SelectedItem.Text + "','" +txtdate.Text + "','" + txttim.Text + "')";
        db.execute(cmd);
        Response.Write("<script>alert(' Successfully issued')</script>");
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
       

    
