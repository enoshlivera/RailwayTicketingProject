using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace RailwayTicketingProject
{
    public partial class usersignuppage : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e) //Signup button
        {
            //Response.Write("<Script>alert('username already exist, try another Username');</Script>");
            if (checkMemberExists())
            {
                Response.Write("<Script>alert('username already exist, try another Username');</Script>");
            }
            else
            {
                signUpNewUser();
            }
            
        }

        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from user_logins where username='" + TextBox6.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<Script>alert('" + ex.Message + "');</Script>");
                return false;
            }
        }

        void signUpNewUser()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO user_logins(firstname,lastname,nic,telno,email,username,userid,password,activestatus) values(@firstname,@lastname,@nic,@telno,@email,@username,@userid,@password,@activestatus)", con);

                cmd.Parameters.AddWithValue("@firstname", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@lastname", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@nic", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@telno", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@username", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@userid", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@activestatus", "Pending");

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<Script>alert('SignUp Successful.');</Script>");
            }
            catch (Exception ex)
            {
                Response.Write("<Script>alert('" + ex.Message + "');</Script>");
            }
        }

    }
}