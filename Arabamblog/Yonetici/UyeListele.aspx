<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetici/Yonetici.Master" AutoEventWireup="true" CodeBehind="UyeListele.aspx.cs" Inherits="Arabamblog.Yonetici.UyeListele" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/FormDesign.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formContainer">
        <div class="formtitle">
            <h3>Üyeler</h3>
        </div>
        <div class="formContent contenttable">
            <asp:Panel ID="pnl_basarisiz" runat="server" CssClass="basarisizMesaj" Visible="false">
                <asp:Label ID="lbl_mesaj" runat ="server"></asp:Label>
            </asp:Panel>
            <asp:ListView ID="lv_uyeler" runat="server" OnItemCommand="lv_uyeler_ItemCommand">
                <LayoutTemplate>
                    <table class="listTable"  cellspacing="0" cellpadding="0">
                        <tr>
                                <th>ID</th>
                                <th>Isim</th>
                                <th>KullaniciAdi</th>
                                <th>Email</th>
                                <th>UyelikTarihi</th>
                                <th>Durum</th>   
                                <th>Seçenekler</th>   
                           </tr>
                        <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
                    </table>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("ID") %></td>
                        <td><%# Eval("Isim") %></td>
                        <td><%# Eval("KullaniciAdi") %></td>
                        <td><%# Eval("Email") %></td>
                        <td><%# Eval("UyelikTarihi") %></td>
                        <td><%# Eval("Durum") %></td>
                        <td>
                            <asp:LinkButton ID="lbtn_durumdeğiştir" runat="server" CommandName="durum" CommandArgument='<%# Eval("ID") %>' CssClass="tablebutton status">Durum Değiştir</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>
