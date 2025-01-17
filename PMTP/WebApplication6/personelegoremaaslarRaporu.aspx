<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personelegoremaaslarRaporu.aspx.cs" Inherits="WebApplication6.personelegoremaaslarRaporu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Personele Göre Maaşlar Raporu</title>
</head>
<body>
    

    <style>
    div{
        margin-left:10px;
    }
</style>


    <h1>Personele Göre Maaşlar Raporu</h1>
     <hr>
    <form id="form1" runat="server">
 <div>
     <p></p>
        Personel Seçiniz 
        <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="Pers_Adi" DataValueField="Pers_ID" DataSourceID="SqlDataSource1" AutoPostBack="True"></asp:DropDownList>
       </p>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Maas_ID" DataSourceID="SqlDataSource2" AllowSorting="True">
         <Columns>
             <asp:BoundField DataField="Maas_ID" HeaderText="Maas_ID" ReadOnly="True" SortExpression="Maas_ID"></asp:BoundField>
             <asp:BoundField DataField="Maas_Tarihi" HeaderText="Maas_Tarihi" SortExpression="Maas_Tarihi"></asp:BoundField>
             <asp:BoundField DataField="Maas_Tutari" HeaderText="Maas_Tutari" SortExpression="Maas_Tutari"></asp:BoundField>
             <asp:BoundField DataField="Maas_Komisyonu" HeaderText="Maas_Komisyonu" SortExpression="Maas_Komisyonu"></asp:BoundField>
             <asp:BoundField DataField="Maas_Toplam" HeaderText="Maas_Toplam" SortExpression="Maas_Toplam"></asp:BoundField>
             <asp:BoundField DataField="Maas_Yili" HeaderText="Maas_Yili" SortExpression="Maas_Yili"></asp:BoundField>
         </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT [Pers_ID], [Pers_Adi] FROM [tbl_Personeller]"></asp:SqlDataSource>
     
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT [Pers_ID], [Maas_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Maas_Toplam], [Ay_ID], [Maas_Yili] FROM [tbl_Maaslar]
WHERE Pers_ID=@Pers_ID">
         <SelectParameters>
             <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="Pers_ID"></asp:ControlParameter>
         </SelectParameters>
     </asp:SqlDataSource>
     <br/>

                              <div class="btn">                                           
        <p>
                       <a href="raporlar.aspx"
<button type="button" class="btn btn-primary">Formu Kapat</button>   
                 </a>          
 </p>
       </div> 

     </body>
     </form>
    </div>