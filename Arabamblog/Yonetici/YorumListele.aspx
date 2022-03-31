<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetici/Yonetici.Master" AutoEventWireup="true" CodeBehind="YorumListele.aspx.cs" Inherits="Arabamblog.Yonetici.YorumListele" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/FormDesign.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="formContainer">
        <div class="formtitle">
            <h3>Yorumlar</h3>
        </div>
        <div class="formContent contenttable">
            <asp:Panel ID="pnl_basarisiz" runat="server" CssClass="basarisizMesaj" Visible="false">
                <asp:Label ID="lbl_mesaj" runat="server" ></asp:Label>
            </asp:Panel>
            <asp:ListView ID="lv_yorumlar" runat="server" OnItemCommand="lv_yorumlar_ItemCommand">
                <LayoutTemplate>
                    <table class="listTable"  cellspacing="0" cellpadding="0">
                           <tr>
                                <th>ID</th>
                                <th>Üye_ID</th>
                                <th>Üye</th>
                                <th>Makale_ID</th>
                                <th>Baslık</th>
                                <th>İçerik</th>
                                <th>Tarih</th> 
                                <th>Durum</th> 
                                <th>Seçenekler</th>   
                           </tr> 
                        <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
                    </table>
                </LayoutTemplate>
                <ItemTemplate>
                     <tr>
                        
                        <td><%# Eval("ID") %></td>
                        <td><%# Eval("UyeID") %></td>
                        <td><%# Eval("Uye") %></td>
                        <td><%# Eval("MakaleID") %></td>
                        <td><%# Eval("Baslik") %></td>
                        <td><%# Eval("Icerik") %></td>
                        <td><%# Eval("Tarih") %></td>
                        <td><%# Eval("Durum") %></td>
                         <td>
                             <asp:LinkButton ID="lbtn_durumdegistir" runat="server" CommandName="durum" CommandArgument='<%# Eval("ID") %>' CssClass="tablebutton status">Durum Değiştir</asp:LinkButton>
                         </td>
                        </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>
