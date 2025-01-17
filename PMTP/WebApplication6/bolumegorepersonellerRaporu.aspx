<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bolumegorepersonellerRaporu.aspx.cs" Inherits="WebApplication6.bolumegorepersonellerRaporu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
 
    <title>Bölüme Göre Personeller Raporu</title>
</head>

        <style>
    body{
        margin-left:10px;
    }
</style>

<body>
    <form id="form1" runat="server">
        <h1>Bölüme Göre Personeller Raporu</h1>
        <hr>


        <p>
       Bölüm Seçiniz
        <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="Bolum_Adi" DataValueField="Bolum_ID" DataSourceID="SqlDataSource1" AutoPostBack="True"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT [Bolum_ID], [Bolum_Adi] FROM [tbl_Bolumler]"></asp:SqlDataSource>
      </p>


        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT [Pers_Adi], [Pers_Giris_Tarihi], [Pers_ID], [Pers_Ilcesi], [Pers_ILi], [Pers_Tel], [Pers_Cep], [Pers_Email], [Bolum_ID], [Unvan_ID], [Pers_Aktif_Mi] FROM [tbl_Personeller]
WHERE Bolum_ID=@Bolum_ID">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="Bolum_ID"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView runat="server" DataSourceID="SqlDataSource2" ID="bolum2" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Pers_ID" OnSelectedIndexChanged="ctl03_SelectedIndexChanged" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="Pers_ID" HeaderText="Pers_ID" ReadOnly="True" InsertVisible="False" SortExpression="Pers_ID"></asp:BoundField>
                <asp:BoundField DataField="Pers_Adi" HeaderText="Pers_Adi" SortExpression="Pers_Adi"></asp:BoundField>
                <asp:BoundField DataField="Pers_Giris_Tarihi" HeaderText="Pers_Giris_Tarihi" SortExpression="Pers_Giris_Tarihi"></asp:BoundField>
                <asp:BoundField DataField="Pers_Ilcesi" HeaderText="Pers_Ilcesi" SortExpression="Pers_Ilcesi"></asp:BoundField>
                <asp:BoundField DataField="Pers_Tel" HeaderText="Pers_Tel" SortExpression="Pers_Tel"></asp:BoundField>
                <asp:BoundField DataField="Pers_Cep" HeaderText="Pers_Cep" SortExpression="Pers_Cep"></asp:BoundField>
                <asp:BoundField DataField="Pers_Email" HeaderText="Pers_Email" SortExpression="Pers_Email"></asp:BoundField>
                <asp:BoundField DataField="Bolum_ID" HeaderText="Bolum_ID" SortExpression="Bolum_ID"></asp:BoundField>
                <asp:BoundField DataField="Unvan_ID" HeaderText="Unvan_ID" SortExpression="Unvan_ID"></asp:BoundField>
                <asp:BoundField DataField="Pers_Aktif_Mi" HeaderText="Pers_Aktif_Mi" SortExpression="Pers_Aktif_Mi"></asp:BoundField>
            </Columns>
        </asp:GridView>
                     
        <br />
               <p>
                       <a href="Raporlar.aspx"
<button type="button" class="btn btn-primary">Formu Kapat</button>   
                 </a>        
 </p>
        <div>
        </div>
    </form>
</body>
</html>
