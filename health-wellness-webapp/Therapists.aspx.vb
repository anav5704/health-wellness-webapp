Imports System.Data.OleDb
Imports System.Data

Public Class Therapists
    Inherits System.Web.UI.Page

    Private ReadOnly connStr As String = "Provider=Microsoft.ACE.OLEDB.12.0;" & "Data Source={0}; Persist Security Info=False;"

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim searchTerm As String = Request.QueryString("search")
            If Not String.IsNullOrEmpty(searchTerm) Then
                txtSearch.Text = searchTerm
            End If
            BindTherapists(searchTerm)
        End If
    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs)
        Dim searchTerm As String = txtSearch.Text.Trim()
        Response.Redirect("Therapists.aspx?search=" & Server.UrlEncode(searchTerm))
    End Sub

    Private Sub BindTherapists(Optional ByVal searchTerm As String = "")
        Dim dbPath As String = Server.MapPath("~/App_Data/Webapp.accdb")
        Dim cs As String = String.Format(connStr, dbPath)

        Using conn As New OleDbConnection(cs)
            Dim sql As String = "SELECT Therapist_Id, Therapist_Name, Therapist_Description, Therapist_ImgUrl, Therapist_Price, Therapist_Speciality FROM Therapist"

            Dim hasSearch As Boolean = Not String.IsNullOrEmpty(searchTerm)

            If hasSearch Then
                sql &= " WHERE Therapist_Name LIKE ? OR Therapist_Description LIKE ? OR Therapist_Speciality LIKE ?"
            End If

            Using cmd As New OleDbCommand(sql, conn)
                If Not String.IsNullOrEmpty(searchTerm) Then
                    Dim likeTerm As String = "%" & searchTerm & "%"
                    cmd.Parameters.AddWithValue("?", likeTerm)
                    cmd.Parameters.AddWithValue("?", likeTerm)
                    cmd.Parameters.AddWithValue("?", likeTerm)
                End If

                Dim adapter As New OleDbDataAdapter(cmd)
                Dim dt As New DataTable()
                adapter.Fill(dt)

                rptTherapists.DataSource = dt
                rptTherapists.DataBind()

                If hasSearch Then
                    If dt.Rows.Count > 0 Then
                        lblSearchResult.Text = $"Showing search results for '<strong>{Server.HtmlEncode(searchTerm)}</strong>'"
                    Else
                        lblSearchResult.Text = $"No search results found for '<strong>{Server.HtmlEncode(searchTerm)}</strong>'"
                    End If
                Else
                    lblSearchResult.Text = ""
                End If
            End Using
        End Using
    End Sub
End Class
