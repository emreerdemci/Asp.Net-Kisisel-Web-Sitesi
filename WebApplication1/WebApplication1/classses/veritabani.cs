using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace WebApplication1.classses
{
    public class Veritabani
    {
        string baglantistr;
        public Veritabani()
        {
            baglantistr = ConfigurationManager.ConnectionStrings["VeriBaglantiStr"].ConnectionString;

        }

        SqlConnection baglan()
        {
            SqlConnection baglanti = new SqlConnection(baglantistr);
            try
            {
                baglanti.Open();
                return baglanti;
            }
            catch
            {
                return null;
            }
        }

        public int cmd(string sqlcumle)
        {
            SqlConnection baglanti = this.baglan();
            int sonuc = 0;

            SqlCommand komut = new SqlCommand(sqlcumle, baglanti);

            try
            {
                sonuc = komut.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw new Exception(e.Message + " ( " + sqlcumle + " ) ");
            }

            komut.Dispose();
            baglanti.Close();
            baglanti.Dispose();
            return sonuc;
        }


        public int cmd(SqlCommand komut)
        {
            SqlConnection baglanti = this.baglan();
            komut.Connection = baglanti;

            int sonuc = 0;

            try
            {
                sonuc = komut.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw new Exception(e.Message + " ( " + komut.CommandText + " ) ");
            }

            komut.Dispose();
            baglanti.Close();
            baglanti.Dispose();
            return sonuc;
        }

        public DataSet getDataSet(string sqlcumle)
        {
            SqlConnection baglanti = this.baglan();
            SqlDataAdapter dp = new SqlDataAdapter(sqlcumle, baglanti);

            DataSet ds = new DataSet();

            try
            {
                dp.Fill(ds);
            }
            catch (Exception e)
            {
                throw new Exception(e.Message + " ( " + sqlcumle + " ) ");
            }
            dp.Dispose();
            baglanti.Close();
            baglanti.Dispose();
            return ds;
        }

        public DataTable getDataTable(string sqlcumle)
        {
            SqlConnection baglanti = this.baglan();
            SqlDataAdapter dp = new SqlDataAdapter(sqlcumle, baglanti);

            DataTable dt = new DataTable();

            try
            {
                dp.Fill(dt);
            }
            catch (Exception e)
            {
                throw new Exception(e.Message + " ( " + sqlcumle + ")");
            }
            dp.Dispose();
            baglanti.Close();
            baglanti.Dispose();
            return dt;
        }

        public DataRow getDataRow(string sqlcumle)
        {
            DataTable tablo = this.getDataTable(sqlcumle);
            if (tablo.Rows.Count == 0) return null;
            return tablo.Rows[0];
        }

        public string getDataCell(string sql, string alan)
        {
            DataRow satir = this.getDataRow(sql);
            if (satir != null) return satir[alan].ToString();
            return null;
        }
    }
}