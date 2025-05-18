<%@ Page Title="Blogs" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="Blogs.aspx.vb" Inherits="health_wellness_webapp.Blogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/globals.css" rel="stylesheet" type="text/css" />
    <link href="styles/blogs.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="blogs-container">

        <section class="blog-grid" aria-labelledby="blog-posts-heading">
            <h2 id="blog-posts-heading" class="visually-hidden">Blog Articles</h2>

            <article class="blog-card">
                <img src="\images\Blogs_1.png" alt="Photo of food" class="blog-image" />
                <div class="blog-content">
                    <header class="blog-header">
                        <h3 class="blog-title">5 Mindfulness Techniques for Daily Stress Relief</h3>
                        <div class="blog-meta">
                            <span class="blog-author">Wes Brown,</span>
                            <time datetime="2025-04-30" class="blog-date">April 13, 2025</time>
                        </div>
                    </header>
                    <p class="blog-excerpt">Practical mindfulness exercises to incorporate into daily routines...</p>
                    <footer class="blog-footer">
                        <ul class="blog-tags">
                            <li>Mindfulness</li>
                            <li>Stress Management</li>
                            <li>Self-Care</li>
                        </ul>
                        <asp:HyperLink NavigateUrl="https://aitherapist.io/resources/blog/posts/mindfulness-techniques-stress-relief" runat="server"> Continue Reading → </asp:HyperLink>
                    </footer>
                </div>
            </article> <br/>

            <article class="blog-card">
                <img src="\images\Blogs_2.jpg" alt="Two people holding hands" class="blog-image" />
                <div class="blog-content">
                    <header class="blog-header">
                        <h3 class="blog-title">Nutrition Tips for Mental Health</h3>
                        <div class="blog-meta">
                            <span class="blog-author">Shai Cohen,</span>
                            <time datetime="2025-04-30" class="blog-date">April 6, 2025</time>
                        </div>
                    </header>
                    <p class="blog-excerpt">Fuel your brain with foods that sharpen focus and stabilize mood...</p>
                    <footer class="blog-footer">
                        <ul class="blog-tags">
                            <li>Nutrition</li>
                            <li>Brain Health</li>
                            <li>Energy</li>
                        </ul>
                        <asp:HyperLink NavigateUrl="https://blendofbites.com/foods-to-boost-mental-clarity-and-concentration/" runat="server"> Continue Reading → </asp:HyperLink>
                    </footer>
                </div>
            </article> <br/>

            <article class="blog-card">
                <img src="\images\Blogs_3.jpg" alt="Two people journaling in notebooks" class="blog-image" />
                <div class="blog-content">
                    <header class="blog-header">
                        <h3 class="blog-title">Journaling for Emotional Health</h3>
                        <div class="blog-meta">
                            <span class="blog-author">Liam John,</span>
                            <time datetime="2025-03-18" class="blog-date">March 18, 2025</time>
                        </div>
                    </header>
                    <p class="blog-excerpt">Keeping a journal is more than just jotting down your thoughts;</p>
                    <footer class="blog-footer">
                        <ul class="blog-tags">
                            <li>Journaling</li>
                            <li>Therapy</li>
                            <li>Reflection</li>
                        </ul>
                        <asp:HyperLink NavigateUrl="https://dhwblog.dukehealth.org/the-power-of-journaling-for-well-being-a-path-to-self-discovery-and-healing/" runat="server"> Continue Reading → </asp:HyperLink>
                    </footer>
                </div>
            </article> <br/>

            <article class="blog-card">
                <img src="\images\Blogs_4.jpg" alt="Person journaling in a notebook" class="blog-image" />
                <div class="blog-content">
                    <header class="blog-header">
                        <h3 class="blog-title">Journals - A Life Saver</h3>
                        <div class="blog-meta">
                            <span class="blog-author">Ollie Aplin,</span>
                            <time datetime="2025-03-18" class="blog-date">March 18, 2025</time>
                        </div>
                    </header>
                    <p class="blog-excerpt">Explore how daily journaling can improve mood, focus, and clarity...</p>
                    <footer class="blog-footer">
                        <ul class="blog-tags">
                            <li>Journaling</li>
                            <li>Therapy</li>
                            <li>Reflection</li>
                        </ul>
                        <asp:HyperLink NavigateUrl="https://mindjournals.com/blogs/read/the-mindjournal-story"  runat="server"> Continue Reading → </asp:HyperLink>
                    </footer>
                </div>
            </article> 
        </section>
    </main>
</asp:Content>
