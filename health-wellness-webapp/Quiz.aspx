<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Quiz.aspx.vb" Inherits="health_wellness_webapp.Quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2>Depression Anxiety Stress Scale-21</h2>
        <h3>This scale is for screening purposes only and is not meant to confirm the diagnosis or serve as a basis for diagnosis</h3>

        <div class="evaluation-item">
        <h4>1. I found it hard to wind down</h4>
        <span class="opt-text">Agree</span>
        <asp:RadioButtonList ID="rblFreq" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
            <asp:ListItem Value="3" Text=""></asp:ListItem>
            <asp:ListItem Value="2" Text="" ></asp:ListItem>
            <asp:ListItem Value="1" Text=""></asp:ListItem>
            <asp:ListItem Value="0" Text=""></asp:ListItem>
        </asp:RadioButtonList>
        <span class="opt-text">Disagree</span>
        <br />
        </div>

        <asp:Label ID="Label1" runat="server" Text="2. I was aware of dryness of my mouth"></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
            <asp:ListItem Value="3" Text="Agree"></asp:ListItem>
            <asp:ListItem Value="2" Text=""></asp:ListItem>
            <asp:ListItem Value="1" Text=""></asp:ListItem>
            <asp:ListItem Value="0" Text="Disagree"></asp:ListItem>
        </asp:RadioButtonList>

        <br />
        <asp:Label ID="Label2" runat="server" Text="3. I couldn’t seem to experience any positive feeling at all "></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
            <asp:ListItem Value="3" Text="Agree"></asp:ListItem>
            <asp:ListItem Value="2" Text=""></asp:ListItem>
            <asp:ListItem Value="1" Text=""></asp:ListItem>
            <asp:ListItem Value="0" Text="Disagree"></asp:ListItem>
        </asp:RadioButtonList>

        <br />
        <asp:Label ID="Label4" runat="server" Text="4. I experienced breathing difficulty (e.g. excessively rapid breathing, breathlessness in the absence of physical exertion) "></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
            <asp:ListItem Value="3" Text="Agree"></asp:ListItem>
            <asp:ListItem Value="2" Text=""></asp:ListItem>
            <asp:ListItem Value="1" Text=""></asp:ListItem>
            <asp:ListItem Value="0" Text="Disagree"></asp:ListItem>
        </asp:RadioButtonList>

        <br />
        <asp:Label ID="Label5" runat="server" Text="5. I found it difficult to work up the initiative to do things "></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
            <asp:ListItem Value="3" Text="Agree"></asp:ListItem>
            <asp:ListItem Value="2" Text=""></asp:ListItem>
            <asp:ListItem Value="1" Text=""></asp:ListItem>
            <asp:ListItem Value="0" Text="Disagree"></asp:ListItem>
        </asp:RadioButtonList>

        <br />
        <asp:Label ID="Label6" runat="server" Text="6. I tended to over-react to situations "></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList6" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
            <asp:ListItem Value="3" Text="Agree"></asp:ListItem>
            <asp:ListItem Value="2" Text=""></asp:ListItem>
            <asp:ListItem Value="1" Text=""></asp:ListItem>
            <asp:ListItem Value="0" Text="Disagree"></asp:ListItem>
        </asp:RadioButtonList>

        <br />
        <asp:Label ID="Label7" runat="server" Text="7. I experienced trembling (e.g. in the hands)  "></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList7" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
            <asp:ListItem Value="3" Text="Agree"></asp:ListItem>
            <asp:ListItem Value="2" Text=""></asp:ListItem>
            <asp:ListItem Value="1" Text=""></asp:ListItem>
            <asp:ListItem Value="0" Text="Disagree"></asp:ListItem>
        </asp:RadioButtonList>

        <br />
        <asp:Label ID="Label8" runat="server" Text="8. I felt that I was using a lot of nervous energy  "></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList8" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
            <asp:ListItem Value="3" Text="Agree"></asp:ListItem>
            <asp:ListItem Value="2" Text=""></asp:ListItem>
            <asp:ListItem Value="1" Text=""></asp:ListItem>
            <asp:ListItem Value="0" Text="Disagree"></asp:ListItem>
        </asp:RadioButtonList>

        <br />
        <asp:Label ID="Label9" runat="server" Text="9. I was worried about situations in which I might panic and make a fool of myself  "></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList9" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
            <asp:ListItem Value="3" Text="Agree"></asp:ListItem>
            <asp:ListItem Value="2" Text=""></asp:ListItem>
            <asp:ListItem Value="1" Text=""></asp:ListItem>
            <asp:ListItem Value="0" Text="Disagree"></asp:ListItem>
        </asp:RadioButtonList>

        <br />
        <asp:Label ID="Label10" runat="server" Text="10. I felt that I had nothing to look forward to "></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList10" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
            <asp:ListItem Value="3" Text="Agree"></asp:ListItem>
            <asp:ListItem Value="2" Text=""></asp:ListItem>
            <asp:ListItem Value="1" Text=""></asp:ListItem>
            <asp:ListItem Value="0" Text="Disagree"></asp:ListItem>
        </asp:RadioButtonList>

        <br />
        <asp:Label ID="Label11" runat="server" Text="11. I found myself getting agitated "></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList11" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
            <asp:ListItem Value="3" Text="Agree"></asp:ListItem>
            <asp:ListItem Value="2" Text=""></asp:ListItem>
            <asp:ListItem Value="1" Text=""></asp:ListItem>
            <asp:ListItem Value="0" Text="Disagree"></asp:ListItem>
        </asp:RadioButtonList>

        <br />
        <asp:Label ID="Label12" runat="server" Text="12. I found it difficult to relax  "></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList12" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
            <asp:ListItem Value="3" Text="Agree"></asp:ListItem>
            <asp:ListItem Value="2" Text=""></asp:ListItem>
            <asp:ListItem Value="1" Text=""></asp:ListItem>
            <asp:ListItem Value="0" Text="Disagree"></asp:ListItem>
        </asp:RadioButtonList>

        <br />
        <asp:Label ID="Label13" runat="server" Text="13. I felt down-hearted and blue  "></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList13" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
            <asp:ListItem Value="3" Text="Agree"></asp:ListItem>
            <asp:ListItem Value="2" Text=""></asp:ListItem>
            <asp:ListItem Value="1" Text=""></asp:ListItem>
            <asp:ListItem Value="0" Text="Disagree"></asp:ListItem>
        </asp:RadioButtonList>

        <br />
        <asp:Label ID="Label14" runat="server" Text="14. I was intolerant of anything that kept me from getting on with what I was doing   "></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList14" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
            <asp:ListItem Value="3" Text="Agree"></asp:ListItem>
            <asp:ListItem Value="2" Text=""></asp:ListItem>
            <asp:ListItem Value="1" Text=""></asp:ListItem>
            <asp:ListItem Value="0" Text="Disagree"></asp:ListItem>
        </asp:RadioButtonList>

        <br />
        <asp:Label ID="Label15" runat="server" Text="15. I felt I was close to panic "></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList15" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
            <asp:ListItem Value="3" Text="Agree"></asp:ListItem>
            <asp:ListItem Value="2" Text=""></asp:ListItem>
            <asp:ListItem Value="1" Text=""></asp:ListItem>
            <asp:ListItem Value="0" Text="Disagree"></asp:ListItem>
        </asp:RadioButtonList>

        <br />
        <asp:Label ID="Label16" runat="server" Text="16. I was unable to become enthusiastic about anything  "></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList16" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
            <asp:ListItem Value="3" Text="Agree"></asp:ListItem>
            <asp:ListItem Value="2" Text=""></asp:ListItem>
            <asp:ListItem Value="1" Text=""></asp:ListItem>
            <asp:ListItem Value="0" Text="Disagree"></asp:ListItem>
        </asp:RadioButtonList>

        <br />
        <asp:Label ID="Label17" runat="server" Text="17. I felt I wasn’t worth much as a person   "></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList17" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
            <asp:ListItem Value="3" Text="Agree"></asp:ListItem>
            <asp:ListItem Value="2" Text=""></asp:ListItem>
            <asp:ListItem Value="1" Text=""></asp:ListItem>
            <asp:ListItem Value="0" Text="Disagree"></asp:ListItem>
        </asp:RadioButtonList>

        <br />
        <asp:Label ID="Label18" runat="server" Text="18. I felt that I was rather touchy "></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList18" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
            <asp:ListItem Value="3" Text="Agree"></asp:ListItem>
            <asp:ListItem Value="2" Text=""></asp:ListItem>
            <asp:ListItem Value="1" Text=""></asp:ListItem>
            <asp:ListItem Value="0" Text="Disagree"></asp:ListItem>
        </asp:RadioButtonList>

        <br />
        <asp:Label ID="Label19" runat="server" Text="19. I was aware of the action of my heart in the absence of physical exertion (e.g. sense of heart rate increase, heart missing a beat) "></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList19" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
            <asp:ListItem Value="3" Text="Agree"></asp:ListItem>
            <asp:ListItem Value="2" Text=""></asp:ListItem>
            <asp:ListItem Value="1" Text=""></asp:ListItem>
            <asp:ListItem Value="0" Text="Disagree"></asp:ListItem>
        </asp:RadioButtonList>

        <br />
        <asp:Label ID="Label20" runat="server" Text="20. I felt scared without any good reason "></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList20" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
            <asp:ListItem Value="3" Text="Agree"></asp:ListItem>
            <asp:ListItem Value="2" Text=""></asp:ListItem>
            <asp:ListItem Value="1" Text=""></asp:ListItem>
            <asp:ListItem Value="0" Text="Disagree"></asp:ListItem>
        </asp:RadioButtonList>

        <br />
        <asp:Label ID="Label21" runat="server" Text="21. I felt that life was meaningless "></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList21" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="options">
            <asp:ListItem Value="3" Text="Agree"></asp:ListItem>
            <asp:ListItem Value="2" Text=""></asp:ListItem>
            <asp:ListItem Value="1" Text=""></asp:ListItem>
            <asp:ListItem Value="0" Text="Disagree"></asp:ListItem>
        </asp:RadioButtonList>
</asp:Content>
