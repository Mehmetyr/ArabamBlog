<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetici/Yonetici.Master" AutoEventWireup="true" CodeBehind="MarkaListele.aspx.cs" Inherits="Arabamblog.Yonetici.MarkaListele" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/FormDesign.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formContainer">
        <div class="formtitle">
            <h3>Markalar</h3>
        </div>
        <div class="formContent contenttable">
            <asp:Panel ID="pnl_basarisiz" runat="server" CssClass="basarisizMesaj" Visible="false">
                <asp:Label ID="lbl_mesaj" runat="server"></asp:Label>
            </asp:Panel>
            <asp:ListView ID="lv_markalar" runat="server" OnItemCommand="lv_markalar_ItemCommand1">
                <LayoutTemplate>
                    <table class="listTable" cellspancing="0" cellpadding="0">
                        <tr>
                            <th>ID</th>
                            <th>Isim</th>
                            <th>Seçenekler</th>
                            
                        </tr>
                        <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
                    </table>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                       <td><%# Eval("ID") %></td>
                       <td><%# Eval("Isim") %></td>
                       <td>
                           <a href='MarkaGuncelle.aspx?kid=<%# Eval("ID") %>' class="tablebutton update">Güncelle</a>
                           <asp:LinkButton ID="lbtn_sil" runat="server" CommandName="sil" CommandArgument='<%# Eval("ID") %>' CssClass="tablebutton delete">Sil</asp:LinkButton>
                       </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>
