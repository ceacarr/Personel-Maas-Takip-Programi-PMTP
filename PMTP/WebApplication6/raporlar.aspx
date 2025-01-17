<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Raporlar.aspx.cs" Inherits="WebApplication6.Raporlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
     <form id="form2" runat="server">
         <h1>PMTP Raporları</h1>
          <body>
         <hr>

            <a href="personeliletisimRaporu.aspx" target="_self">
    <button type="button">Personel Iletişim Raporu</button>
</a>
         

            <a href="personelegoremaaslarRaporu.aspx" target="_self">
    <button type="button">Personele Göre Maaşlar Raporu</button>
</a>
         

            <a href="bolumegorepersonellerRaporu.aspx" target="_self">
    <button type="button">Bölüme Göre Personeller Raporu</button>
</a>
         

            <a href="WebForm2.aspx" target="_self">
    <button type="button">Yıllık Personel Maaşlarının Grafiği</button>
</a>



         <p id="p">PMTP ile firmaların iş süreçlerini her yerden, 
             her zaman ve her cihazdan yönetebilir ve takip edebilirsiniz.</p>
       
           <img src="img/23-tips-to-run-your-business-better-in-2023-.jpg" />
       
     
</body>
           
</form>
</asp:Content>
