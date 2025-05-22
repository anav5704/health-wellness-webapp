Public Class Booking2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'User Authentication'
        If Session("User_Email") Is Nothing Then
            Response.Redirect("Login.aspx?ReturnUrl=" & Server.UrlEncode(Request.RawUrl))
        End If
    End Sub

    Protected Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub btnConfirm_Click(sender As Object, e As EventArgs) Handles btnConfirm.Click
        Dim therapist As Integer = ddlTherapists.SelectedValue.Trim()
        Dim time As String = ddlTimeSlots.SelectedValue.Trim()
        Dim userEmail As String = Session("User_Email").ToString().Trim()


        adsCheckBooking.SelectParameters("Therapist_Id").DefaultValue = therapist
        adsCheckBooking.SelectParameters("Booking_Time").DefaultValue = time



        Dim dvUser As DataView = CType(adsGetUser.Select(DataSourceSelectArguments.Empty), DataView)

        Dim uId As Integer = Convert.ToInt32(dvUser(0)("User_Id"))


        Dim dv As DataView = adsCheckBooking.Select(DataSourceSelectArguments.Empty)

        If dv.Count > 0 Then
            LblConfirmation.Text = "Sorry, this time slot is booked"
        Else
            adsBooking.InsertParameters("Booking_Time").DefaultValue = time
            adsBooking.InsertParameters("Therapist_Id").DefaultValue = therapist
            adsBooking.InsertParameters("User_Id").DefaultValue = uId.ToString()

            adsBooking.Insert()
            LblConfirmation.Text = "Session booking confirmed"
        End If
    End Sub

    Protected Sub adsCheckBooking_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs)

    End Sub
End Class