<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personelverigirisFormu.aspx.cs" Inherits="WebApplication6.personelverigirisFormu_aspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <title>Personel Veri Giriş Formu</title>
</head>
<body>
    <style>
        div{
            margin-left:20px;
        }
    </style>
  
    <h1>Personel Veri Giriş Formu</h1>
    <hr>

    <form id="form1" runat="server">

    <div>  
        <p>
        <asp:Label ID="Label1" runat="server" Text="Adı"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

          <asp:Label ID="Label2" runat="server" Text="Soyadı"></asp:Label>
  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

          <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
  <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </p>
        <br />
         <p>
          <asp:Label ID="Label4" runat="server" Text="Adres"></asp:Label>
  <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
 
          <asp:Label ID="Label5" runat="server" Text="Cep Telefonu"></asp:Label>
  <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

              </p>
        <br />

          <p>
                <asp:Label ID="Label6" runat="server" Text="Doğum Tarihi"></asp:Label>
<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    
                <asp:Label ID="Label7" runat="server" Text="Giriş Tarihi"></asp:Label>
<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>

                        <asp:Label ID="Label8" runat="server" Text="Personel Telefonu"></asp:Label>
<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                 </p>
        <br />

           <p>

                        <asp:Label ID="Label9" runat="server" Text="Personel TC No"></asp:Label>
<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>

                           <asp:Label ID="Label10" runat="server" Text="Son Kayıt Tarihi"></asp:Label>
<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>

                              <asp:Label ID="Label11" runat="server" Text="Çıkış Tarihi"></asp:Label>
<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
           </p>
         <br />
         <p> 
                               <asp:Label ID="Label13" runat="server" Text="Personel Maaşı"></asp:Label>
<asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
               
                              <asp:Label ID="Label14" runat="server" Text="Personel Komisyon Yüzdesi"></asp:Label>
<asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
        
                              <asp:Label ID="Label15" runat="server" Text="SGK No"></asp:Label>
<asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
              </p>
         <br />
            <p>
                              <asp:Label ID="Label16" runat="server" Text="Form Kayıt Tarihi"></asp:Label>
<asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>

                             <asp:Label ID="Label17" runat="server" Text="Son Kaydeden"></asp:Label>
<asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
        
                             <asp:Label ID="Label18" runat="server" Text="Kaydeden"></asp:Label>
<asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>

                 </p>
         <br />
           <p>

        İl
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataTextField="Il_Adi" DataValueField="Il_Adi" DataSourceID="SqlDataSource1"></asp:DropDownList>

         İlçe
 <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataTextField="Ilce_Adi" DataValueField="Ilce_Adi" DataSourceID="SqlDataSource2"></asp:DropDownList>

         Bölüm
 <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataTextField="Bolum_Adi" DataValueField="Bolum_ID" DataSourceID="SqlDataSource3"></asp:DropDownList>
        Ünvan
 <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataTextField="Unvan" DataValueField="K_ID" DataSourceID="SqlDataSource4"></asp:DropDownList>
                </p>
          <p>

        Cinsiyet
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
            <asp:ListItem Selected="True" Value="1">Erkek</asp:ListItem>
            <asp:ListItem Selected="True" Value="2">Kadın</asp:ListItem>
        </asp:RadioButtonList>
        
        Personel Aktif Mi ?
      <asp:CheckBox ID="CheckBox1" runat="server" />

                 </p>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT [Il_Adi] FROM [tbl_Katagoriler]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT [Ilce_Adi] FROM [tbl_Katagoriler]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT [Bolum_Adi], [Bolum_ID] FROM [tbl_Bolumler]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT [Unvan], [K_ID] FROM [tbl_Katagoriler]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Giris_Tarihi], [Pers_Cikis_Tarihi], [Pers_Adresi], [Pers_Ilcesi], [Pers_ILi], [Pers_IL_Kodu], [Pers_Tel], [Pers_Cep], [Pers_Email], [Bolum_ID], [Cinsiyet_ID], [Unvan_ID], [Pers_Maas], [Pers_Komisyon_Yuzdesi], [Pers_SGK_No], [Pers_TC_No], [Pers_Aktif_Mi], [Kaydeden], [Kayit_Tarihi], [Son_Kaydeden], [Son_Kayit_Tarihi] FROM [tbl_Personeller]" InsertCommand="INSERT INTO tbl_Personeller(Pers_Adi, Pers_Soyadi, Pers_DTarihi, Pers_Giris_Tarihi, Pers_Cikis_Tarihi, Pers_Adresi, Pers_Ilcesi, Pers_ILi, Pers_IL_Kodu, Pers_Tel, Pers_Cep, Pers_Email, Bolum_ID, Cinsiyet_ID, Unvan_ID, Pers_Maas, Pers_Komisyon_Yuzdesi, Pers_SGK_No, Pers_TC_No, Pers_Aktif_Mi, Kaydeden, Kayit_Tarihi, Son_Kaydeden, Son_Kayit_Tarihi) VALUES (@Pers_Adi, @Pers_Soyadi, @Pers_DTarihi, @Pers_Giris_Tarihi, @Pers_Cikis_Tarihi, @Pers_Adresi, @Pers_Ilcesi, @Pers_ILi, @Pers_IL_Kodu, @Pers_Tel, @Pers_Cep, @Pers_Email, @Bolum_ID, @Cinsiyet_ID, @Unvan_ID, @Pers_Maas, @Pers_Komisyon_Yuzdesi, @Pers_SGK_No, @Pers_TC_No, @Pers_Aktif_Mi, @Kaydeden, @Kayit_Tarihi, @Son_Kaydeden, @Son_Kayit_Tarihi)"><InsertParameters>
<asp:Parameter Name="Pers_Adi"></asp:Parameter>
<asp:Parameter Name="Pers_Soyadi"></asp:Parameter>
<asp:Parameter Name="Pers_DTarihi"></asp:Parameter>
<asp:Parameter Name="Pers_Giris_Tarihi"></asp:Parameter>
<asp:Parameter Name="Pers_Cikis_Tarihi"></asp:Parameter>
<asp:Parameter Name="Pers_Adresi"></asp:Parameter>
<asp:Parameter Name="Pers_Ilcesi"></asp:Parameter>
<asp:Parameter Name="Pers_ILi"></asp:Parameter>
<asp:Parameter Name="Pers_IL_Kodu"></asp:Parameter>
<asp:Parameter Name="Pers_Tel"></asp:Parameter>
<asp:Parameter Name="Pers_Cep"></asp:Parameter>
<asp:Parameter Name="Pers_Email"></asp:Parameter>
<asp:Parameter Name="Bolum_ID"></asp:Parameter>
<asp:Parameter Name="Cinsiyet_ID"></asp:Parameter>
<asp:Parameter Name="Unvan_ID"></asp:Parameter>
<asp:Parameter Name="Pers_Maas"></asp:Parameter>
<asp:Parameter Name="Pers_Komisyon_Yuzdesi"></asp:Parameter>
<asp:Parameter Name="Pers_SGK_No"></asp:Parameter>
<asp:Parameter Name="Pers_TC_No"></asp:Parameter>
<asp:Parameter Name="Pers_Aktif_Mi"></asp:Parameter>
<asp:Parameter Name="Kaydeden"></asp:Parameter>
<asp:Parameter Name="Kayit_Tarihi"></asp:Parameter>
<asp:Parameter Name="Son_Kaydeden"></asp:Parameter>
<asp:Parameter Name="Son_Kayit_Tarihi"></asp:Parameter>
</InsertParameters></asp:SqlDataSource>


      
        <p>
        <asp:Button ID="Button1" runat="server" Text="Kaydet" OnClick="Button1_Click1" />
        <asp:Button ID="Button2" runat="server" Text="Formu Kapat" OnClientClick="window.close()" />
            </p>
 <p>
        <asp:Label ID="Label12" runat="server" Text="Label" Visible="False"></asp:Label>
           
        </p>

       
        </div>
    </form>
</body>
</html>
