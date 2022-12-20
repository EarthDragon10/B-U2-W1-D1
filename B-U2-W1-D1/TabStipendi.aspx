<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TabStipendi.aspx.cs" Inherits="B_U2_W1_D1.TabStipendi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container p-5">
        <asp:GridView ID="GridView_Dipendenti" ItemType="B_U2_W1_D1.Dipendente" AutoGenerateColumns="false"  CssClass="table table-bordered table-striped table-light" runat="server">
          <Columns>

                <asp:TemplateField HeaderText="Nome">
                    <ItemTemplate>
                        <p><%#Item.Nome %></p>
                    </ItemTemplate>              
                </asp:TemplateField>

              <asp:TemplateField HeaderText="Nome2">
                    <ItemTemplate>
                        <p><%#Item.Nome %></p>
                    </ItemTemplate>
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="Indirizzo">
                    <ItemTemplate>
                        <p><%#Item.Indirizzo %></p>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Codice Fiscale">
                    <ItemTemplate>
                        <p><%#Item.CodiceFiscale %></p>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Coniugato">
                    <ItemTemplate>
                        <p><%#Item.Coniugato.ToString() %></p>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Numero di Figli A Carico">
                    <ItemTemplate>
                        <p><%#Item.NumFigliCarico %></p>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Mansione">
                    <ItemTemplate>
                        <p><%#Item.Mansione %></p>
                    </ItemTemplate>
                </asp:TemplateField>

              <asp:TemplateField>
                  <ItemTemplate>
                        <asp:Button CssClass="btn btn-success" runat="server" CommandArgument="<%#Item.ID_Dipendente %>" ID="Btn_Dettagli" Text="Dettagli Dipentente"  OnClick="Btn_Dettagli_Click1"></asp:Button>                      
                   </ItemTemplate>
              </asp:TemplateField>

              <asp:TemplateField>
                  <ItemTemplate>
                        <asp:Button CssClass="btn btn-info" runat="server" CommandArgument="<%#Item.ID_Dipendente %>" ID="Btn_Pagamento" Text="Aggiungi Pagamento"  OnClick="Btn_Dettagli_Click1"></asp:Button>
                   </ItemTemplate>
              </asp:TemplateField>
           
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
