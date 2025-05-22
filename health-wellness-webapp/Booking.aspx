<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Booking.aspx.vb" Inherits="health_wellness_webapp.Booking2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:AccessDataSource ID="adsGetUser" runat="server" DataFile="~/App_Data/Webapp.accdb" SelectCommand="SELECT User_Id FROM [User] WHERE User_Email = ?">
        <SelectParameters>
            <asp:SessionParameter Name="User_Email" SessionField="User_Email" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>

    <h1>Booking</h1>

    <h3 class="Title">Therapist</h3>
    <section class="therapist-select">
        <asp:Panel ID="TherapistJohnDoe" CssClass="therapist" runat="server">
            <asp:Image ID="ImgJohnDoe" ImageUrl="/images/Therapist1.jpg" alt="John Doe" runat="server" />
            <asp:Label ID="LblJohnDoe" Text="John Doe" runat="server" />
            <asp:Label ID="LblPrice" Text="$800.00/Session" runat="server" />
            <asp:Image ID="ImageJameSmith" ImageUrl="/images/therapist2.jpg" alt="Jame Smith" runat="server" />
            <asp:Label ID="LblJameSmith" Text="Jame Smith" runat="server" />
            <asp:Label ID="Label2" Text="$800.00/Session" runat="server" />
            <asp:Image ID="ImageCharlesDow" ImageUrl="/images/therapist3.jpg" alt="Charles Dow" runat="server" />
            <asp:Label ID="LblCharlesDow" Text="Charles Dow" runat="server" />
            <asp:Label ID="Label3" Text="$800.00/Session" runat="server" />
            <asp:Image ID="ImageEmilyJones" ImageUrl="/images/therapist4.jpg" alt="Emily Jones" runat="server" />
            <asp:Label ID="LblEmilyJones" Text="Emily Jones" runat="server" />
            <asp:Label ID="Label4" Text="$800.00/Session" runat="server" />
        </asp:Panel>
    </section>
    <h5>*Each session lasts 60 minutes</h5>


    <asp:DropDownList ID="ddlTherapists" runat="server" DataSourceID="adsTherapists" DataTextField="Name" DataValueField="Therapist_ID" AutoPostBack="False" AppendDataBoundItems="true" CssClass="dropdownlist">
        <asp:ListItem Value=""></asp:ListItem>
    </asp:DropDownList>

    <asp:AccessDataSource ID="adsTherapists" runat="server"
        DataFile="~/App_Data/Webapp.accdb"
        SelectCommand="SELECT Name, Therapist_Id FROM [Therapist]"></asp:AccessDataSource>
    <asp:RequiredFieldValidator Display="Dynamic" ID="rfvTherapist" runat="server" ControlToValidate="ddlTherapists" ErrorMessage="Choose a therapist." CssClass="error"  />


    <h3 class="Title">Time Slot</h3>


    <asp:DropDownList ID="ddlTimeSlots" runat="server" DataSourceID="xdsTimeSlots" DataTextField="value" CssClass="dropdownlist">
    </asp:DropDownList>
    <asp:XmlDataSource ID="xdsTimeSlots" runat="server" DataFile="~/App_Data/TimeSlots.xml"></asp:XmlDataSource>
    <asp:RequiredFieldValidator Display="Dynamic" ID="rfvTimeSlot" runat="server" ControlToValidate="ddlTimeSlots" ErrorMessage="Choose a time slot." CssClass="error"  />

    <asp:AccessDataSource ID="adsCheckBooking" runat="server" DataFile="~/App_Data/Webapp.accdb" SelectCommand="SELECT Booking_ID FROM Booking WHERE Therapist_Id = ? AND Booking_Time = ?">
        <SelectParameters>
            <asp:Parameter Name="Therapist_Id" Type="Int32" />
            <asp:Parameter Name="Booking_Time" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>

    <asp:Button ID="btnConfirm" runat="server" Text="Confirm" CssClass="Confirmbutton" CausesValidation="true" />
    <asp:Label ID="LblConfirmation" runat="server"></asp:Label>

    <asp:AccessDataSource ID="adsBooking" runat="server" DataFile="~/App_Data/Webapp.accdb"
        InsertCommand="INSERT INTO Booking ([User_Id], [Therapist_Id] , [Booking_Time]) VALUES (?,?,?)">
        <InsertParameters>
            <asp:SessionParameter Name="User_Id" SessionField="User_Mail" Type="String" />
            <asp:Parameter Name="Therapist_Id" Type="Int32" />
            <asp:Parameter Name="Booking_Time" Type="String" />
        </InsertParameters>
    </asp:AccessDataSource>

</asp:Content>
