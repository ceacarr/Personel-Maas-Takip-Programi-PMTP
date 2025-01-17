using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class bolumverigirisFormu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlDataSource2.InsertParameters["Bolum_Adi"].DefaultValue = TextBox1.Text;
            SqlDataSource2.InsertParameters["Bolum_Tel"].DefaultValue = TextBox2.Text;
            SqlDataSource2.InsertParameters["Yonetici_ID"].DefaultValue = DropDownList1.SelectedValue;

         
            int s = SqlDataSource2.Insert();
            if (s > 0)
            {
                Label13.Text = "Yeni Bölüm verisi: <b>" + TextBox1.Text + "</b><p>Başarı ile Eklendi";
                Label13.Visible = true;
            }
            else
                Label13.Text = "Yeni Bölüm Kaydı Başarısız. Verilerinizi Kontrol ettikten sonra Tekrar deneyiniz";
            Label13.Visible = true;
        }
    }
}



