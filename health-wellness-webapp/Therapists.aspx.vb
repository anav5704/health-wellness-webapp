Imports System.Data.OleDb

Public Class Therapists
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim cs As String = "Provider=Microsoft.ACE.OLEDB.12.0;" &
                               "Data Source=" & Server.MapPath("~/App_Data/Webapp.accdb") & ";" &
                               "Persist Security Info=False;"
            Using conn As New OleDbConnection(cs)
                Using cmd As New OleDbCommand("SELECT Therapist_Id, Therapist_Name, Therapist_Description, Therapist_ImgUrl, Therapist_Price FROM Therapist", conn)
                    Dim adapter As New OleDbDataAdapter(cmd)
                    Dim dt As New DataTable()
                    adapter.Fill(dt)
                End Using
            End Using
        End If
    End Sub

End Class