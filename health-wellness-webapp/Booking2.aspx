<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Booking2.aspx.vb" Inherits="health_wellness_webapp.Booking2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <h1>Booking</h1>

    <section class="therapist-select">
        <asp:Panel ID="TherapistJohnDoe" CssClass="therapist" runat="server" Attributes-Data-id="JohnDoe">
            <asp:Image ID="ImgJohnDoe" ImageUrl="/images/Therapist1.jpg" alt="John Doe" runat="server" />
            <asp:Label ID="LblJohnDoe" Text="John Doe" runat="server" />
            <asp:Label ID="LblPrice" Text="$800.00/Session" runat="server" />
        </asp:Panel>

        <asp:Panel ID="TherapistJameSmith" CssClass="therapist" runat="server" Attributes-Data-id="JameSmith">
            <asp:Image ID="ImageJameSmith" ImageUrl="/images/therapist2.jpg" alt="Jame Smith" runat="server" />
            <asp:Label ID="LblJameSmith" Text="Jame Smith" runat="server" />
            <asp:Label ID="Label2" Text="$800.00/Session" runat="server" />
        </asp:Panel>

        <asp:Panel ID="TherapistCharlesDow" CssClass="therapist" runat="server" Attributes-Data-id="CharlesDow">
            <asp:Image ID="ImageCharlesDow" ImageUrl="/images/therapist3.jpg" alt="Charles Dow" runat="server" />
            <asp:Label ID="LblCharlesDow" Text="Charles Dow" runat="server" />
            <asp:Label ID="Label3" Text="$800.00/Session" runat="server" />
        </asp:Panel>

        <asp:Panel ID="TherapistEmilyJones" CssClass="therapist" runat="server" Attributes-Data-id="EmilyJames">
            <asp:Image ID="ImageEmilyJones" ImageUrl="/images/therapist4.jpg" alt="Emily Jones" runat="server" />
            <asp:Label ID="LblEmilyJones" Text="Emily Jones" runat="server" />
            <asp:Label ID="Label4" Text="$800.00/Session" runat="server" />
        </asp:Panel>
    </section>
    <asp:RadioButtonList ID="RblTherapists" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="Toptions">
        <asp:ListItem Value="John Doe"></asp:ListItem>
        <asp:ListItem Value="Jame Smith"></asp:ListItem>
        <asp:ListItem Value="Charles Dow"></asp:ListItem>
        <asp:ListItem Value="Emily Jones"></asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator Display="Dynamic" ID="rfvTherapist" runat="server" ControlToValidate="RblTherapists" ErrorMessage="Choose a therapist." CssClass="error" />


    <h3 class="timeSlotTitle">Time Slot</h3>

    <fieldset class="time-slots" id="timeSlots">
        <asp:CheckBoxList ID="CblTimeSlots" runat="server" RepeatColumns="3" DataSourceID="xdsTimeSlots" DataTextField="Slot">
        </asp:CheckBoxList>
        <asp:XmlDataSource ID="xdsTimeSlots" runat="server" DataFile="~/App_Data/TimeSlots.xml"></asp:XmlDataSource>
        <asp:CustomValidator ID="cvTimeSlots" runat="server" ErrorMessage="Choose at least one time slot" OnServerValidate="cvTimeSlots_ServerValidate" Display="Dynamic" CssClass="error" />

    </fieldset>

    <asp:Button ID="btnConfirm" runat="server" Text="Confirm" CssClass="Confirmbutton" CausesValidation="true" />
    <asp:Label ID="LblConfirmation" runat="server"></asp:Label>

    <asp:AccessDataSource ID="adsBooking" runat="server" DataFile="~/App_Data/Webapp.accdb"
        InsertCommand="INSERT INTO Booking ([User_Id], [Therapist_Id] , [Booking_Date]) VALUES (?,?)">
        <InsertParameters>
            <asp:Parameter Name="Therapist_Id" Type="String" />
            <asp:Parameter Name="Booking_Date" Type="String" />
        </InsertParameters>
    </asp:AccessDataSource>

    <script>
        //const pricePerSlot = 800;
        //const therapists = document.querySelectorAll('.therapist');
        //let selectedTherapist = null;
        //therapists.forEach(t => {
        //    t.onclick = () => {
        //        therapists.forEach(x => x.classList.remove('selected'));
        //        t.classList.add('selected');
        //        selectedTherapist = t.getAttribute('data-id');
        //    };
        //});

        //// 更新金额函数
        //function updateAmount() {
        //    const count = document.querySelectorAll('.time-slot.selected').length;
        //    const total = count * pricePerSlot;
        //    document.getElementById('amountLabel').textContent = '¥' + total;
        //    document.getElementById('amount').value = total;
        //}

        //// 提交预约
        //function submitBooking(action) {
        //    const amount = document.getElementById('amount').value;
        //    if (!selectedTherapist) {
        //        alert('请选择咨询师');
        //        return;
        //    }
        //    const slots = document.querySelectorAll('.time-slot.selected');
        //    if (slots.length === 0) {
        //        alert('请选择时间段');
        //        return;
        //    }
        //    // amount 已经自动计算，不再让用户输入
        //    alert(`操作：${action}\n咨询师：${selectedTherapist}\n时间段：${[...slots].map(s => s.textContent).join(',')}\n金额：${amount}`);
        //    // 在这里发 Ajax 或表单提交到后台
        //}
    </script>

</asp:Content>
