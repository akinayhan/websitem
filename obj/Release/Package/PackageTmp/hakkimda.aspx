<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="hakkimda.aspx.cs" Inherits="websitem.hakkimda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
            1994 yılında Bursa' da doğdum. <br /><br />
        İlk, orta ve lise öğrenimlerimi Bursa' da tamamladım. <br /><br />
        Üniversite'yi Eskişehir Osmangazi Üniversitesinde okuyorum.<br /><br />
        Matematik ve Bilgisayar bölümü öğrencisiyim. <br /><br />
        Aşağıdaki simgelere tıklayarak sosyal medya hesaplarıma ulaşabilir ve benim hakkımda daha fazla bilgiye sahip olabilirsiniz.
    </div>

    <br /><br /><br />

    <div>
        <asp:ImageButton ID="btnface" runat="server" ImageUrl="~/resim/face.jpg" OnClick="btnface_Click" />
    </div>

    <br />

    <div>
        <asp:ImageButton ID="btnins" runat="server" ImageUrl="~/resim/ins.jpg" OnClick="btnins_Click" />
    </div>

    <br />

    <div>
        <asp:ImageButton ID="btntwit" runat="server" ImageUrl="~/resim/twit.jpg" OnClick="btntwit_Click" />
    </div>

    <br />

    <div>
        <asp:ImageButton ID="btnytb" runat="server" ImageUrl="~/resim/ytb.jpg" OnClick="btnytb_Click" />
    </div>

    <br />

</asp:Content>
