<%@ Page Title="Booking" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Booking.aspx.vb" Inherits="health_wellness_webapp.Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Best Health | New Booking</title>
    <meta name="description" content="Make a new appointment with a therapist to step forward to better mental health" />
    <meta property="og:title" content="Best Health | New Booking" />
    <meta property="og:description" content="Make a new appointment with a therapist to step forward to better mental health" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="top-heading">
        <asp:Label ID="lblBookingType" runat="server" Text=""></asp:Label>
        Booking</h1>

    <p class="subtitle">Make an Appointment with a Therapist to Move Toward a Healthier Mentality.</p>

    <section class="therapists-section">
        <h2 class="booking-title">Therapist</h2>

        <asp:AccessDataSource ID="adsTherapistList" runat="server" DataFile="~/App_Data/Webapp.accdb" SelectCommand=" SELECT Therapist_Id, Therapist_Name, Therapist_ImgUrl, Therapist_Price FROM Therapist"></asp:AccessDataSource>

        <article class="therapist-avatar">
            <asp:Repeater ID="rptTherapists" runat="server" DataSourceID="adsTherapistList">
                <ItemTemplate>
                    <section class="therapist">
                        <img src='<%# Eval("Therapist_ImgUrl") %>' title='<%# Eval("Therapist_Name") %>' alt='<%# Eval("Therapist_Name") %>' loading="lazy" width="100" height="100" />
                        <p><%# Eval("Therapist_Name") %></p>
                        <p>$<%# Eval("Therapist_Price") %>/Session</p>
                    </section>
                </ItemTemplate>
            </asp:Repeater>
        </article>






        <asp:DropDownList ID="ddlTherapists" runat="server" DataSourceID="adsTherapists" DataTextField="Therapist_Name" DataValueField="Therapist_ID" AutoPostBack="False" AppendDataBoundItems="true" CssClass="dropdownlist">
            <asp:ListItem Text="Select a therapist" Value="" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator Display="Dynamic" ID="rfvTherapist" runat="server" ControlToValidate="ddlTherapists" ErrorMessage="Therapist is required." CssClass="error" />

        <asp:AccessDataSource ID="adsTherapists" runat="server" DataFile="~/App_Data/Webapp.accdb" SelectCommand="SELECT [Therapist_Name], [Therapist_Id] FROM [Therapist]"></asp:AccessDataSource>
    </section>



    <section class="timeSlot-section">
        <asp:AccessDataSource ID="adsTimeSlots" runat="server" DataFile="~/App_Data/Webapp.accdb" SelectCommand="SELECT Booking_Time FROM TimeSlot ORDER BY Booking_Time"></asp:AccessDataSource>
        <h2 class="booking-title">Time Slot</h2>
        <p>Each session lasts 60 minutes</p>

        <asp:DropDownList ID="ddlTimeSlots" runat="server" AppendDataBoundItems="true" DataSourceID="adsTimeSlots" DataTextField="Booking_Time" DataValueField="Booking_Time" CssClass="dropdownlist">
            <asp:ListItem Text="Select a time slot" Value="" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvTimeSlot" runat="server" ControlToValidate="ddlTimeSlots" InitialValue="" ErrorMessage="Time slot is required." CssClass="error" Display="Dynamic" />




        <asp:AccessDataSource ID="adsCheckBooking" runat="server" DataFile="~/App_Data/Webapp.accdb" SelectCommand="SELECT [Booking_Id] FROM [Booking] WHERE [Therapist_Id] = ? AND [Booking_Time] = ?">
            <SelectParameters>
                <asp:Parameter Name="Therapist_Id" Type="Int32" />
                <asp:Parameter Name="Booking_Time" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    </section>

    <section class="fileUpload-section">
        <h2 class="booking-title">Medical Report</h2>
        <asp:Label ID="lblFileUpload" runat="server" Value=""></asp:Label>
        <asp:FileUpload ID="fuReport" runat="server" CssClass="dropdownlist" onchange="checkFileSize(this)" />
        <asp:Label ID="lblupload" runat="server" CssClass="error"></asp:Label>
        <asp:Button ID="btnConfirm" runat="server" Text="" CssClass="primary-button" CausesValidation="true" />
        <asp:Button ID="btnDelete" runat="server" Text="Delete Booking" CssClass="warning-button" CausesValidation="true" />
        <asp:Label ID="LblConfirmation" runat="server"></asp:Label>
    </section>

    <asp:AccessDataSource ID="adsBooking" runat="server" DataFile="~/App_Data/Webapp.accdb"
        SelectCommand="SELECT * FROM [Booking] WHERE [Booking_Id] = ?"
        InsertCommand="INSERT INTO [Booking] ([User_Id], [Therapist_Id], [Booking_Time],[User_ReportPath]) VALUES (?,?,?,?)"
        UpdateCommand="UPDATE [Booking] SET [Therapist_Id]=?, [Booking_Time]=? WHERE [Booking_Id]=?"
        DeleteCommand="DELETE FROM [Booking] WHERE [Booking_Id]=?">
        <SelectParameters>
            <asp:Parameter Name="Booking_Id" Type="Int32" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="User_Id" Type="Int32" />
            <asp:Parameter Name="Therapist_Id" Type="Int32" />
            <asp:Parameter Name="Booking_Time" Type="String" />
            <asp:Parameter Name="User_ReportPath" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Therapist_Id" Type="Int32" />
            <asp:Parameter Name="Booking_Time" Type="String" />
            <asp:Parameter Name="Booking_Id" Type="Int32" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="Booking_Id" Type="Int32" />
        </DeleteParameters>
    </asp:AccessDataSource>

</asp:Content>
