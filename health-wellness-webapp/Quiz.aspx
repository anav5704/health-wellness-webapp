<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Quiz.aspx.vb" Inherits="health_wellness_webapp.Quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Depression Anxiety Stress Scale-21</h2>
    
    <h4>1. I found it hard to wind down</h4>
    <div class="evaluation-item">
        <div class="options-line">
            <span class="opt-text">Agree</span>
            <asp:RadioButtonList ID="rblFreq" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
                <asp:ListItem Value="3" Text=""></asp:ListItem>
                <asp:ListItem Value="2" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text=""></asp:ListItem>
                <asp:ListItem Value="0" Text=""></asp:ListItem>
            </asp:RadioButtonList>
            <span class="opt-text">Disagree</span>
        </div>
    </div>
    

    <h4>2. I was aware of dryness of my mouth</h4>
    <div class="evaluation-item">
        <div class="options-line">
            <span class="opt-text">Agree</span>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
                <asp:ListItem Value="3" Text=""></asp:ListItem>
                <asp:ListItem Value="2" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text=""></asp:ListItem>
                <asp:ListItem Value="0" Text=""></asp:ListItem>
            </asp:RadioButtonList>
            <span class="opt-text">Disagree</span>
        </div>
    </div>
    

    <h4>3. I couldn’t seem to experience any positive feeling at all</h4>
    <div class="evaluation-item">
        <div class="options-line">
            <span class="opt-text">Agree</span>
            <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
                <asp:ListItem Value="3" Text=""></asp:ListItem>
                <asp:ListItem Value="2" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text=""></asp:ListItem>
                <asp:ListItem Value="0" Text=""></asp:ListItem>
            </asp:RadioButtonList>
            <span class="opt-text">Disagree</span>
        </div>
    </div>
    

    <h4>4. I experienced breathing difficulty (e.g. excessively rapid breathing, breathlessness in the absence of physical exertion)</h4>
    <div class="evaluation-item">
        <div class="options-line">
            <span class="opt-text">Agree</span>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
                <asp:ListItem Value="3" Text=""></asp:ListItem>
                <asp:ListItem Value="2" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text=""></asp:ListItem>
                <asp:ListItem Value="0" Text=""></asp:ListItem>
            </asp:RadioButtonList>
            <span class="opt-text">Disagree</span>
        </div>
    </div>

    <h4>5. I found it difficult to work up the initiative to do things</h4>
    <div class="evaluation-item">
        <div class="options-line">
            <span class="opt-text">Agree</span>
            <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
                <asp:ListItem Value="3" Text=""></asp:ListItem>
                <asp:ListItem Value="2" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text=""></asp:ListItem>
                <asp:ListItem Value="0" Text=""></asp:ListItem>
            </asp:RadioButtonList>
            <span class="opt-text">Disagree</span>
        </div>
    </div>

    <h4>6. I tended to over-react to situations</h4>
    <div class="evaluation-item">
        <div class="options-line">
            <span class="opt-text">Agree</span>
            <asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
                <asp:ListItem Value="3" Text=""></asp:ListItem>
                <asp:ListItem Value="2" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text=""></asp:ListItem>
                <asp:ListItem Value="0" Text=""></asp:ListItem>
            </asp:RadioButtonList>
            <span class="opt-text">Disagree</span>
        </div>
    </div>

    <h4>7. I experienced trembling (e.g. in the hands)</h4>
    <div class="evaluation-item">
        <div class="options-line">
            <span class="opt-text">Agree</span>
            <asp:RadioButtonList ID="RadioButtonList6" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
                <asp:ListItem Value="3" Text=""></asp:ListItem>
                <asp:ListItem Value="2" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text=""></asp:ListItem>
                <asp:ListItem Value="0" Text=""></asp:ListItem>
            </asp:RadioButtonList>
            <span class="opt-text">Disagree</span>
        </div>
    </div>

    <h4>8. I felt that I was using a lot of nervous energy</h4>
    <div class="evaluation-item">
        <div class="options-line">
            <span class="opt-text">Agree</span>
            <asp:RadioButtonList ID="RadioButtonList7" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
                <asp:ListItem Value="3" Text=""></asp:ListItem>
                <asp:ListItem Value="2" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text=""></asp:ListItem>
                <asp:ListItem Value="0" Text=""></asp:ListItem>
            </asp:RadioButtonList>
            <span class="opt-text">Disagree</span>
        </div>
    </div>

    <h4>9. I was worried about situations in which I might panic and make a fool of myself</h4>
    <div class="evaluation-item">
        <div class="options-line">
            <span class="opt-text">Agree</span>
            <asp:RadioButtonList ID="RadioButtonList8" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
                <asp:ListItem Value="3" Text=""></asp:ListItem>
                <asp:ListItem Value="2" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text=""></asp:ListItem>
                <asp:ListItem Value="0" Text=""></asp:ListItem>
            </asp:RadioButtonList>
            <span class="opt-text">Disagree</span>
        </div>
    </div>

    <h4>10. I felt that I had nothing to look forward to</h4>
    <div class="evaluation-item">
        <div class="options-line">
            <span class="opt-text">Agree</span>
            <asp:RadioButtonList ID="RadioButtonList9" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
                <asp:ListItem Value="3" Text=""></asp:ListItem>
                <asp:ListItem Value="2" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text=""></asp:ListItem>
                <asp:ListItem Value="0" Text=""></asp:ListItem>
            </asp:RadioButtonList>
            <span class="opt-text">Disagree</span>
        </div>
    </div>

    <h4>11. I found myself getting agitated</h4>
    <div class="evaluation-item">
        <div class="options-line">
            <span class="opt-text">Agree</span>
            <asp:RadioButtonList ID="RadioButtonList10" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
                <asp:ListItem Value="3" Text=""></asp:ListItem>
                <asp:ListItem Value="2" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text=""></asp:ListItem>
                <asp:ListItem Value="0" Text=""></asp:ListItem>
            </asp:RadioButtonList>
            <span class="opt-text">Disagree</span>
        </div>
    </div>

    <h4>12. I found it difficult to relax</h4>
    <div class="evaluation-item">
        <div class="options-line">
            <span class="opt-text">Agree</span>
            <asp:RadioButtonList ID="RadioButtonList11" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
                <asp:ListItem Value="3" Text=""></asp:ListItem>
                <asp:ListItem Value="2" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text=""></asp:ListItem>
                <asp:ListItem Value="0" Text=""></asp:ListItem>
            </asp:RadioButtonList>
            <span class="opt-text">Disagree</span>
        </div>
    </div>

    <h4>13. I felt down-hearted and blue</h4>
    <div class="evaluation-item">
        <div class="options-line">
            <span class="opt-text">Agree</span>
            <asp:RadioButtonList ID="RadioButtonList12" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
                <asp:ListItem Value="3" Text=""></asp:ListItem>
                <asp:ListItem Value="2" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text=""></asp:ListItem>
                <asp:ListItem Value="0" Text=""></asp:ListItem>
            </asp:RadioButtonList>
            <span class="opt-text">Disagree</span>
        </div>
    </div>

    <h4>14. I was intolerant of anything that kept me from getting on with what I was doing</h4>
    <div class="evaluation-item">
        <div class="options-line">
            <span class="opt-text">Agree</span>
            <asp:RadioButtonList ID="RadioButtonList13" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
                <asp:ListItem Value="3" Text=""></asp:ListItem>
                <asp:ListItem Value="2" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text=""></asp:ListItem>
                <asp:ListItem Value="0" Text=""></asp:ListItem>
            </asp:RadioButtonList>
            <span class="opt-text">Disagree</span>
        </div>
    </div>

    <h4>15. I felt I was close to panic</h4>
    <div class="evaluation-item">
        <div class="options-line">
            <span class="opt-text">Agree</span>
            <asp:RadioButtonList ID="RadioButtonList14" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
                <asp:ListItem Value="3" Text=""></asp:ListItem>
                <asp:ListItem Value="2" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text=""></asp:ListItem>
                <asp:ListItem Value="0" Text=""></asp:ListItem>
            </asp:RadioButtonList>
            <span class="opt-text">Disagree</span>
        </div>
    </div>

    <h4>16. I was unable to become enthusiastic about anything</h4>
    <div class="evaluation-item">
        <div class="options-line">
            <span class="opt-text">Agree</span>
            <asp:RadioButtonList ID="RadioButtonList15" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
                <asp:ListItem Value="3" Text=""></asp:ListItem>
                <asp:ListItem Value="2" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text=""></asp:ListItem>
                <asp:ListItem Value="0" Text=""></asp:ListItem>
            </asp:RadioButtonList>
            <span class="opt-text">Disagree</span>
        </div>
    </div>

    <h4>17. I felt I wasn’t worth much as a person</h4>
    <div class="evaluation-item">
        <div class="options-line">
            <span class="opt-text">Agree</span>
            <asp:RadioButtonList ID="RadioButtonList16" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
                <asp:ListItem Value="3" Text=""></asp:ListItem>
                <asp:ListItem Value="2" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text=""></asp:ListItem>
                <asp:ListItem Value="0" Text=""></asp:ListItem>
            </asp:RadioButtonList>
            <span class="opt-text">Disagree</span>
        </div>
    </div>

    <h4>18. I felt that I was rather touchy</h4>
    <div class="evaluation-item">
        <div class="options-line">
            <span class="opt-text">Agree</span>
            <asp:RadioButtonList ID="RadioButtonList17" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
                <asp:ListItem Value="3" Text=""></asp:ListItem>
                <asp:ListItem Value="2" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text=""></asp:ListItem>
                <asp:ListItem Value="0" Text=""></asp:ListItem>
            </asp:RadioButtonList>
            <span class="opt-text">Disagree</span>
        </div>
    </div>

    <h4>19. I was aware of the action of my heart in the absence of physical exertion (e.g. sense of heart rate increase, heart missing a beat)</h4>
    <div class="evaluation-item">
        <div class="options-line">
            <span class="opt-text">Agree</span>
            <asp:RadioButtonList ID="RadioButtonList18" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
                <asp:ListItem Value="3" Text=""></asp:ListItem>
                <asp:ListItem Value="2" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text=""></asp:ListItem>
                <asp:ListItem Value="0" Text=""></asp:ListItem>
            </asp:RadioButtonList>
            <span class="opt-text">Disagree</span>
        </div>
    </div>

    <h4>20. I felt scared without any good reason</h4>
    <div class="evaluation-item">
        <div class="options-line">
            <span class="opt-text">Agree</span>
            <asp:RadioButtonList ID="RadioButtonList19" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
                <asp:ListItem Value="3" Text=""></asp:ListItem>
                <asp:ListItem Value="2" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text=""></asp:ListItem>
                <asp:ListItem Value="0" Text=""></asp:ListItem>
            </asp:RadioButtonList>
            <span class="opt-text">Disagree</span>
        </div>
    </div>

    <h4>21. I felt that life was meaningless</h4>
    <div class="evaluation-item">
        <div class="options-line">
            <span class="opt-text">Agree</span>
            <asp:RadioButtonList ID="RadioButtonList20" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
                <asp:ListItem Value="3" Text=""></asp:ListItem>
                <asp:ListItem Value="2" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text=""></asp:ListItem>
                <asp:ListItem Value="0" Text=""></asp:ListItem>
            </asp:RadioButtonList>
            <span class="opt-text">Disagree</span>
        </div>
    </div>

    <div class="button-container">
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn-submit" />
    </div>

    <asp:Label
        ID="lblResult"
        runat="server"
        CssClass="result-label" />


</asp:Content>
