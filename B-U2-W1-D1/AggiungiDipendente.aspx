<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AggiungiDipendente.aspx.cs" Inherits="B_U2_W1_D1.AggiungiDipendente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container mt-3">
            <div>
                <asp:TextBox ID="TEXTBOX_Nome" CssClass="form-control mt-1" placeholder="Nome" runat="server"></asp:TextBox>
                <asp:TextBox ID="TEXTBOX_Cognome" CssClass="form-control mt-1" placeholder="Cognome" runat="server"></asp:TextBox>
                <asp:TextBox ID="TEXTBOX_Indirizzo" CssClass="form-control mt-1" placeholder="Indirizzo" runat="server"></asp:TextBox>
                <asp:TextBox ID="TEXTBOX_CodiceFiscale" CssClass="form-control mt-1" placeholder="Codice Fiscale" runat="server"></asp:TextBox>              
                <asp:CheckBox ID="CheckBox_Coniugato"  AutoPostBack="true" Checked="false" Text="Sei Coniugato?" runat="server" />
                <asp:TextBox ID="TEXTBOX_NmFigliCarico" CssClass="form-control mt-1" placeholder="Num. di figli a carico" runat="server"></asp:TextBox>           
                <asp:TextBox ID="TEXTBOX_Mansione" CssClass="form-control mt-1" placeholder="Inserisci la tua mansione" runat="server"></asp:TextBox>           
                <asp:Button Text="Aggiungi Dipendente" CssClass="btn btn-success border-0 rounded-1 mt-3" OnClick="Unnamed_Click" runat="server" />
                <asp:Label ID="Mex_Error" runat="server" Text="" />
              </div>
    </div>
</asp:Content>
