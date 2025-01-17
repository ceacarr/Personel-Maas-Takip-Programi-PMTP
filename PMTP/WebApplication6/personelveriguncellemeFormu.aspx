<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personelveriguncellemeFormu.aspx.cs" Inherits="WebApplication6.personelveriguncellemeFormu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" aria-grabbed="undefined" aria-hidden="False">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/> 
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
       
</head>  
    
     <form id="form1" runat="server">
    <title>Personel Veri Güncelleme Formu</title>
  
 <h1>Personel Veri Güncelleme Formu </h1>
          <style>
     div{
         margin-left:10px;
     }
 </style>
             
         <body>
             <div>
        <hr>
         <p>
         Personel Seçiniz
             </p>
       <p>
         <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="Pers_Adi" DataValueField="Pers_ID" DataSourceID="data1" AutoPostBack="True">
         </asp:DropDownList>
               </p>
                 <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT [Pers_ID], [Pers_Adi] FROM [tbl_Personeller]" ID="data1"></asp:SqlDataSource>
             <asp:DetailsView runat="server" Width="125px" Height="50px" DataSourceID="ctl05" ID="data3" AutoGenerateRows="False" DataKeyNames="Pers_ID" AllowPaging="True" BorderColor="#CCCCCC">
             <fields>
                 <asp:BoundField DataField="Pers_ID" HeaderText="Pers_ID" ReadOnly="True" InsertVisible="False" SortExpression="Pers_ID"></asp:BoundField>
                 <asp:BoundField DataField="Pers_Adi" HeaderText="Pers_Adi" SortExpression="Pers_Adi"></asp:BoundField>
                 <asp:BoundField DataField="Pers_Soyadi" HeaderText="Pers_Soyadi" SortExpression="Pers_Soyadi"></asp:BoundField>
                 <asp:BoundField DataField="Pers_DTarihi" HeaderText="Pers_DTarihi" SortExpression="Pers_DTarihi"></asp:BoundField>
                 <asp:BoundField DataField="Pers_Giris_Tarihi" HeaderText="Pers_Giris_Tarihi" SortExpression="Pers_Giris_Tarihi"></asp:BoundField>
                 <asp:BoundField DataField="Pers_Cikis_Tarihi" HeaderText="Pers_Cikis_Tarihi" SortExpression="Pers_Cikis_Tarihi"></asp:BoundField>
                 <asp:BoundField DataField="Pers_Adresi" HeaderText="Pers_Adresi" SortExpression="Pers_Adresi"></asp:BoundField>
                 <asp:BoundField DataField="Pers_Ilcesi" HeaderText="Pers_Ilcesi" SortExpression="Pers_Ilcesi"></asp:BoundField>
                 <asp:BoundField DataField="Pers_ILi" HeaderText="Pers_ILi" SortExpression="Pers_ILi"></asp:BoundField>
                 <asp:BoundField DataField="Pers_Email" HeaderText="Pers_Email" SortExpression="Pers_Email"></asp:BoundField>
                 <asp:BoundField DataField="Pers_Tel" HeaderText="Pers_Tel" SortExpression="Pers_Tel"></asp:BoundField>
                 <asp:BoundField DataField="Pers_Cep" HeaderText="Pers_Cep" SortExpression="Pers_Cep"></asp:BoundField>
                 <asp:BoundField DataField="Unvan_ID" HeaderText="Unvan_ID" SortExpression="Unvan_ID"></asp:BoundField>
                 <asp:BoundField DataField="Bolum_ID" HeaderText="Bolum_ID" SortExpression="Bolum_ID"></asp:BoundField>
                 <asp:BoundField DataField="Pers_Maas" HeaderText="Pers_Maas" SortExpression="Pers_Maas"></asp:BoundField>
                 <asp:BoundField DataField="Pers_Aktif_Mi" HeaderText="Pers_Aktif_Mi" SortExpression="Pers_Aktif_Mi"></asp:BoundField>
                   <asp:BoundField DataField="Pers_IL_Kodu" HeaderText="Pers_IL_Kodu" SortExpression="Pers_IL_Kodu"></asp:BoundField>
                           <asp:BoundField DataField="Pers_SGK_No" HeaderText="Pers_SGK_No" SortExpression="Pers_SGK_No"></asp:BoundField>
                  <asp:BoundField DataField="Son_Kayit_Tarihi" HeaderText="Son_Kayit_Tarihi" SortExpression="Son_Kayit_Tarihi"></asp:BoundField>
                 <asp:CommandField ShowEditButton="True"></asp:CommandField>
             </fields>
         </asp:DetailsView>
                 <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT [Pers_ID], [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Giris_Tarihi], [Pers_Cikis_Tarihi], [Pers_Adresi], [Pers_Ilcesi], [Pers_ILi], [Pers_Email], [Pers_Tel], [Pers_Cep], [Unvan_ID], [Bolum_ID], [Pers_Maas], [Pers_SGK_No], [Pers_Aktif_Mi] , [Pers_IL_Kodu], [Son_Kayit_Tarihi] FROM [tbl_Personeller]
WHERE Pers_ID=@Pers_ID"
                     ID="ctl05" UpdateCommand="UPDATE tbl_Personeller SET Pers_Adi = @Pers_Adi, Pers_Soyadi = @Pers_Soyadi, Pers_DTarihi = @Pers_DTarihi, Pers_Giris_Tarihi = @Pers_Giris_Tarihi, Pers_Cikis_Tarihi = @Pers_Cikis_Tarihi, Pers_Adresi = @Pers_Adresi, Pers_Ilcesi = @Pers_Ilcesi, Pers_ILi = @Pers_ILi, Pers_IL_Kodu = @Pers_IL_Kodu, Pers_Tel = @Pers_Tel, Pers_Cep = @Pers_Cep, Pers_Email = @Pers_Email, Bolum_ID = @Bolum_ID, Unvan_ID = @Unvan_ID, Pers_Maas = @Pers_Maas, Pers_Komisyon_Yuzdesi = @Pers_Komisyon_Yuzdesi, Pers_TC_No = @Pers_TC_No, Pers_SGK_No = @Pers_SGK_No, Kayit_Tarihi = @Kayit_Tarihi, Son_Kaydeden = @Son_Kaydeden, Son_Kayit_Tarihi = @Son_Kayit_Tarihi, Pers_Aktif_Mi = @Pers_Aktif_Mi
WHERE Pers_ID=@Pers_ID">
             <selectparameters>
                 <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="Pers_ID"></asp:ControlParameter>
             </selectparameters>
             <updateparameters>
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
                 <asp:Parameter Name="Unvan_ID"></asp:Parameter>
                 <asp:Parameter Name="Pers_Maas"></asp:Parameter>
                 <asp:Parameter Name="Pers_Komisyon_Yuzdesi"></asp:Parameter>
             <asp:Parameter Name="Pers_TC_No"></asp:Parameter>
<asp:Parameter Name="Pers_SGK_No"></asp:Parameter>
<asp:Parameter Name="Kayit_Tarihi"></asp:Parameter>
<asp:Parameter Name="Son_Kaydeden"></asp:Parameter>
<asp:Parameter Name="Son_Kayit_Tarihi"></asp:Parameter>
<asp:Parameter Name="Pers_Aktif_Mi"></asp:Parameter>
                 <asp:Parameter Name="Pers_ID"></asp:Parameter>
             </updateparameters>
         </asp:SqlDataSource>

             <div class="btn">                                           
        <p>
                       <a href="Formlar.aspx"
<button type="button" class="btn btn-primary">Formu Kapat</button>   
                 </a>          
 </p>
       </div> 
       </div>
     </form>
</body>
</html>
