using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessleyear;
using System.IO;

namespace Arabamblog
{
    public partial class UyeOl : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtn_ekle_Click(object sender, EventArgs e)
        {
            Uye u = new Uye();
            u.Isim = tb_isim.Text;
            u.Soyad=tb_soyisim.Text;
            u.KullaniciAdi = tb_kullaniciadi.Text;
            u.Email = tb_email.Text;
            u.Sifre = tb_sifre.Text;
            u.UyelikTarihi =DateTime.Now;

            if (dm.UyeOl(u))
            {
                pnl_basarili.Visible = true;
                pnl_basarisiz.Visible = false;
            }
            else
            {
                pnl_basarili.Visible = false;
                pnl_basarisiz.Visible = true;
                lbl_mesaj.Text = "Hatalarımla Sev Beni";
            }
        }
    }
}