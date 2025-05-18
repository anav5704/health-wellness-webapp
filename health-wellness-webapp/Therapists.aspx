<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Therapists.aspx.vb" Inherits="health_wellness_webapp.Therapists" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <a href="Booking.aspx?therapist=JohnDoe">
        <table class="card">
            <tr>
                <td class="image">
                    <img src="/images/Therapist1.jpg" alt="Therapist" width="200" height="200">
                </td>
                <td class="content">
                    <h3 class="name">John Doe</h3>
                    <p class="description">Specialist in depression disorder. Experienced in CBT and mindfulness-based therapies. Offers both online and offline sessions. Fluent in English and Spanish.</p>
                    <ul class="tags">
                        <li>Depression</li>
                        <li>CBT</li>
                        <li>Mindfulness</li>
                        <li>Online/Offline</li>
                        <li>Bilingual</li>
                    </ul>
                    <span class="price">$800.00</span>
                </td>
            </tr>
        </table>
    </a>

    <a href="Booking.aspx?therapist=JameSmith">
        <table class="card">
            <tr>
                <td class="image">
                    <img src="/images/therapist2.jpg" alt="Therapist" width="200" height="200">
                </td>
                <td class="content">
                    <h3 class="name">Jame Smith</h3>
                    <p class="description">Specialist in anxiety disorder, including generalized anxiety, social anxiety, and panic disorders. Provide personalized therapy plans incorporating exposure therapy and relaxation techniques. Offers offline sesion only. English Only.</p>
                    <ul class="tags">
                        <li>Anexity</li>
                        <li>Exposure Therapy</li>
                        <li>Relaxation</li>
                        <li>Offline</li>
                        <li>English</li>
                    </ul>
                    <span class="price">$800.00</span>
                </td>
            </tr>
        </table>
    </a>

    <a href="Booking.aspx?therapist=CharlesDow">
        <table class="card">
            <tr>
                <td class="image">
                    <img src="/images/therapist3.jpg" alt="Therapist" width="200" height="200">
                </td>
                <td class="content">
                    <h3 class="name">Charles Dow</h3>
                    <p class="description">Specialist in schizophrenia. Utilizes cognitive rehabilitation and social skills training. Provides online and offline sessions. Fluent in English and Spanish</p>
                    <ul class="tags">
                        <li>Schizophrenia</li>
                        <li>Cognitive Rehabilitation</li>
                        <li>Social Skills</li>
                        <li>Online/Offline</li>
                        <li>Bilingual</li>
                    </ul>
                    <span class="price">$800.00</span>
                </td>
            </tr>
        </table>
    </a>

    <a href="Booking.aspx?therapist=EmilyJones">
        <table class="card">
            <tr>
                <td class="image">
                    <img src="/images/therapist4.jpg" alt="Therapist" width="200" height="200">
                </td>
                <td class="content">
                    <h3 class="name">Emily Jones</h3>
                    <p class="description">Specialist in bipolar. Experienced in CBT and medication management. Offers both online and offline sessions. Fluent in English and Spanish.\.</p>
                    <ul class="tags">
                        <li>Bipolar</li>
                        <li>CBT</li>
                        <li>Medication Management</li>
                        <li>Online/Offline</li>
                        <li>Bilingual</li>
                    </ul>
                    <span class="price">$800.00</span>
                </td>
            </tr>
        </table>
    </a>
</asp:Content>
