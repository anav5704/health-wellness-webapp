Imports health_wellness_webapp.Utils

Public Class Contact
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnMessage_Click(sender As Object, e As EventArgs) Handles btnMessage.Click
        Dim email As String = txtEmail.Text.Trim()
        Dim message As String = txtMessage.Text.Trim()

        If email = "" Or message = "" Then
            lblConfirmation.Text = "Please enter both email and message."
            Exit Sub
        End If

        adsContact.InsertParameters("Contact_Email").DefaultValue = email
        adsContact.InsertParameters("Contact_Message").DefaultValue = message

        adsContact.Insert()
        lblConfirmation.Text = "Thank you for messaging us..."
    End Sub

    Protected Sub adsContact_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles adsContact.Selecting

    End Sub
End Class