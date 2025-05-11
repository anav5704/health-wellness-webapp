<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Signup.aspx.vb" Inherits="health_wellness_webapp.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:TextBox ID="txtEmail" runat="server" />
     <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
     <asp:Button ID="btnSignup" runat="server" Text="Sign Up" OnClick="btnSignup_Click" />
     <asp:Label ID="lblMessage" runat="server"  />
     <asp:AccessDataSource ID="adsUsers" runat="server" DataFile="~/App_Data/Webapp.accdb"
         SelectCommand="SELECT [User_Id], [User_Email], [User_Role] FROM [User] WHERE [User_Email] = ?"
         InsertCommand="INSERT INTO [User] ([User_Email], [User_Password], [User_Role]) VALUES (?, ?, ?)"
    >
        <SelectParameters>
            <asp:Parameter Name="User_Email" Type="String" />
        </SelectParameters>
         <InsertParameters>
             <asp:Parameter Name="User_Id" Type="Int32" />
             <asp:Parameter Name="User_Email" Type="String" />
             <asp:Parameter Name="User_Password" Type="String" />
             <asp:Parameter Name="User_Role" Type="String" />
         </InsertParameters>
     </asp:AccessDataSource>
</asp:Content>
