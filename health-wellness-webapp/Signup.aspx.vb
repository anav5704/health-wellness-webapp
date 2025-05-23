Public Class Signup
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSignup_Click(sender As Object, e As EventArgs) Handles btnSignup.Click
        Dim fname As String = txtFname.Text.Trim()
        Dim lname As String = txtLname.Text.Trim()
        Dim email As String = txtEmail.Text.Trim()
        Dim password As String = txtPassword.Text.Trim()

        If fname = "" Or lname = "" Or email = "" Or password = "" Then
            lblMessage.Text = "Name, email and password are required."
            Exit Sub
        End If

        adsUsers.SelectParameters("User_Email").DefaultValue = email

        Dim existingUser As DataView = adsUsers.Select(DataSourceSelectArguments.Empty)

        If existingUser.Count > 0 Then
            lblMessage.Text = "Email already registered."
            Exit Sub
        End If

        adsUsers.InsertParameters("User_Fname").DefaultValue = fname
        adsUsers.InsertParameters("User_Lname").DefaultValue = lname
        adsUsers.InsertParameters("User_Email").DefaultValue = email
        adsUsers.InsertParameters("User_Password").DefaultValue = Utils.Password.Hash(password)
        adsUsers.InsertParameters("User_Role").DefaultValue = "Member"

        adsUsers.Insert()

        Dim returnUrl As String = Request.QueryString("ReturnUrl")
        If Not String.IsNullOrEmpty(returnUrl) Then
            Response.Redirect("Login.aspx?ReturnUrl=" & Server.UrlEncode(returnUrl))
        Else
            Response.Redirect("Login.aspx")
        End If
    End Sub

    Protected Sub adsUsers_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles adsUsers.Selecting

    End Sub
End Class