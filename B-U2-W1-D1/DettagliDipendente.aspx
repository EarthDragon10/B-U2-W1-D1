<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DettagliDipendente.aspx.cs" Inherits="B_U2_W1_D1.DettagliDipendente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Nome</th>
      <th scope="col">Cognome</th>
      <th scope="col">Indirizzo</th>
      <th scope="col">Codice Fiscale</th>
      <th scope="col">Coniugato</th>
      <th scope="col">Num. Di Figli A Carico</th>
      <th scope="col">Mansione</th>
    </tr>
  </thead>
  <tbody>
    <tr>
        <td id="TD_Nomne" runat="server"></td>
        <td id="TD_Cognome" runat="server"></td>
        <td id="TD_Indirizzo" runat="server"></td>
        <td id="TD_CodiceFiscale" runat="server"></td>
        <td id="TD_Coniugato" runat="server"></td>
        <td id="TD_NumFigliCarico" runat="server"></td>
        <td id="TD_Mansione" runat="server"></td>
    </tr>
  
  </tbody>
</table>
</asp:Content>
