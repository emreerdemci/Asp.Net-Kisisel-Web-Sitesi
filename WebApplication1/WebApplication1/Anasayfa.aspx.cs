﻿using System;
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
    public partial class Anasayfa : System.Web.UI.Page
    {
        public Veritabani vt;
        public DataRow drConfig;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            vt = new Veritabani();
            drConfig = vt.getDataRow("SELECT TOP(1) * FROM SITE_AYARLARI");

            dt = vt.getDataTable("SELECT * FROM SERVISLER ");
            rptServisler.DataSource = dt;
            rptServisler.DataBind();
        }
    }
}