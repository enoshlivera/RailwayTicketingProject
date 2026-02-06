using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RailwayTicketingProject
{
    public partial class trainmanagementpage : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)//add btn
        {
            if (checkTrainExists())
            {
                Response.Write("<Script>alert('TrainID already exist, try another TrainID');</Script>");
            }
            else
            {
                signUpNewTrain();
            }

        }

        protected void Button3_Click(object sender, EventArgs e)//update btn
        {
            if (checkTrainExists())
            {
                updateTrain();
            }
            else
            {
                Response.Write("<Script>alert('TrainID does not exist, try another TrainID');</Script>");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)//delete btn
        {
            if (checkTrainExists())
            {
                deleteTrain();
            }
            else
            {
                Response.Write("<Script>alert('TrainID already exist, try another TrainID');</Script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)//go btn
        {
            
        }

        bool checkTrainExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from train_management where trainID='" + TextBox3.Text.Trim() + "';", con);
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
     
        void signUpNewTrain()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into train_management(trainID,trainname,firstclass_partition,firstclass_seatpp,secondclass_partition,secondclass_seatpp,thirdclass_partition,thirdclass_seatpp) values(@trainID,@trainname,@firstclass_partition,@firstclass_seatpp,@secondclass_partition,@secondclass_seatpp,@thirdclass_partition,@thirdclass_seatpp)", con);

                cmd.Parameters.AddWithValue("@trainID",TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@trainname",TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@firstclass_partition",TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@firstclass_seatpp",TextBox5.Text.Trim());
                
                cmd.Parameters.AddWithValue("@secondclass_partition",TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@secondclass_seatpp",TextBox6.Text.Trim());
                
                cmd.Parameters.AddWithValue("@thirdclass_partition",TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@thirdclass_seatpp",TextBox10.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<Script>alert('Train Added Successful.');</Script>");
                clearFrom();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<Script>alert('" + ex.Message + "');</Script>");
            }
        }

        void updateTrain()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE train_management SET(trainID,trainname,firstclass_partition,firstclass_seatpp,secondclass_partition,secondclass_seatpp,thirdclass_partition,thirdclass_seatpp) VALUES (@trainID,@trainname,@firstclass_partition,@firstclass_seatpp,@secondclass_partition,@secondclass_seatpp,@thirdclass_partition,@thirdclass_seatpp) WHERE trainID='" + TextBox3.Text.Trim()+"'", con);

                cmd.Parameters.AddWithValue("@trainID", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@trainname", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@firstclass_partition", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@firstclass_seatpp", TextBox5.Text.Trim());

                cmd.Parameters.AddWithValue("@secondclass_partition", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@secondclass_seatpp", TextBox6.Text.Trim());

                cmd.Parameters.AddWithValue("@thirdclass_partition", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@thirdclass_seatpp", TextBox10.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<Script>alert('Train Updated Successful.');</Script>");
                clearFrom();
                GridView1.DataBind();
            }
            catch(Exception ex)
            {
                Response.Write("<Script>alert('" + ex.Message + "');</Script>");
            }
        }

        void deleteTrain()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE FROM train_management WHERE trainID='"+TextBox3.Text.Trim()+"'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<Script>alert('Train Deleted Successful.');</Script>");
                clearFrom();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<Script>alert('" + ex.Message + "');</Script>");
            }
        }

        void clearFrom()
        {
            TextBox3.Text = "";
            TextBox1.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox7.Text = "";
            TextBox6.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
        }
    }
}