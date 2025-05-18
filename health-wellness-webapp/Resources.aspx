<%@ Page Title="Resources" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Resources.aspx.vb" Inherits="health_wellness_webapp.Resources" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/globals.css" rel="stylesheet" type="text/css" />
    <link href="styles/resource.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <section aria-labelledby="documents-heading">
            <h2 id="documents-heading">Documents & Sites</h2>
            
            <section class="resources-grid">
                <article>
                    <h3>Wellness Routine Guide</h3>
                    <p>A comprehensive guide to building healthy eating habits and routines</p> <br/>
                   <a href="\PDF Resource\Healthy Habits & Routines.pdf" class="primary-link" download="Healthy Habits & Routines.pdf"> Download </a>
                </article>

                <article>
                    <h3>Tips for Mental Wellbeing</h3>
                    <p>Practical steps to improve your mental health and daily wellbeing</p> <br/>
                    <a href="https://www.nhs.uk/mental-health/self-help/guides-tools-and-activities/five-steps-to-mental-wellbeing/"> Read More -> </a>
                </article>

                <article>
                    <h3>Mental Health Exercises</h3>
                    <p>Exercises to boost brain health and overall mental wellbeing</p> <br/>
                    <a href="https://www.calm.com/blog/mental-health-exercises"> Read More -> </a>
                </article>

                 <article>
                     <h3>Mental Health - MOH Fiji</h3>
                     <p>Information and resources about mental health from Fiji's Ministry of Health</p> <br/>
                     <a href="https://www.health.gov.fj/mental-health/"> Read More -> </a>
                 </article>
            </section>
        </section>

        <section aria-labelledby="external-links-heading">
            <h2 id="external-links-heading">External Links</h2>
            
            <section class="resources-grid">
                <article>
                    <h3>Wellness Community Forum</h3>
                    <p>A community space to connect and discuss wellness topics</p> <br/>
                    <a href="https://www.mentalhealthforum.net/forum/"> Visit Forum -> </a>
                </article>

                <article>
                    <h3>Counselling Helpline</h3>
                    <p>Information and contact details for Empower Pacific's Counselling Helpline</p> <br/>
                    <a href="https://findahelpline.com/organizations/empower-pacific-24-7-counselling-helpline"> View Details -> </a>
                </article>
            </section>
        </section>

        <section>
            <h2>Video Resources</h2>
            <section class="video-container">
                <article>
                    <h3>Mental Health Wellness Tips</h3>
                    <section class="video-wrapper">
                        <iframe src="https://www.youtube.com/embed/NQcYZplTXnQ" title="Mental Health Wellness Tips" allowfullscreen></iframe>
                    </section>
                </article>

                <article>
                    <h3>What is Anxiety?</h3>
                    <section class="video-wrapper">
                        <iframe src="https://www.youtube.com/embed/BVJkf8IuRjE" title="What is Anxiety?" allowfullscreen></iframe>
                    </section>
                </article>
            </section>
        </section>
    </main>
</asp:Content>