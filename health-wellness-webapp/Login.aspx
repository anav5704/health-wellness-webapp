<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Login.aspx.vb" Inherits="health_wellness_webapp.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset>
         <legend>Credientials.</legend>

         <label for="txtEmail">Email:</label>
        <asp:TextBox ID="txtEmail" runat="server" />
        <asp:RequiredFieldValidator ID="rfvLoginEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." />

         <label for="txtPassword">Password:</label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
        <asp:RequiredFieldValidator ID="rfvLoginPasswrd" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." />

        <asp:Button ID="btnLogin" runat="server" Text="Login" />

        <asp:Label ID="lblMessage" runat="server" />

        <p>Don't have an account? <asp:HyperLink ID="hlSignup" runat="server" NavigateUrl="Signup.aspx">Sign Up</asp:HyperLink></p>
    </fieldset>

    <asp:AccessDataSource ID="adsUsers" runat="server" DataFile="~/App_Data/Webapp.accdb"  
        SelectCommand="SELECT [User_Email], [User_Password], [User_Role] FROM [User] WHERE [User_Email] = ?"
    >
       <SelectParameters>
           <asp:Parameter Name="User_Email" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
</asp:Content>
