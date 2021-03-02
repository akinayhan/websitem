using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace websitem
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage mesaj = new MailMessage();
            mesaj.From = new MailAddress("akinayhancsharpdeneme@gmail.com");
            mesaj.To.Add(TextBox2.Text);
            mesaj.Subject = TextBox1.Text;
            mesaj.Body = TextBox3.Text;
            mesaj.IsBodyHtml = true;
            SmtpClient istemci = new SmtpClient();
            istemci.Credentials = new NetworkCredential("akinayhancsharpdeneme@gmail.com", "18811938");
            istemci.Port = 587;
            istemci.Host = "smtp.gmail.com";
            istemci.EnableSsl = false;
            istemci.Send(mesaj);
        }
    }
}