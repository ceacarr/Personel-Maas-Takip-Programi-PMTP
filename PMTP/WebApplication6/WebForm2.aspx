<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm2.aspx.cs" Inherits="WebApplication6.WebForm2" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
 
    <title>Yıllık Personel Maaş Toplamları Grafiği</title>
</head>
    <style>
        body{
            margin-left:10px;
        }
    </style>
    <body>
    <form id="form1" runat="server">
        <body>
        <h1>Yıllık Personel Maaş Toplamları Grafiği</h1> 
        <hr>

        <p>
            Yıl Seçiniz 
                 <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataTextField="Maas_Yili" DataValueField="Maas_Yili" DataSourceID="SqlDataSource1" ></asp:DropDownList>
                     </p>    
 
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT Maas_Yili FROM tbl_Maaslar GROUP BY Maas_Yili"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_PMTPConnectionString %>" SelectCommand="SELECT [Pers_Adi], [Maas_Toplam], [Maas_Yili] FROM [View_personelmaaslaritaoplami] WHERE ([Maas_Yili] = @Maas_Yili)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="Maas_Yili" Type="Int32"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>

    <div class="container">
        
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2" Height="400px" Width="600px" BackColor="Transparent" CssClass="container" AntiAliasing="Text" BackImageWrapMode="Tile" BorderSkin-BackColor="White">
            <Series>
                <asp:Series Name="Series1" XValueMember="Pers_Adi" YValueMembers="Maas_Toplam" ChartType="Column"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
         </form>
        </div>
        <br/>

            <p>
                       <a href="Raporlar.aspx"
<button type="button" class="btn btn-primary">Formu Kapat</button>   
                 </a>        
 </p>
    
  
</body>
</html>
