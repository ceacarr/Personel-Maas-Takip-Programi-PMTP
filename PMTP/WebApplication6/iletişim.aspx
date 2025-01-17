<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="iletişim.aspx.cs" Inherits="WebApplication6.iletişim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form3" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

         <link href="https://fonts.googleapis.com/css?family=Nunito:200,300,400,700" rel="stylesheet">
    <h1>Bize Ulaşın</h1>
    <hr>
         
        <style>
            p{
                text-align:center;                          
            }
        </style>

        <p>
        <img src="img/images.png" />
      </p>
        <p>Adınız
        <asp:TextBox ID="ad" runat="server"></asp:TextBox>
            </p>
       <p> E-mail 
<asp:TextBox ID="mail" runat="server"></asp:TextBox>
           </p>
       <p> Konu
<asp:TextBox ID="konu" runat="server"></asp:TextBox>

           <p>
           <textarea id="TextArea" cols="80" rows="6" placeholder="Görüş ve öneri yazınız."></textarea>
               </p>
           
       <p>
  <button id="msjgonder" class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample" aria-expanded="false" aria-controls="collapseWidthExample">
    Mesaj Gonder
  </button>
</p>
           
     
<div style="min-height: 120px;">
  <div class="collapse collapse-horizontal" id="collapseWidthExample">
    <div class="card card-body" style="width: 300px;">
     Görüşleriniz bizim için çok önemli teşekkür ederiz.
    </div>
  </div>
</div>
       <h2>İletişim Bilgilerimiz</h2>

        <hr>
<h4> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
  <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1zm13 2.383-4.708 2.825L15 11.105zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741M1 11.105l4.708-2.897L1 5.383z"/>
</svg>  Mail</h4>

 <li>
     Cem Acar 
        20214029070@std.nisantasi.edu.tr
 </li>
        <li>
    Okan Pomen
       20214029028@std.nisantasi.edu.tr
</li>
                <li>
    Alp Arda Kömür
       20224029089@std.nisantasi.edu.tr
</li>
                <li>
    Nesrin Demirerli 
       20224029096@std.nisantasi.edu.tr
</li>
        <br />

        <h4> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone-outbound" viewBox="0 0 16 16">
  <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.6 17.6 0 0 0 4.168 6.608 17.6 17.6 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.68.68 0 0 0-.58-.122l-2.19.547a1.75 1.75 0 0 1-1.657-.459L5.482 8.062a1.75 1.75 0 0 1-.46-1.657l.548-2.19a.68.68 0 0 0-.122-.58zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.68.68 0 0 0 .178.643l2.457 2.457a.68.68 0 0 0 .644.178l2.189-.547a1.75 1.75 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.6 18.6 0 0 1-7.01-4.42 18.6 18.6 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877zM11 .5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-1 0V1.707l-4.146 4.147a.5.5 0 0 1-.708-.708L14.293 1H11.5a.5.5 0 0 1-.5-.5"/>
</svg> Telefon</h4>
            <li>
                0216 000 0001
            </li>
        <h4>Adres</h4>
        <li>
            Maslak Mahalesi, Taşyoncası Sokak, No: 1V ve No:1Y Sarıyer-İSTANBUL  - Bina Kodu : 34481742
        </li>
     
        
        </form>
</asp:Content>
