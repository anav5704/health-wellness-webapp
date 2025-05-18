<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Booking.aspx.vb" Inherits="health_wellness_webapp.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:RadioButtonList ID="rblTherapists" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table">
        <asp:ListItem Value="therapist1">
        <img src="/images/Therapist1.jpg" alt="Therapist 1" width="150" />
        </asp:ListItem>
        <asp:ListItem Value="therapist2">
        <img src="therapist2.jpg" alt="Therapist 2" width="150" />
        </asp:ListItem>
        <asp:ListItem Value="therapist3">
        <img src="therapist3.jpg" alt="Therapist 3" width="150" />
        </asp:ListItem>
    </asp:RadioButtonList>


</asp:Content>
