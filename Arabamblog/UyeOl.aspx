<%@ Page Title="" Language="C#" MasterPageFile="~/MaterPage.Master" AutoEventWireup="true" CodeBehind="UyeOl.aspx.cs" Inherits="Arabamblog.UyeOl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Yonetici/Css/FormDesign.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formContainer">
        <div class="formtitle"> 
            <h3>Üye OL</h3>
        </div>
        <div class="formContent">
            <asp:Panel ID="pnl_basarili" runat="server" CssClass="basariliMesaj" Visible="false">
                <label>Üye Olma İşlemi Başarıyla Gerçekleştirildi</label>
            </asp:Panel>
            <asp:Panel ID="pnl_basarisiz" runat="server" CssClass="basarisizMesaj" Visible="false">
                <asp:Label ID="lbl_mesaj" runat="server"></asp:Label>
            </asp:Panel>
             <div style="width:650px; float:left">
                  <div class="row">
                    <label>İsim</label><br />
                    <asp:TextBox ID="tb_isim" runat="server" CssClass="formInput"></asp:TextBox>
                </div>
                  <div class="row">
                    <label>Soyisim</label><br />
                    <asp:TextBox ID="tb_soyisim" runat="server" CssClass="formInput"></asp:TextBox>
                </div>
                  <div class="row">
                    <label>Kullanıcı Adı</label><br />
                    <asp:TextBox ID="tb_kullaniciadi" runat="server" CssClass="formInput"></asp:TextBox>
                </div>
                 <div class="row">
                    <label>Email</label><br />
                    <asp:TextBox ID="tb_email" runat="server" CssClass="formInput"></asp:TextBox>
                </div>
                  <div class="row">
                    <label>Şifre</label><br />
                    <asp:TextBox ID="tb_sifre" runat="server" CssClass="formInput"></asp:TextBox>
                </div>
                  </div>
                 <div class="row" style="clear:both">
                <asp:LinkButton ID="lbtn_ekle" runat="server" OnClick="lbtn_ekle_Click" CssClass="formButton">Üye Ol</asp:LinkButton>
            </div>
        </div>
    </div>
</asp:Content>
