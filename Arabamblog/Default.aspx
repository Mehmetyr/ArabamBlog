<%@ Page Title="" Language="C#" MasterPageFile="~/MaterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Arabamblog.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/MainStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="lv_makaleler" runat="server">
        <LayoutTemplate>
            <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>
        <ItemTemplate>
            <div class="arthicle">
                <div class="title">
                    <h2><%# Eval("Baslik") %></h2>
                </div>
                <div class="image">
                    <img src='MakaleResimleri/<%# Eval("KapakResim") %>' />
                </div>
                <div class="subcontent">
                    Kategori: <%# Eval("Kategori") %> <br />
                    Yazar :  <%# Eval("Yazar") %>
                </div>
                <div class="summary">
                    <%# Eval("Ozet") %>
                </div>
                <div class="button">
                    <a href="MakaleDetay.aspx?mid= <%# Eval("ID") %>">Makalenin Devamı</a>
                </div>
            </div>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>