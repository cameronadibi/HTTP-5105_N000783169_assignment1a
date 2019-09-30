using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment01
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
            if (Page.IsPostBack)
            {
                string Guest_Fullname = guest_fullname.Text;
                string Guest_Email = guest_email.Text;
                string Guest_Roomselection = guest_roomselection.SelectedValue;
                int Guest_Pillows = Convert.ToInt32(guest_pillows.Text);
                string Guest_address = guest_address.Text;

                guest_fullname.InnerHtml = "Please enter full name<br>";
                guest_email.InnerHtml = "Please enter email<br>";
                guest_roomselection.InnerHtml = "Please select a room option<br>";
                guest_pillows.InnerHtml = "Please choose a value from 1 to 5<br>";
                guest_address.InnerHtml = "Please enter a valid street address<br>";

            }
}