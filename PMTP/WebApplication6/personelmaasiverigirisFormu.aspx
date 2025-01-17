<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personelmaasiverigirisFormu.aspx.cs" Inherits="WebApplication6.personelmaasiverigirisFormu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
   
    <title>Personel Maaşı Veri Giriş Formu</title>
</head>
   
     <form id="form2" runat="server">
    <h1>Personel Maaşı Veri Giriş Formu</h1>
         <hr>
 <br />

             <style>
    body{
        margin-left:10px;
    }
</style>

<body>
              <p>
      <asp:Label ID="Label1" runat="server" Text="Maaş Ödeme Tarihi"></asp:Label>
                  <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
 </p>
      <p>       

        <asp:Label ID="Label2" runat="server" Text="Maaş Komisyonu"></asp:Label>
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
           </p>
      <p>   
        <asp:Label ID="Label3" runat="server" Text="Maaş Tutarı"></asp:Label>
<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

          </p>
         <p>          
Personel Seçiniz

         <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="Pers_Adi" DataValueField="Pers_ID" DataSourceID="SqlDataSource1" AutoPostBack="True">
</asp:DropDownList>
Ay Seçiniz
            <asp:DropDownList ID="DropDownList2" runat="server" DataTextField="Ay_Adi" DataValueField="K_ID" DataSourceID="SqlDataSource2" AutoPostBack="True">
            </asp:DropDownList>
                </p>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT [Pers_Adi], [Pers_ID] FROM [tbl_Personeller]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT [K_ID], [Ay_Adi] FROM [tbl_Katagoriler]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Maas_Toplam], [Ay_ID] FROM [tbl_Maaslar]" InsertCommand="INSERT INTO tbl_Maaslar(Pers_ID, Maas_Tarihi, Maas_Tutari, Maas_Komisyonu, Ay_ID, Maas_Toplam) VALUES (@Pers_ID, @Maas_Tarihi, @Maas_Tutari, @Maas_Komisyonu, @Ay_ID, @Maas_Toplam)">
        <InsertParameters>
            <asp:Parameter Name="Pers_ID"></asp:Parameter>
            <asp:Parameter Name="Maas_Tarihi"></asp:Parameter>
            <asp:Parameter Name="Maas_Tutari"></asp:Parameter>
            <asp:Parameter Name="Maas_Komisyonu"></asp:Parameter>
            <asp:Parameter Name="Ay_ID"></asp:Parameter>
             <asp:Parameter Name="Maas_Toplam"></asp:Parameter>
        </InsertParameters>
    </asp:SqlDataSource>

                   <p>
   <asp:Button ID="Button1" runat="server" Text="Kaydet" OnClick="Button1_Click1" />
   <asp:Button ID="Button2" runat="server" Text="Formu Kapat"  OnClientClick="window.close()" />
       </p>
             
     <asp:Label ID="Label11" runat="server" Text="Label" Visible="False"></asp:Label>
    </body>
   </form>
</html>
