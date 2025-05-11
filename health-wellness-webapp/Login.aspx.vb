Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs)
        Dim email As String = txtEmail.Text.Trim()
        Dim password As String = txtPassword.Text.Trim()

        If email = "" Or password = "" Then
            lblMessage.Text = "Please enter both email and password."
            Exit Sub
        End If

        adsUsers.SelectParameters("User_Email").DefaultValue = email
        adsUsers.SelectParameters("User_Password").DefaultValue = password

        Dim userData As DataView = adsUsers.Select(DataSourceSelectArguments.Empty
                                                   )
        If userData.Count > 0 Then
            Session("User_Email") = email
            Session("User_Role") = userData(0)("User_Role").ToString()
            Response.Redirect("Dashboard.aspx")
        Else
            lblMessage.Text = "Invalid email or password."
        End If
    End Sub
End Class