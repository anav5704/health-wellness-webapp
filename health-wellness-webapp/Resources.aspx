<%@ Page Title="Resources" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Resources.aspx.vb" Inherits="health_wellness_webapp.Resources" %>
    
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Best Health | Resources</title>
    <meta name="description" content=" Resources page for our website." />
    <meta property="og:title" content="Best Health | Resources" />
    <meta property="og:description" content=" Resources page for our website." />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <section aria-labelledby="documents-heading">
            <h1 id="documents-heading">Documents</h1>

            <section class="resources-grid">
                <article>
                    <h3>Wellness Routine Guide</h3>
                    <p>A comprehensive guide to building healthy eating habits and routines</p>
                   <a href="\PDF Resource\Healthy Habits & Routines.pdf" class="secondary-link" download="Healthy Habits & Routines.pdf">
                            Download <i class="fa-solid fa-download"></i> </a>
                </article>

                <article>
                    <h3>Mental Health Guide</h3>
                    <p>A walkthrough on understanding mental and emotional wellbeing</p>
                   <a href="\PDF Resource\Mental & Emotional Wellbeing Guide.pdf" class="secondary-link" download=="Mental & Emotional Wellbeing Guide.pdf">
                       Download <i class="fa-solid fa-download"></i> </a>
                </article>
            </section>
        </section>

        <section aria-labelledby="external-links-heading">
            <h2 id="external-links-heading">External Links</h2>
            
            <section class="resources-grid">
                <article>
                    <h3>Wellness Community Forum</h3>
                    <p>A community space to connect and discuss wellness topics</p>
                    <a href="https://www.mentalhealthforum.net/forum/"> Visit Forum -> </a>
                </article>

                <article>
                    <h3>Counselling Helpline</h3>
                    <p>Information and contact details for Empower Pacific's Counselling Helpline</p>
                    <a href="https://findahelpline.com/organizations/empower-pacific-24-7-counselling-helpline"> View Details -> </a>
                </article>
            </section>
        </section>

        <section>
            <h2>Video Resources</h2>
                <section class="video-container">
                  <section class="video-box">
                    <h3>Mental Health Tips</h3>
                        <section class="video-wrapper">
                         <iframe src="https://www.youtube.com/embed/NQcYZplTXnQ" title="Mental Health Wellness Tips" allowfullscreen></iframe>
                        </section>
                  </section>

                  <section class="video-box">
                    <h3>What is Anxiety?</h3>
                        <section class="video-wrapper">
                            <iframe src="https://www.youtube.com/embed/BVJkf8IuRjE" title="What is Anxiety?" allowfullscreen></iframe>
                        </section>
                  </section>
                </section>
        </section>
</asp:Content>