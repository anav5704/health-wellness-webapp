<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Feedback.aspx.vb" Inherits="health_wellness_webapp.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Best Health | Feedback</title>
    <meta name="description" content=" Send a feedback of your experience." />
    <meta property="og:title" content="Best Health | Feedback" />
    <meta property="og:description" content=" Send a feedback of your experience." />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Feedback</h1>
    <p class ="subtitle">Please do share your experience with us. This will help us improve our user experience and services.</p>
    <br />
    <asp:Panel ID="pnlFeedback" CssClass="feedbackForm" runat="server">
        <asp:Label ID="lblMessage" runat="server" Text="Message"></asp:Label>
        <asp:TextBox ID="txtMessage" runat="server" Rows="8" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator Display="Dynamic" ID="rfvMessage" runat="server" ControlToValidate="txtMessage" ErrorMessage="Feedback is required." CssClass="error" />
        <asp:Button CssClass="primary-button" ID="btnFeedback" runat="server" Text="Send Feedback" />
        <asp:Label ID="lblConfirmation" runat="server" />
    </asp:Panel>
    <asp:AccessDataSource ID="adsFeedback" runat="server" DataFile="~/App_Data/Webapp.accdb"
        InsertCommand="INSERT INTO Feedback ([User_Id], [Feedback_Message]) VALUES (?, ?)">
    <InsertParameters>
        <asp:Parameter Name="User_Id" Type="Int32" />
        <asp:Parameter Name="Feedback_Message" Type="String" />
    </InsertParameters>
</asp:AccessDataSource>
</asp:Content>
