<%@ Page Language="C#" AutoEventWireup="true" Codefile="personeliletisimRaporu.aspx.cs" Inherits="WebApplication6.personeliletisimRaporu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Personel İletişim Raporu</title>
</head>
<body>
        <style>
        div{
            margin-left:10px;
        }
    </style>

    <div>
      <form id="form1" runat="server">

          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT [Pers_ID], [Pers_Adi], [Pers_Giris_Tarihi], [Pers_Adresi], [Pers_Ilcesi], [Pers_ILi], [Pers_Tel], [Pers_Cep], [Pers_Email], [Bolum_ID], [Unvan_ID], [Pers_Aktif_Mi] FROM [tbl_Personeller]"></asp:SqlDataSource>

          <h1>Personel İletişim Raporu</h1>                    
     <hr>

          <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True"></asp:GridView>
          
          <asp:SqlDataSource runat="server" ID="SqlDataSource2"></asp:SqlDataSource>
    
          <br />

       <p>
                       <a href="Raporlar.aspx"
<button type="button" class="btn btn-primary">Formu Kapat</button>   
                 </a>        
 </p>
    
        </div>
    </form>
</body>
</html>
