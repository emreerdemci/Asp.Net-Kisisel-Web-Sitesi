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
    public partial class Hakkimizda : System.Web.UI.Page
    {
        public Veritabani vt;
        public DataRow drConfig;
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            vt = new Veritabani();
            drConfig = vt.getDataRow("SELECT TOP(1) * FROM SITE_AYARLARI");
            dt = vt.getDataTable("SELECT * FROM BECERILER");
            int elemanSayisi = dt.Rows.Count;
            int solTaraf = 0, sagTaraf = 0;
            if (elemanSayisi%2==1)
            {
                solTaraf = elemanSayisi / 2 + 1;
                sagTaraf = elemanSayisi / 2;
            }
            else
            {
                solTaraf = elemanSayisi / 2;
                sagTaraf = solTaraf;
            }
            dt = vt.getDataTable("SELECT TOP("+solTaraf+")* FROM BECERILER ORDER BY BECERILER_ID ASC");
            prtBecerilerSol.DataSource = dt;
            prtBecerilerSol.DataBind();
            dt = vt.getDataTable("SELECT TOP(" + sagTaraf + ")* FROM BECERILER ORDER BY BECERILER_ID DESC");
            prtBecerilerSag.DataSource = dt;
            prtBecerilerSag.DataBind();

            dt = vt.getDataTable("SELECT * FROM VASIFLAR");
            rptVasiflar.DataSource = dt;
            rptVasiflar.DataBind();
        }
    }
}