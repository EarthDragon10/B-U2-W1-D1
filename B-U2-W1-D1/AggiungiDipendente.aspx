<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AggiungiDipendente.aspx.cs" Inherits="B_U2_W1_D1.AggiungiDipendente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container mt-3">
            <div>
                <asp:TextBox ID="TEXTBOX_Nomea" CssClass="form-control mt-1" placeholder="Marca" runat="server"></asp:TextBox>
                <asp:TextBox ID="TEXTBOX_Cognome" CssClass="form-control mt-1" placeholder="Modello" runat="server"></asp:TextBox>
                <asp:TextBox ID="TEXTBOX_Indirizzo" CssClass="form-control mt-1" placeholder="Descrizione" runat="server"></asp:TextBox>
                <asp:TextBox ID="TEXTBOX_CodiceFiscale" CssClass="form-control mt-1" placeholder="Prezzo Vendita" runat="server"></asp:TextBox>              
                <asp:CheckBox ID="CheckBox_Coniugato"  AutoPostBack="true" Checked="false" Text="Sei Coniugato?" runat="server" />
                
            </div>
    </div>
</asp:Content>
