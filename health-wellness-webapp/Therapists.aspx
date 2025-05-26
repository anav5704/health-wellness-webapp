<%@ Page Title="Therapist" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Therapists.aspx.vb" Inherits="health_wellness_webapp.Therapists" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Best Health | Therapist List</title>
    <meta name="description" content="Check therapist details to find the best therapist for you" />
    <meta property="og:title" content="Best Health | Therapists" />
    <meta property="og:description" content="Check therapist details to find the best therapist for you" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Our Therapists</h1>
    <p class="subtitle">View therapist details to find which one is best for you.</p>
    <a href="Booking.aspx?therapistId=1">
        <section class="therapist-card">
            <figure class="image-cell">
                <img src="/images/Therapist1.jpg" title="Therapist John Doe" alt="Therapist John Doe" loading="lazy" width="200" height="200">
            </figure>
            <article class="content-cell">
                <p class="therapist-name">John Doe</p>
                <p class="therapist-description">Specialist in depression disorder. Experienced in CBT and mindfulness-based therapies. Offers both online and offline sessions. Fluent in English and Spanish.</p>
                <ul class="therapist-tags">
                    <li>Depression</li>
                    <li>CBT</li>
                    <li>Mindfulness</li>
                    <li>Online/Offline</li>
                    <li>Bilingual</li>
                </ul>
                <p class="therapist-price">$150.00</p>
            </article>
        </section>
    </a>

    <a href="Booking.aspx?therapistId=2">
        <section class="therapist-card">
            <figure class="image-cell">
                <img src="/images/therapist2.jpg" title="Therapist Jame Smith" alt="Therapist Jame Smith" loading="lazy" width="200" height="200">
            </figure>
            <article class="content-cell">
                <p class="therapist-name">Jame Smith</p>
                <p class="therapist-description">Specialist in anxiety disorder, including generalized anxiety, social anxiety, and panic disorders. Provide personalized therapy plans incorporating exposure therapy and relaxation techniques. Offers offline sesion only. English Only.</p>
                <ul class="therapist-tags">
                    <li>Anexity</li>
                    <li>Exposure Therapy</li>
                    <li>Relaxation</li>
                    <li>Offline</li>
                    <li>English</li>
                </ul>
                <p class="therapist-price">$125.00</p>
            </article>
        </section>
    </a>

    <a href="Booking.aspx?therapistId=3">
        <section class="therapist-card">
            <figure class="image-cell">
                <img src="/images/therapist3.jpg" title="Therapist Charles Dow" alt="Therapist Charles Dow" loading="lazy" width="200" height="200">
            </figure>
            <article class="content-cell">
                <p class="therapist-name">Charles Dow</p>
                <p class="therapist-description">Specialist in schizophrenia. Utilizes cognitive rehabilitation and social skills training. Provides online and offline sessions. Fluent in English and Spanish</p>
                <ul class="therapist-tags">
                    <li>Schizophrenia</li>
                    <li>Cognitive Rehabilitation</li>
                    <li>Social Skills</li>
                    <li>Online/Offline</li>
                    <li>Bilingual</li>
                </ul>
                <p class="therapist-price">$200.00</p>
            </article>
        </section>
    </a>

    <a href="Booking.aspx?therapistId=4">
        <section class="therapist-card">
            <figure class="image-cell">
                <img src="/images/therapist4.jpg" title="Therapist Emily Jones" alt="Therapist Emily Jones" loading="lazy" width="200" height="200">
            </figure>
            <article class="content-cell">
                <p class="therapist-name">Emily Jones</p>
                <p class="therapist-description">Specialist in bipolar. Experienced in CBT and medication management. Offers both online and offline sessions. Fluent in English and Spanish.</p>
                <ul class="therapist-tags">
                    <li>Bipolar</li>
                    <li>CBT</li>
                    <li>Medication Management</li>
                    <li>Online/Offline</li>
                    <li>Bilingual</li>
                </ul>
                <p class="therapist-price">$175.00</p>
            </article>
        </section>
    </a>

</asp:Content>
