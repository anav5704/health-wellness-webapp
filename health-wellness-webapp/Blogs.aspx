<%@ Page Title="Blogs" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="Blogs.aspx.vb" Inherits="health_wellness_webapp.Blogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/globals.css" rel="stylesheet" type="text/css" />
    <link href="styles/blogs.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <section class="blog-grid" aria-labelledby="blog-posts-heading">
       <h1 id="blogs-header" class="blogs-header"> Blog Articles</h1>

        <article class="blog-card">
            <figure class="blog-image-container">
                <img src="\images\Blogs_1.png" alt="Photo of food" class="blog-image" loading="lazy"/>
            </figure>
            <section class="blog-content">
                <section class="blog-header">
                    <h3 class="blog-title">Techniques for Daily Stress Relief</h3>
                    <article class="blog-meta">
                        <span class="blog-author">Wes Brown,</span>
                        <time datetime="2025-04-13" class="blog-date">April 13, 2025</time>
                    </article>
                </section>
                <p class="blog-excerpt">Practical mindfulness exercises to incorporate into daily routines...</p>
                <footer class="blog-footer">
                    <ul class="blog-tags">
                        <li>Mindfulness</li>
                        <li>Stress Management</li>
                        <li>Self-Care</li>
                    </ul>
                    <asp:HyperLink NavigateUrl="https://aitherapist.io/resources/blog/posts/mindfulness-techniques-stress-relief" runat="server"> Continue Reading → </asp:HyperLink>
                </footer>
            </section>
        </article>

        <article class="blog-card">
            <figure class="blog-image-container">
                <img src="\images\Blogs_2.jpg" alt="Two people holding hands" class="blog-image" loading="lazy"/>
            </figure>
            <section class="blog-content">
                <section class="blog-header">
                    <h3 class="blog-title">Nutrition Tips for Mental Health</h3>
                    <article class="blog-meta">
                        <span class="blog-author">Shai Cohen,</span>
                        <time datetime="2025-04-06" class="blog-date">April 6, 2025</time>
                    </article>
                </section>
                <p class="blog-excerpt">Fuel your brain with foods that sharpen focus and stabilize mood...</p>
                <footer class="blog-footer">
                    <ul class="blog-tags">
                        <li>Nutrition</li>
                        <li>Brain Health</li>
                        <li>Energy</li>
                    </ul>
                    <asp:HyperLink NavigateUrl="https://blendofbites.com/foods-to-boost-mental-clarity-and-concentration/" runat="server"> Continue Reading → </asp:HyperLink>
                </footer>
            </section>
        </article>

        <article class="blog-card">
            <figure class="blog-image-container">
                <img src="\images\Blogs_3.jpg" alt="Two people journaling in notebooks" class="blog-image" loading="lazy"/>
            </figure>
            <section class="blog-content">
                <section class="blog-header">
                    <h3 class="blog-title">Journaling for Emotional Health</h3>
                    <article class="blog-meta">
                        <span class="blog-author">Liam John,</span>
                        <time datetime="2025-03-18" class="blog-date">March 18, 2025</time>
                    </article>
                </section>
                <p class="blog-excerpt">Keeping a journal is more than just jotting down your thoughts...</p>
                <footer class="blog-footer">
                    <ul class="blog-tags">
                        <li>Journaling</li>
                        <li>Therapy</li>
                        <li>Reflection</li>
                    </ul>
                    <asp:HyperLink NavigateUrl="https://dhwblog.dukehealth.org/the-power-of-journaling-for-well-being-a-path-to-self-discovery-and-healing/" runat="server"> Continue Reading → </asp:HyperLink>
                </footer>
            </section>
        </article>

        <article class="blog-card">
            <figure class="blog-image-container">
                <img src="\images\Blogs_5.jpg" alt="Two people talking to each other (Counselling)" class="blog-image"  loading="lazy"/>
            </figure>
            <section class="blog-content">
                <section class="blog-header">
                    <h3 class="blog-title">How to Change your Thoughts</h3>
                    <article class="blog-meta">
                        <span class="blog-author">Ben Collings, </span>
                        <time datetime="2025-03-29" class="blog-date">March 29, 2025</time>
                    </article>
                </section>
                <p class="blog-excerpt">Explore how therapy changes your life...</p>
                <footer class="blog-footer">
                    <ul class="blog-tags">
                        <li>Journaling</li>
                        <li>Therapy</li>
                        <li>Reflection</li>
                    </ul>
                    <asp:HyperLink NavigateUrl="https://psychcentral.com/blog/caregivers/2020/09/how-to-change-your-behaviors-thoughts#1"  runat="server"> Continue Reading → </asp:HyperLink>
                </footer>
            </section>
        </article>

        <article class="blog-card">
            <figure class="blog-image-container">
                <img src="\images\Blogs_4.jpg" alt="Person journaling in a notebook" class="blog-image"  loading="lazy"/>
            </figure>
            <section class="blog-content">
                <section class="blog-header">
                    <h3 class="blog-title">Journals - A Life Saver</h3>
                    <article class="blog-meta">
                        <span class="blog-author">Ollie Aplin,</span>
                        <time datetime="2025-03-18" class="blog-date">March 18, 2025</time>
                    </article>
                </section>
                <p class="blog-excerpt">Explore how daily journaling can improve mood, focus, and clarity...</p>
                <footer class="blog-footer">
                    <ul class="blog-tags">
                        <li>Energy</li>
                        <li>Therapy</li>
                        <li>Peace</li>
                    </ul>
                    <asp:HyperLink NavigateUrl="https://mindjournals.com/blogs/read/the-mindjournal-story"  runat="server"> Continue Reading → </asp:HyperLink>
                </footer>
            </section>
        </article>
    </section>
</asp:Content>