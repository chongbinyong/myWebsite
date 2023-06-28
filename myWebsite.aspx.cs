using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class myWebsite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            calQuestion5.SelectedDate = DateTime.Today;
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            lblSend.Text = "✔ Your message has been successfully sent.";
            txtEmailAddress.Text = "";
            txtEmailName.Text = "";
            txtMessage.Text = "";
        }

        protected void btnContact_Click(object sender, EventArgs e)
        {
            lblSend.Text = "";
        }

        protected void ddlLove_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlLove.SelectedIndex == 0)
            {
                imgLove.ImageUrl = "~/Images/heart.png";
                lblLoveInfo.Text = "";
            }
            else if (ddlLove.SelectedIndex == 1)
            {
                imgLove.ImageUrl = "~/Images/anime1.jpg";
                lblLoveInfo.Text = "I love watching anime that produced by Studio Ghibli and Makoto Shinkai. My favourite animation is Your Name.";
            }
            else if(ddlLove.SelectedIndex == 2)
            {
                imgLove.ImageUrl = "~/Images/friedchicken1.png";
                lblLoveInfo.Text = "I like eating chicken especially country-fried chicken and broasted chicken. ";                
            }
            else if (ddlLove.SelectedIndex == 3)
            {
                imgLove.ImageUrl = "~/Images/myfamily1.png";
                lblLoveInfo.Text = "I love my father, my mother and my brother. (❁´◡`❁)";                
            }
            else if (ddlLove.SelectedIndex == 4)
            {
                imgLove.ImageUrl = "~/Images/study1.png";
                lblLoveInfo.Text = "I love studying and reading book and it makes me feel relaxed.";                
            }
            else if (ddlLove.SelectedIndex == 5)
            {
                imgLove.ImageUrl = "~/Images/travel1.png";
                lblLoveInfo.Text = "I like travelling in different countries and it is one of my dream to travel the world.";                
            }
            else if (ddlLove.SelectedIndex == 6)
            {
                imgLove.ImageUrl = "~/Images/videogame1.png";
                lblLoveInfo.Text = "I enjoy playing video games such as Minecraft, League of Legends, Final Fantasy and more.";                
            }
        }

        protected void btnAbout_Click(object sender, EventArgs e)
        {
            ddlLove.SelectedIndex = 0;
            imgLove.ImageUrl = "~/Images/heart.png";
            lblLoveInfo.Text = "";
        }

        protected void calQuestion5_SelectionChanged(object sender, EventArgs e)
        {
            lblQuestion5_1.Text = calQuestion5.SelectedDate.ToShortDateString();
        }

        protected void ddlQuestion4_SelectedIndexChanged(object sender, EventArgs e)
        {
            string[] typeaArray = new string[] { "Creativity", "Cleverness", "Cooperativeness" };
            string[] typebArray = new string[] { "Strong", "Passionate", "Empathetic", "Decisive" };
            string[] typeabArray = new string[] { "Rationality", "Adaptability" };
            string[] typeoArray = new string[] { "Confidence", "Determination", "Resilience", "Intuition" };

            if (ddlQuestion4.SelectedIndex == 0)
            {
                blQuestion4_1.Items.Clear();
            }
            else if(ddlQuestion4.SelectedIndex == 1)
            {
                blQuestion4_1.DataSource = typeaArray;
            }
            else if(ddlQuestion4.SelectedIndex == 2)
            {
                blQuestion4_1.DataSource = typebArray;
            }
            else if(ddlQuestion4.SelectedIndex == 3)
            {
                blQuestion4_1.DataSource = typeabArray;
            }
            else if(ddlQuestion4.SelectedIndex == 4)
            {
                blQuestion4_1.DataSource = typeoArray;
            }
            blQuestion4_1.DataBind();
        }

        protected void btnSubmit1_Click(object sender, EventArgs e)
        {
            lblReply1.Visible = true;
            
            string selectedImp = "";

            foreach (ListItem item in cblQuestion6.Items)
            {
                if (item.Selected)
                {
                    selectedImp += item.Value + "&emsp;";
                }
            }

            lblReply2.Text = "Thank you!"
            + "<br /> Rating: "
            + rblQuestion1.SelectedItem.ToString()
            + "<br /> Name: "
            + txtQuestion2.Text
            + "<br /> Gender: "
            + ddlQuestion3.SelectedValue.ToString()
            + "<br /> Blood type:"
            + ddlQuestion4.SelectedValue.ToString()
            + "<br /> Date of birth: "
            + calQuestion5.SelectedDate.ToLongDateString()
            + "<br /> Improvement(s): "
            + selectedImp
            + "<br /> Suggestion(s): "
            + txtQuestion7.Text;
        }

        protected void btnFeedback_Click(object sender, EventArgs e)
        {
            rblQuestion1.ClearSelection();
            txtQuestion2.Text = "";
            ddlQuestion3.SelectedIndex = 0;
            ddlQuestion4.SelectedIndex = 0;
            blQuestion4_1.Items.Clear();
            calQuestion5.SelectedDate = DateTime.Today;
            lblQuestion5_1.Text = "";
            cblQuestion6.ClearSelection();
            txtQuestion7.Text = "";
            lblReply1.Visible = false;
            lblReply2.Text = "";
        }
    }
}