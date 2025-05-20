Public Class Booking2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'User Authentication'
        If Session("User_Email") Is Nothing Then
            Response.Redirect("Login.aspx?ReturnUrl=" & Server.UrlEncode(Request.RawUrl))
        End If

        'If Not IsPostBack Then
        '    Dim tid As String = Request.QueryString("therapist")  ' 获取 ?therapist= 参数:contentReference[oaicite:3]{index=3}
        '    If Not String.IsNullOrEmpty(tid) Then
        '        Dim pnl As Panel = TryCast(therapistSelect.FindControl("Therapist" & tid), Panel)
        '        If pnl IsNot Nothing Then
        '            pnl.CssClass &= " selected"  ' 添加选中样式:contentReference[oaicite:4]{index=4}
        '        End If
        '    End If
        'End If
    End Sub

    Protected Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub btnPay_Click(sender As Object, e As EventArgs) Handles btnConfirm.Click
        Dim therapist As String = RblTherapists.SelectedValue.Trim()
        Dim time As String = CblTimeSlots.SelectedValue.Trim()

        adsBooking.InsertParameters("Therapist_Id").DefaultValue = therapist
        adsBooking.InsertParameters("Booking_Date").DefaultValue = time

        adsBooking.Insert()
        LblConfirmation.Text = "Session booking confirmed"
    End Sub
    Protected Sub cvTimeSlots_ServerValidate(source As Object, args As ServerValidateEventArgs)
        args.IsValid = CblTimeSlots.SelectedIndex > -1
    End Sub

End Class