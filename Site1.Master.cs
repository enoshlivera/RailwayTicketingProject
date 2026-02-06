using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RailwayTicketingProject
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals("??"))
                {
                    //user btns
                    LinkButton1.Visible = true;//user login btn
                    LinkButton2.Visible = true;//user sign up btn

                    LinkButton3.Visible = false;//user logout btn
                    LinkButton7.Visible = false;//hello user btn

                    //admin btns
                    LinkButton6.Visible = true;//admin btn

                    LinkButton11.Visible = false;//train management btn
                    LinkButton12.Visible = false;//member management btn
                    LinkButton8.Visible = false;//schedule management btn
                    LinkButton10.Visible = false;//revanue management btn
                }
                else if (Session["role"].Equals("user"))
                {
                    //user btns
                    LinkButton1.Visible = false;//user login btn
                    LinkButton2.Visible = false;//user sign up btn

                    LinkButton3.Visible = true;//user logout btn
                    LinkButton7.Visible = true;//hello user btn
                    LinkButton7.Text = "Hello " +Session["firstname"].ToString();

                    //admin btns
                    LinkButton6.Visible = true;//admin btn

                    LinkButton11.Visible = false;//train management btn
                    LinkButton12.Visible = false;//member management btn
                    LinkButton8.Visible = false;//schedule management btn
                    LinkButton10.Visible = false;//revanue management btn
                }
                else if (Session["role"].Equals("SystemUser"))
                {
                    //user btns
                    LinkButton1.Visible = false;//user login btn
                    LinkButton2.Visible = false;//user sign up btn

                    LinkButton3.Visible = true;//user logout btn
                    LinkButton7.Visible = true;//hello user btn
                    LinkButton7.Text = "Hello SystemUser";

                    //admin btns
                    LinkButton6.Visible = false;//admin btn

                    LinkButton11.Visible = true;//train management btn
                    LinkButton12.Visible = true;//member management btn
                    LinkButton8.Visible = true;//schedule management btn
                    LinkButton10.Visible = true;//revanue management btn
                }
                else if (Session["role"].Equals("Station Master"))
                {
                    //user btns
                    LinkButton1.Visible = false;//user login btn
                    LinkButton2.Visible = false;//user sign up btn

                    LinkButton3.Visible = true;//user logout btn
                    LinkButton7.Visible = true;//hello user btn
                    LinkButton7.Text = "Station Master";

                    //admin btns
                    LinkButton6.Visible = false;//admin btn

                    LinkButton11.Visible = true;//train management btn
                    LinkButton12.Visible = false;//member management btn
                    LinkButton8.Visible = true;//schedule management btn
                    LinkButton10.Visible = false;//revanue management btn

                }
            }
            catch (Exception ex)
            {
                
               
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminloginpage.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("trainmanagementpage.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("stationmanagementpage.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)//logout btn
        {
            Session["username"] = "";
            Session["firstname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            //user btns
            LinkButton1.Visible = true;//user login btn
            LinkButton2.Visible = true;//user sign up btn

            LinkButton3.Visible = false;//user logout btn
            LinkButton7.Visible = false;//hello user btn

            //admin btns
            LinkButton6.Visible = true;//admin btn

            LinkButton11.Visible = false;//train management btn
            LinkButton12.Visible = false;//member management btn
            LinkButton8.Visible = false;//schedule management btn
            LinkButton10.Visible = false;//revanue management btn
        }
    }
}