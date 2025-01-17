using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class personelmaasiverigirisFormu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlDataSource3.InsertParameters["Maas_Tarihi"].DefaultValue = TextBox1.Text;
            SqlDataSource3.InsertParameters["Maas_Komisyonu"].DefaultValue = TextBox2.Text;
            SqlDataSource3.InsertParameters["Maas_Tutari"].DefaultValue = TextBox3.Text;
            SqlDataSource3.InsertParameters["Pers_ID"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSource3.InsertParameters["Ay_ID"].DefaultValue = DropDownList2.SelectedValue;


            int s = SqlDataSource3.Insert();
            if (s > 0)
            {
                Label11.Text = "Yeni Maaş verisi: <b>" + TextBox1.Text + "</b><p>Başarı ile Eklendi";
                Label11.Visible = true;
            }
            else
                Label11.Text = "Yeni Personel Kaydı Başarısız. Verilerinizi Kontrol ettikten sonra Tekrar deneyiniz";
            Label11.Visible = true;
        }
    }
}



         
  