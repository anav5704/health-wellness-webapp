<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Booking.aspx.vb" Inherits="health_wellness_webapp.Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="TherapistJohnDoe" CssClass="therapist" runat="server">
        <asp:Image ID="ImgJohnDoe" ImageUrl="/images/Therapist1.jpg" alt="John Doe" runat="server" />
        <asp:Label ID="LblJohnDoe" Text="John Doe" runat="server" />
        <asp:Label ID="LblPrice" Text="$800.00" runat="server" />
    </asp:Panel>

    <asp:Panel ID="TherapistJameSmith" CssClass="therapist" runat="server">
        <asp:Image ID="ImageJameSmith" ImageUrl="/images/therapist2.jpg" alt="Jame Smith" runat="server" />
        <asp:Label ID="LblJameSmith" Text="Jame Smith" runat="server" />
    </asp:Panel>

    <asp:Panel ID="TherapistCharlesDow" CssClass="therapist" runat="server">
        <asp:Image ID="ImageCharlesDow" ImageUrl="/images/therapist3.jpg" alt="Charles Dow" runat="server" />
        <asp:Label ID="LblCharlesDow" Text="Charles Dow" runat="server" />
    </asp:Panel>

    <asp:Panel ID="TherapistEmilyJones" CssClass="therapist" runat="server">
        <asp:Image ID="ImageEmilyJones" ImageUrl="/images/therapist4.jpg" alt="Emily Jones" runat="server" />
        <asp:Label ID="LblEmilyJones" Text="Emily Jones" runat="server" />
    </asp:Panel>




    <!-- 时间段选择区域 -->
    <h2 class="timeselect">Time Slot</h2>
    <div class="time-slots" id="timeSlots">
        <!-- 时间段按钮将通过 JavaScript 动态生成 -->
    </div>

    <!-- 金额输入和操作按钮 -->
    <div class="payment-section">
        <label for="amount">金额：</label>
        <input type="number" id="amount" placeholder="输入金额" />
    </div>
    <div class="actions">
        <button onclick="submitBooking('pay')">支付</button>
        <button onclick="submitBooking('gift')">赠送</button>
    </div>

    <script>
        // 初始化时间段
        const timeSlots = [
            "09:00", "10:00", "11:00",
            "14:00", "15:00", "16:00"
        ];
        const timeSlotsContainer = document.getElementById('timeSlots');
        timeSlots.forEach(time => {
            const slot = document.createElement('div');
            slot.className = 'time-slot';
            slot.textContent = time;
            slot.onclick = () => selectTimeSlot(slot);
            timeSlotsContainer.appendChild(slot);
        });

        // 选择咨询师
        const therapists = document.querySelectorAll('.therapist');
        let selectedTherapist = null;
        therapists.forEach(therapist => {
            therapist.onclick = () => {
                therapists.forEach(t => t.classList.remove('selected'));
                therapist.classList.add('selected');
                selectedTherapist = therapist.getAttribute('data-id');
            };
        });

        // 选择时间段
        let selectedTimeSlot = null;
        function selectTimeSlot(slot) {
            document.querySelectorAll('.time-slot').forEach(s => s.classList.remove('selected'));
            slot.classList.add('selected');
            selectedTimeSlot = slot.textContent;
        }

        // 提交预约
        function submitBooking(action) {
            const amount = document.getElementById('amount').value;
            if (!selectedTherapist) {
                alert('请选择咨询师');
                return;
            }
            if (!selectedTimeSlot) {
                alert('请选择时间段');
                return;
            }
            if (!amount) {
                alert('请输入金额');
                return;
            }
            // 在此处添加提交逻辑，例如发送到服务器
            alert(`操作：${action}\n咨询师：${selectedTherapist}\n时间段：${selectedTimeSlot}\n金额：${amount}`);
        }
    </script>

</asp:Content>
