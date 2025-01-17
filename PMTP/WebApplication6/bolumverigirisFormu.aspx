<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bolumverigirisFormu.aspx.cs" Inherits="WebApplication6.bolumverigirisFormu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Bölüm Veri Giriş Formu</title>
</head>
     <style>
     body{
         margin-left:10px;
     }
 </style>

<body>
      <div>
     <form id="form1" runat="server">
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT [Kullanici_ID], [Kullanici_Adi] FROM [tbl_Kullanicilar]"></asp:SqlDataSource>
    <h1>Bölüm Veri Giriş Formu</h1>
     <hr>  
         
               <p>
      <asp:Label ID="Label1" runat="server" Text="Bölüm Adı"></asp:Label>
      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        <asp:Label ID="Label2" runat="server" Text="Bölüm Telefon"></asp:Label>
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

    
                 Müdür   
          <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="Kullanici_Adi" DataValueField="Kullanici_ID" DataSourceID="SqlDataSource1" AutoPostBack="True">
 </asp:DropDownList>

                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT [Bolum_Adi], [Bolum_Tel], [Yonetici_ID] FROM [tbl_Bolumler]" InsertCommand="INSERT INTO tbl_Bolumler(Bolum_Adi, Bolum_Tel, Yonetici_ID) VALUES (@Bolum_Adi, @Bolum_Tel, @Yonetici_ID)">
                       <InsertParameters>
                           <asp:Parameter Name="Bolum_Adi"></asp:Parameter>
                           <asp:Parameter Name="Bolum_Tel"></asp:Parameter>
                           <asp:Parameter Name="Yonetici_ID"></asp:Parameter>
                       </InsertParameters>
                   </asp:SqlDataSource>        
                 
                <p>
       <asp:Button ID="Button1" runat="server" Text="Kaydet" OnClick="Button1_Click1" />
                    <asp:Button ID="Button2" runat="server" Text="Formu Kapat" OnClientClick="window.close()" />
                </p>
                   <p>
                       <asp:Label ID="Label13" runat="server" Text="Label" Visible="False"></asp:Label>
          
       </p>
        </div>
    </form>
</body>
</html>
