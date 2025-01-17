<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Formlar.aspx.cs" Inherits="WebApplication6.Formlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <body>

        <form id="form2" runat="server">
              <link href="https://fonts.googleapis.com/css?family=Nunito:200,300,400,700" rel="stylesheet">
       
        <h1>PMTP Formları</h1>
              <hr>

            <div class="buttons-wrapper">

            <a href="personelverigirisFormu.aspx" target="_blank">
    <button type="button">Personel Veri Giris Formu</button>
</a>

                        <a href="personelmaasiverigirisFormu.aspx" target="_blank">
    <button type="button">Personel Maaşı Veri Giris Formu</button>
</a>

                       <a href="personelveriguncellemeFormu.aspx" target="_self">
    <button type="button">Personel Veri Güncelleme Formu</button>
</a>

                       <a href="personelmaasiveriguncellemeFormu.aspx" target="_self">
    <button type="button">Personel Maaşı Veri Güncelleme Formu</button>
</a>

                       <a href="bolumverigirisFormu.aspx" target="_blank">
    <button type="button">Bölüm Veri Giris Formu</button>
</a>

                       <a href="bolumveriguncellemeFormu.aspx" target="_self">
    <button type="button">Bölüm Veri Güncelleme Formu</button>
</a>
             
    </div>
           
            <img class="center" src="img/37bd94aa89df712e400ce0123b22d9e6.jpg" />          

      <p id="p">PMTP ile firmanızdaki tüm iş süreçlerinizi çalışanlarınız ile birlikte uyum içerisinde tek platform da,
       farklı yazılımlar kullanmanıza gerek kalmadan yönetebilirsiniz.</p>
            
    </form>
    </body>
</asp:Content>
