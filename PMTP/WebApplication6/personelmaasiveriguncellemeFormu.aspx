<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personelmaasiveriguncellemeFormu.aspx.cs" Inherits="WebApplication6.personelmaasiveriguncellemeFormu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
             <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Personel Maaşı Veri Güncelleme Formu</title>
</head>    

<body>
    <style>
    div{
        margin-left:10px;
    }
</style>

    <form id="form1" runat="server">

<div>
    <h1>Personel Maaşı Veri Güncelleme Formu</h1>
     <hr>
      <p>
  Personel Seçiniz
      </p>
<p>
  <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="Pers_Adi" DataValueField="Pers_ID" DataSourceID="data1" AutoPostBack="True">
  </asp:DropDownList>
        </p>
    <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT [Pers_ID], [Pers_Adi] FROM [tbl_Personeller]" ID="data1"></asp:SqlDataSource>

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="data7">
        <Fields>
                <asp:CommandField ShowEditButton="True"></asp:CommandField>
            </Fields>
        </asp:DetailsView>

    <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT Maas_ID, Pers_ID, Maas_Tarihi, Maas_Tutari, Maas_Komisyonu, Maas_Toplam, Ay_ID, Maas_Yili FROM tbl_Maaslar
WHERE Pers_ID=@Pers_ID"
        ID="data7" UpdateCommand="UPDATE tbl_Maaslar SET Pers_ID = @Pers_ID, Maas_Tarihi = @Maas_Tarihi, Maas_Tutari = @Maas_Tutari, Maas_Komisyonu = @Maas_Komisyonu, Ay_ID = @Ay_ID, Maas_Toplam = @Maas_Toplam, Maas_Yili = @Maas_Yili WHERE (Pers_ID = @Pers_ID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="Pers_ID"></asp:ControlParameter>
                </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Pers_ID"></asp:Parameter>
            <asp:Parameter Name="Maas_Tarihi"></asp:Parameter>
            <asp:Parameter Name="Maas_Tutari"></asp:Parameter>
            <asp:Parameter Name="Maas_Komisyonu"></asp:Parameter>
            <asp:Parameter Name="Ay_ID"></asp:Parameter>
            <asp:Parameter Name="Maas_Toplam"></asp:Parameter>
            <asp:Parameter Name="Maas_Yili"></asp:Parameter>
            </UpdateParameters>
    </asp:SqlDataSource>          

        <br />

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
