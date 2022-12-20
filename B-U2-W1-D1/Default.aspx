<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="B_U2_W1_D1.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container p-5">
        <asp:GridView ID="GridView_Dipendenti" ItemType="B_U2_W1_D1.Dipendente" AutoGenerateColumns="false"  CssClass="table table-bordered table-striped table-light" runat="server">
          <Columns>

                <asp:TemplateField HeaderText="Nome">
                    <ItemTemplate>
                        <p class="ps-2"><%#Item.Nome %></p>
                    </ItemTemplate>              
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Cognome">
                    <asp:ItemTemplate>
                        <p class="ps-2"><%#Item.Cognome %></p>
                    </asp:ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Indirizzo">
                    <asp:ItemTemplate>
                        <p class="ps-2"><%#Item.Indirizzo %></p>
                    </asp:ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Codice Fiscale">
                    <asp:ItemTemplate>
                        <p class="ps-2"><%#Item.CodiceFiscale %></p>
                    </asp:ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Coniugato">
                    <asp:ItemTemplate>
                        <p><%#Item.Coniugato %></p>
                    </asp:ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Numero di Figli A Carico">
                    <asp:ItemTemplate>
                        <p class="ps-2"><%#Item.NumFigliCarico %></p>
                    </asp:ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Mansione">
                    <asp:ItemTemplate>
                        <p class="ps-2"><%#Item.Mansione %></p>
                    </asp:ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
