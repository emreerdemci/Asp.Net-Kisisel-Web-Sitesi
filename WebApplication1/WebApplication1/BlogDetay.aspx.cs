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
    public partial class BlogDetay : System.Web.UI.Page
    {
       public string blogId;
       public Veritabani vt;
       public DataRow drDetay;
       public DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

            vt = new Veritabani();
            string sqlCumle = "SELECT * FROM BLOG WHERE BLOG_ID =" + blogId;
            drDetay = vt.getDataRow(sqlCumle);

            dt = vt.getDataTable("SELECT * FROM GORSELLER WHERE TABLO_ID= 1 AND DETAY_ID=" + blogId);
            rptGorseller.DataSource = dt;
            rptGorseller.DataBind();

            sqlCumle = "UPDATE BLOG SET GORUNTULENME_SAYISI += 1 WHERE BLOG_ID = 1" + blogId;
            vt.cmd(sqlCumle);
        }
        protected void Page_PreLoad(object sender, EventArgs e)
        {
            blogId = Request.QueryString["id"];
        }
    }
}