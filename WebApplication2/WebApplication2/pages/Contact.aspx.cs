using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication2
{
    public partial class Contact : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {

        }
     
       protected void btnSend_Click(object sender, EventArgs e)
        {
            
            MailMessage mm = new MailMessage(txtEmail.Text, "homemadefurniture123@gmail.com");
            mm.Subject = txtSubject.Text;
            mm.Body = "Name: " + txtName.Text + "<br /><br />Email: " + txtEmail.Text + "<br />" + txtMsg.Text;

            mm.IsBodyHtml = true;
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.EnableSsl = true;
            smtpClient.Host = "smtp.gmail.com";
            System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
            NetworkCred.UserName = "homemadefurniture123@gmail.com";
            NetworkCred.Password = "1234567.8";
            smtpClient.UseDefaultCredentials = true;
            smtpClient.Credentials = NetworkCred;
            smtpClient.Port = 587;
           
            
        

            try
            {
                
                smtpClient.Send(mm);
                litResult.Text =
                    "<p>Successfully Sent</p>";
            }
            catch (Exception ex)
            {
                //display the full error to the user
                litResult.Text =
                    "<p>Send failed: " + ex.Message + ":" + ex.InnerException + "</p>";
            }
      
            
        }
    }
}
    