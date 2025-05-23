Public Class Feedback
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("User_ID") Is Nothing Then
            Response.Redirect("Login.aspx?ReturnUrl=" & Server.UrlEncode(Request.RawUrl))
        End If
    End Sub

    Protected Sub btnFeedback_Click(sender As Object, e As EventArgs) Handles btnFeedback.Click
        Dim message As String = txtMessage.Text.Trim()

        If message = "" Then
            lblConfirmation.Text = "Please enter feedback message"
            Exit Sub
        End If

        Dim userID As Integer = Convert.ToInt32(Session("User_ID"))

        adsFeedback.InsertParameters("User_Id").DefaultValue = userID.ToString()
        adsFeedback.InsertParameters("Feedback_Message").DefaultValue = message

        adsFeedback.Insert()
        lblConfirmation.Text = "Thank you for sending your feedback"
    End Sub
End Class