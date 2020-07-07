using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using WebApplication1.classses;

namespace WebApplication1
{
    public partial class Iletisim : System.Web.UI.Page
    {
        public Veritabani vt;
        public DataRow drConfig;
        protected void Page_Load(object sender, EventArgs e)
        {
            vt = new Veritabani();
            drConfig = vt.getDataRow("SELECT TOP(1) * FROM SITE_AYARLARI");

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            string ad, baslik, aciklama, mail;
            ad = txtAd.Value;
            baslik = txtBaslik.Value;
            aciklama = txtAciklama.Value;
            mail = txtEmail.Value;
            string sqlCumle = "INSERT INTO MESAJLAR VALUES('"+ad+ "','" + mail + "','" + baslik + "','" + aciklama + "')";
            vt.cmd(sqlCumle);
        }
    }
}