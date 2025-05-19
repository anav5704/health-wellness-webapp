<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Therapists.aspx.vb" Inherits="health_wellness_webapp.Therapists" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Therapists</h1>

    <a href="Booking.aspx?therapist=JohnDoe">
        <section class="therapist-card">
            <figure class="image-cell">
                <img src="/images/Therapist1.jpg" alt="Therapist" width="200" height="200">
            </figure>
            <article class="content-cell">
                <h3 class="therapist-name">John Doe</h3>
                <p class="therapist-description">Specialist in depression disorder. Experienced in CBT and mindfulness-based therapies. Offers both online and offline sessions. Fluent in English and Spanish.</p>
                <ul class="therapist-tags">
                    <li>Depression</li>
                    <li>CBT</li>
                    <li>Mindfulness</li>
                    <li>Online/Offline</li>
                    <li>Bilingual</li>
                </ul>
                <span class="therapist-price">$800.00</span>
            </article>
        </section>
    </a>


    <a href="Booking.aspx?therapist=JameSmith">
        <section class="therapist-card">
            <figure class="image-cell">
                <img src="/images/therapist2.jpg" alt="Therapist Image" width="200" height="200">
            </figure>
            <article class="content-cell">
                <h3 class="therapist-name">Jame Smith</h3>
                <p class="therapist-description">Specialist in anxiety disorder, including generalized anxiety, social anxiety, and panic disorders. Provide personalized therapy plans incorporating exposure therapy and relaxation techniques. Offers offline sesion only. English Only.</p>
                <ul class="therapist-tags">
                    <li>Anexity</li>
                    <li>Exposure Therapy</li>
                    <li>Relaxation</li>
                    <li>Offline</li>
                    <li>English</li>
                </ul>
                <span class="therapist-price">$800.00</span>
            </article>
        </section>
    </a>

    <a href="Booking.aspx?therapist=CharlesDow">
        <section class="therapist-card">
            <figure class="image-cell">
                <img src="/images/therapist3.jpg" alt="Therapist Image" width="200" height="200">
            </figure>
            <article class="content-cell">
                <h3 class="therapist-name">Charles Dow</h3>
                <p class="therapist-description">Specialist in schizophrenia. Utilizes cognitive rehabilitation and social skills training. Provides online and offline sessions. Fluent in English and Spanish</p>
                <ul class="therapist-tags">
                    <li>Schizophrenia</li>
                    <li>Cognitive Rehabilitation</li>
                    <li>Social Skills</li>
                    <li>Online/Offline</li>
                    <li>Bilingual</li>
                </ul>
                <span class="therapist-price">$800.00</span>
            </article>
        </section>
    </a>

    <a href="Booking.aspx?therapist=EmilyJones">
        <section class="therapist-card">
            <figure class="image-cell">
                <img src="/images/therapist4.jpg" alt="Therapist Image" width="200" height="200">
            </figure>
            <article class="content-cell">
                <h3 class="therapist-name">Emily Jones</h3>
                <p class="therapist-description">Specialist in bipolar. Experienced in CBT and medication management. Offers both online and offline sessions. Fluent in English and Spanish.</p>
                <ul class="therapist-tags">
                    <li>Bipolar</li>
                    <li>CBT</li>
                    <li>Medication Management</li>
                    <li>Online/Offline</li>
                    <li>Bilingual</li>
                </ul>
                <span class="therapist-price">$800.00</span>
            </article>
        </section>
    </a>
</asp:Content>
