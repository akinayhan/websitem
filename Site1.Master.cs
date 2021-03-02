using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace websitem
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DuyurulariGetir();
        }


        private void DuyurulariGetir()
        {
            SqlConnection baglan = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
            string sorgu = "Select * from Duyurular order by Tarih";

            SqlCommand cmd = new SqlCommand(sorgu, baglan);

            baglan.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            lstDuyuru.DataSource = dr;
            lstDuyuru.DataBind();

            baglan.Close();
        }

        protected void btnArama_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx?q=" + txtArama.Text.Trim());
        }
    }
}