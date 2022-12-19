<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="B_U2_W1_D1.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <asp:GridView ID="GridView_Dipendenti" ItemType="B_U2_W1_D1.Dipendente" CssClass="table table-bordered table-striped table-light" runat="server" AutoGenerateColumns="false" >
            <Columns>
                <asp:TemplateField HeaderText="">
                    <p></p>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
