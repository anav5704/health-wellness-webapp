Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim email As String = txtEmail.Text.Trim()
        Dim password As String = txtPassword.Text.Trim()

        If email = "" Or password = "" Then
            lblMessage.Text = "Please enter both email and password."
            Exit Sub
        End If

        adsUsers.SelectParameters("User_Email").DefaultValue = email

        Dim userData As DataView = adsUsers.Select(DataSourceSelectArguments.Empty)

        If userData.Count > 0 Then
            Dim storedHash As String = userData(0)("User_Password").ToString()
            Dim inputHash As String = Utils.Password.Hash(password)

            If storedHash = inputHash Then
                Session("User_Email") = email
                Session("User_Role") = userData(0)("User_Role").ToString()
                Response.Redirect("Dashboard.aspx")
            Else
                lblMessage.Text = "Invalid password."
            End If

        Else
            lblMessage.Text = "Invalid email."
        End If
    End Sub
End Class