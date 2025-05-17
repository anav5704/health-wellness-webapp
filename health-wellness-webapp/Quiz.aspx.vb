Public Class Quiz
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Dim depIds = {"rblFreq", "RadioButtonList12", "RadioButtonList13", "RadioButtonList9", "RadioButtonList1", "RadioButtonList4", "RadioButtonList7"}
        Dim anxIds = {"RadioButtonList2", "RadioButtonList6", "RadioButtonList8", "RadioButtonList10", "RadioButtonList14", "RadioButtonList15", "RadioButtonList19"}
        Dim strIds = {"RadioButtonList3", "RadioButtonList5", "RadioButtonList11", "RadioButtonList16", "RadioButtonList17", "RadioButtonList18", "RadioButtonList20"}

        Dim sumDep = SumSubscale(depIds)
        Dim sumAnx = SumSubscale(anxIds)
        Dim sumStr = SumSubscale(strIds)


        Dim scoreDep = sumDep * 2
        Dim scoreAnx = sumAnx * 2
        Dim scoreStr = sumStr * 2


        Dim lvlDep = ClassifyDepression(scoreDep)
        Dim lvlAnx = ClassifyAnxiety(scoreAnx)
        Dim lvlStr = ClassifyStress(scoreStr)

        Dim suggestionDep = GetSuggestion("Depression", lvlDep)
        Dim suggestionAnx = GetSuggestion("Anxiety", lvlAnx)
        Dim suggestionStr = GetSuggestion("Stress", lvlStr)

        Dim resultText As New System.Text.StringBuilder()
        resultText.AppendLine($"Your scores and recommodation are as follows:")
        resultText.AppendLine()
        resultText.AppendLine($"Depression: {scoreDep} ({lvlDep})")
        resultText.AppendLine(suggestionDep)
        resultText.AppendLine()
        resultText.AppendLine($"Anxiety: {scoreAnx} ({lvlAnx})")
        resultText.AppendLine(suggestionAnx)
        resultText.AppendLine()
        resultText.AppendLine($"Stress: {scoreStr} ({lvlStr})")
        resultText.AppendLine(suggestionStr)

        lblResult.Text = resultText.ToString().Replace(vbCrLf, "<br />")
        pnlResultCard.Visible = True

    End Sub


    Private Function SumSubscale(ids As String()) As Integer
        Dim sum As Integer = 0

        For Each ctrlId As String In ids
            Dim placeholder = Me.Master.FindControl("ContentPlaceHolder1")
            Dim rbl As RadioButtonList = Nothing

            If placeholder IsNot Nothing Then
                rbl = TryCast(placeholder.FindControl(ctrlId), RadioButtonList)
            Else
                rbl = TryCast(Me.FindControl(ctrlId), RadioButtonList)
            End If

            If rbl IsNot Nothing AndAlso Integer.TryParse(rbl.SelectedValue, Nothing) Then
                sum += CInt(rbl.SelectedValue)
            End If
        Next

        Return sum
    End Function

    Private Function ClassifyDepression(score As Integer) As String
        Select Case score
            Case <= 9 : Return "Normal"
            Case <= 13 : Return "Mild"
            Case <= 20 : Return "Moderate"
            Case <= 27 : Return "Severe"
            Case Else : Return "Extremely Severe"
        End Select
    End Function

    Private Function ClassifyAnxiety(score As Integer) As String
        Select Case score
            Case <= 7 : Return "Normal"
            Case <= 9 : Return "Mild"
            Case <= 14 : Return "Moderate"
            Case <= 19 : Return "Severe"
            Case Else : Return "Extremely Severe"
        End Select
    End Function

    Private Function ClassifyStress(score As Integer) As String
        Select Case score
            Case <= 14 : Return "Normal"
            Case <= 18 : Return "Mild"
            Case <= 25 : Return "Moderate"
            Case <= 33 : Return "Severe"
            Case Else : Return "Extremely Severe"
        End Select
    End Function

    Private Function GetSuggestion(scale As String, level As String) As String
        Select Case level
            Case "Normal"
                Return $"{scale}: Your score is within the normal range. Keep up your healthy habits and maintain your current self-care routines."
            Case "Mild"
                Return $"{scale}: You are experiencing mild symptoms. Consider trying relaxation exercises, mindfulness or light physical activity to help manage your feelings."
            Case "Moderate"
                Return $"{scale}: You have moderate symptoms. It may be helpful to talk to a trusted friend or family member, or seek guidance from a mental health professional."
            Case "Severe"
                Return $"{scale}: You are showing significant symptoms. We recommend contacting a qualified counselor or therapist to discuss your concerns."
            Case "Extremely Severe"
                Return $"{scale}: Your symptoms are very high. Please reach out immediately to a mental health professional or crisis hotline for support."
            Case Else
                Return String.Empty
        End Select
    End Function


End Class
