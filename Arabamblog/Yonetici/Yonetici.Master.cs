using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Arabamblog.Yonetici
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["yonetici"] != null)
            {
                DataAccessleyear.Yonetici yon = (DataAccessleyear.Yonetici)Session["yonetici"];//Unboxing
                lbl_kullanici.Text = yon.Isim + " " + yon.Soyisim;
            }
            else
            {
                Response.Redirect("Giris.aspx");
            }

        }
        protected void lbtn_cikisYap_Click(object sender, EventArgs e)
        {
            Session["yonetici"] = null;
            Response.Redirect("Giris.aspx");
        }
    }
}