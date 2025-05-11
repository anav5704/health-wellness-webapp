<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Login.aspx.vb" Inherits="health_wellness_webapp.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="txtEmail" runat="server" />
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
    <asp:Label ID="lblMessage" runat="server"  />
    <asp:AccessDataSource ID="adsUsers" runat="server" DataFile="~/App_Data/Webapp.accdb"  
        SelectCommand="SELECT [User_Id], [User_Email], [User_Role] FROM [User] WHERE [User_Email] = ? AND [User_Password] = ?"
    >
       <SelectParameters>
            <asp:ControlParameter Name="User_Email" ControlID="txtEmail" PropertyName="Text" />
            <asp:ControlParameter Name="User_Password" ControlID="txtPassword" PropertyName="Text" />
        </SelectParameters>
    </asp:AccessDataSource>
</asp:Content>
