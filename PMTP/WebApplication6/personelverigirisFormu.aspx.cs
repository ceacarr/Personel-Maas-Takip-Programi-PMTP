using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class personelverigirisFormu_aspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlDataSource5.InsertParameters["Pers_Adi"].DefaultValue = TextBox1.Text;
            SqlDataSource5.InsertParameters["Pers_Soyadi"].DefaultValue = TextBox2.Text;
            SqlDataSource5.InsertParameters["Pers_Email"].DefaultValue = TextBox3.Text;
            SqlDataSource5.InsertParameters["Pers_Adresi"].DefaultValue = TextBox4.Text;
            SqlDataSource5.InsertParameters["Pers_Cep"].DefaultValue = TextBox5.Text;
            SqlDataSource5.InsertParameters["Pers_DTarihi"].DefaultValue = TextBox6.Text;
            SqlDataSource5.InsertParameters["Pers_Giris_Tarihi"].DefaultValue = TextBox7.Text;
            SqlDataSource5.InsertParameters["Pers_Tel"].DefaultValue = TextBox8.Text;
            SqlDataSource5.InsertParameters["Pers_TC_No"].DefaultValue = TextBox9.Text;
            SqlDataSource5.InsertParameters["Son_Kayit_Tarihi"].DefaultValue = TextBox10.Text;
            SqlDataSource5.InsertParameters["Pers_Cikis_Tarihi"].DefaultValue = TextBox11.Text;
            SqlDataSource5.InsertParameters["Pers_Maas"].DefaultValue = TextBox12.Text;
            SqlDataSource5.InsertParameters["Pers_Komisyon_Yuzdesi"].DefaultValue = TextBox13.Text;
            SqlDataSource5.InsertParameters["Pers_SGK_No"].DefaultValue = TextBox14.Text;
            SqlDataSource5.InsertParameters["Kayit_Tarihi"].DefaultValue = TextBox15.Text;
            SqlDataSource5.InsertParameters["Son_Kaydeden"].DefaultValue = TextBox16.Text;
            SqlDataSource5.InsertParameters["Kaydeden"].DefaultValue = TextBox17.Text;
            SqlDataSource5.InsertParameters["Pers_ILi"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSource5.InsertParameters["Pers_Ilcesi"].DefaultValue = DropDownList2.SelectedValue;
            SqlDataSource5.InsertParameters["Bolum_ID"].DefaultValue = DropDownList3.SelectedValue;
            SqlDataSource5.InsertParameters["Unvan_ID"].DefaultValue = DropDownList4.SelectedValue;
            SqlDataSource5.InsertParameters["Cinsiyet_ID"].DefaultValue = RadioButtonList1.SelectedValue;




            bool d = false;
            if (CheckBox1.Checked == true)
            {
                d = true;
            }
            SqlDataSource5.InsertParameters["Pers_Aktif_Mi"].DefaultValue = d.ToString();
            int s = SqlDataSource5.Insert();
            if (s > 0)
            {
                Label12.Text = "Yeni Personel verisi: <b>" + TextBox1.Text + "</b><p>Başarı ile Eklendi";
                Label12.Visible = true;
            }
            else
                Label12.Text = "Yeni Personel Kaydı Başarısız. Verilerinizi Kontrol ettikten sonra Tekrar deneyiniz";
            Label12.Visible = true;
        }
    }
}


  