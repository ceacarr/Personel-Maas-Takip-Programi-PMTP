<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bolumveriguncellemeFormu.aspx.cs" Inherits="WebApplication6.bolumveriguncellemeFormu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Bölüm Veri Güncelleme Formu</title>
</head>
<body>
     <form id="form2" runat="server">
    <h1>Bölüm Veri Güncelleme Formu</h1>
     <hr>
 
    <style>
    body{
        margin-left:10px;
    }
</style>

         <body>
         <p>
         Bölüm Seçiniz
         <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataTextField="Bolum_Adi" DataValueField="Bolum_ID" DataSourceID="SqlDataSource1"></asp:DropDownList>
         </p>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT [Bolum_Adi], [Bolum_ID] FROM [tbl_Bolumler]"></asp:SqlDataSource>
             
             <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource2" AllowPaging="True">
                 <Fields>
                     <asp:CommandField ShowEditButton="True"></asp:CommandField>
                 </Fields>
             </asp:DetailsView>
         <div>
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" DeleteCommand="DELETE FROM [tbl_Bolumler] WHERE [Bolum_ID] = @Bolum_ID" InsertCommand="INSERT INTO [tbl_Bolumler] ([Bolum_Adi], [Bolum_Tel], [Yonetici_ID]) VALUES (@Bolum_Adi, @Bolum_Tel, @Yonetici_ID)" SelectCommand="SELECT * FROM [tbl_Bolumler]
WHERE Bolum_ID=@Bolum_ID"
                 UpdateCommand="UPDATE tbl_Bolumler SET Bolum_Adi = @Bolum_Adi, Bolum_Tel = @Bolum_Tel, Yonetici_ID = @Yonetici_ID
WHERE Bolum_ID=@Bolum_ID">
                 <DeleteParameters>
                     <asp:Parameter Name="Bolum_ID" Type="Int32"></asp:Parameter>
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="Bolum_Adi" Type="String"></asp:Parameter>
                     <asp:Parameter Name="Bolum_Tel" Type="String"></asp:Parameter>
                     <asp:Parameter Name="Yonetici_ID" Type="Int32"></asp:Parameter>
                 </InsertParameters>
                 <SelectParameters>
                     <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="Bolum_ID"></asp:ControlParameter>
                 </SelectParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="Bolum_Adi" Type="String"></asp:Parameter>
                     <asp:Parameter Name="Bolum_Tel" Type="String"></asp:Parameter>
                     <asp:Parameter Name="Yonetici_ID" Type="Int32"></asp:Parameter>
                     <asp:Parameter Name="Bolum_ID"></asp:Parameter>
                 </UpdateParameters>
             </asp:SqlDataSource>
        </div>
                      <div class="btn">                                           
        <p>
                       <a href="Formlar.aspx"
<button type="button" class="btn btn-primary">Formu Kapat</button>   
                 </a>          
 </p>
                          </body>
    </form>
</body>
</html>
