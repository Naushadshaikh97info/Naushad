using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
  
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        lbl_name.Text = txt_name.Text;
        lbl_surname.Text = txt_surname.Text;
        lbl_username.Text = txt_username.Text;
        lbl_password.Text = txt_password.Text;
        lbl_gender.Text = rb_gender.SelectedValue;
        lbl_country.Text = ddl_country.SelectedValue;
        lbl_mobileno.Text = txt_mobileno.Text;
        lbl_email.Text = txt_email.Text;

        txt_name.Text = "";
        txt_surname.Text = "";
        txt_username.Text = "";
        txt_password.Text = "";
        rb_gender.SelectedIndex = -1;
        ddl_country.SelectedIndex = 0;
        txt_mobileno.Text = "";
        txt_email.Text = "";

        pnl_reg.Visible = false;
        pnl_rep.Visible = true;  

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txt_name.Text = "";
        txt_surname.Text = "";
        txt_username.Text = "";
        txt_password.Text = "";
        rb_gender.SelectedIndex = -1;
        ddl_country.SelectedIndex = 0;
        txt_mobileno.Text = "";
        txt_email.Text = "";

    }
    protected void btn_back_Click(object sender, EventArgs e)
    {
        pnl_reg.Visible = true ;
        pnl_rep.Visible = false ;
    }
}