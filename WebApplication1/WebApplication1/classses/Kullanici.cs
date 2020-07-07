using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.classses
{
    public class Kullanici
    {
        public string KullaniciId;
        public string KullaniciAdi;
        public string Adi;
        public string Soyadi;
        public string Gorevi;
        public string Resim;

        public Kullanici()
        {
            KullaniciId = string.Empty;
            KullaniciAdi = string.Empty;
            Adi = string.Empty;
            Soyadi = string.Empty;
            Gorevi = string.Empty;
            Resim = string.Empty;
        }
    }
}