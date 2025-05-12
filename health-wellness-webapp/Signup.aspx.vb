Public Class Signup
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSignup_Click(sender As Object, e As EventArgs) Handles btnSignup.Click
        Dim email As String = txtEmail.Text.Trim()
        Dim password As String = txtPassword.Text.Trim()

        If email = "" Or password = "" Then
            lblMessage.Text = "Please enter both email and password."
            Exit Sub
        End If

        adsUsers.SelectParameters("User_Email").DefaultValue = email

        Dim existingUser As DataView = adsUsers.Select(DataSourceSelectArguments.Empty)

        If existingUser.Count > 0 Then
            lblMessage.Text = "Email already registered."
            Exit Sub
        End If

        adsUsers.InsertParameters("User_Email").DefaultValue = email
        adsUsers.InsertParameters("User_Password").DefaultValue = Utils.Password.Hash(password)
        adsUsers.InsertParameters("User_Role").DefaultValue = "Member"

        adsUsers.Insert()
        Response.Redirect("Dashboard.aspx")
    End Sub

    Protected Sub adsUsers_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles adsUsers.Selecting

    End Sub
End Class