using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessleyear;

namespace Arabamblog.Yonetici
{
    public partial class MarkaListele : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            lv_markalar.DataSource = dm.MarkaListele();
            lv_markalar.DataBind();
        }

        protected void lv_markalar_ItemCommand1(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "sil")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                if (!dm.MarkaSil(id))
                {
                    pnl_basarisiz.Visible = true;
                    lbl_mesaj.Text = "Marka silinirken bir hata oluştu";
                }
            }
            lv_markalar.DataSource = dm.MarkaListele();
            lv_markalar.DataBind();
        }
    }
}