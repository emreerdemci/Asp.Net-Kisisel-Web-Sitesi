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
    public partial class Blog : System.Web.UI.Page
    {
        Veritabani vt;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            vt = new Veritabani();
            dt=vt.getDataTable("SELECT * FROM BLOG");
            rptBlog.DataSource = dt;
            rptBlog.DataBind();
        }
    }
}