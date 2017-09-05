using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LCBcafewebsite
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SmtpClient client = new SmtpClient();
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.EnableSsl = true;
            client.Host = "smtp.gmail.com";
            client.Port = 587;
        
            System.Net.NetworkCredential userpass = new System.Net.NetworkCredential("cafelcb@gmail.com", "cafelcb.");
            client.UseDefaultCredentials = false;
            client.Credentials = userpass;
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(TextBoxEmail.Text);
            msg.To.Add(new MailAddress("cafelcb@gmail.com"));
            msg.Subject = TextBoxSubject.Text;
            msg.IsBodyHtml = true;
            msg.Body = string.Format("From: " + TextBoxName.Text + ",   Email: " + TextBoxEmail.Text + ", Message: " + TextBoxMessage.Text);
            try
            {
                client.Send(msg);
                LiteralMessage.Text = "Thank you for contacting us!";
            }
            catch (Exception ex)
            {
                LiteralMessage.Text = "Fail to send message. Please try again." + ex.Message;
            }
            TextBoxName.Text = "";
            TextBoxEmail.Text = "";
            TextBoxSubject.Text = "";
            TextBoxMessage.Text = "";
        }
    }
}