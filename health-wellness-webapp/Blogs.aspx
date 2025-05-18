<%@ Page Title="Blogs" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="Blogs.aspx.vb" Inherits="health_wellness_webapp.Blogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/globals.css" rel="stylesheet" type="text/css" />
    <link href="styles/blogs.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <header>
            <h1>Mental Health & Wellness Blogs</h1>
            <nav aria-label="Create blog navigation">
                <asp:HyperLink NavigateUrl="~/CreateBlog.aspx" CssClass="button-primary" runat="server">
                    Create New Blog
                </asp:HyperLink>
            </nav>
        </header>

        <section aria-labelledby="blog-posts-heading">
            <h2 id="blog-posts-heading" class="visually-hidden">Blog Articles</h2>
            
            <article>
                <figure>
                    <img src="https://images.unsplash.com/photo-1491841550275-ad7854e35ca6" 
                         alt="Person meditating in natural environment" />
                    <figcaption>
                        <header>
                            <h3>5 Mindfulness Techniques for Daily Stress Relief</h3>
                            <p>
                                <cite>Authored by Dr. Sarah Johnson</cite>
                                <time datetime="2025-05-15">Published May 15, 2025</time>
                            </p>
                        </header>
                        <p>Practical mindfulness exercises to incorporate into daily routines...</p>
                        <footer>
                            <nav aria-label="Article tags">
                                <ul>
                                    <li>Mindfulness</li>
                                    <li>Stress Management</li>
                                    <li>Self-Care</li>
                                </ul>
                            </nav>
                            <asp:HyperLink NavigateUrl="~/BlogPost.aspx?id=1" CssClass="read-more" runat="server">
                                Continue Reading →
                            </asp:HyperLink>
                        </footer>
                    </figcaption>
                </figure>
            </article>

            <article>
                <figure>
                    <img src="https://images.unsplash.com/photo-1516321318423-f06f85e504b3" 
                         alt="Therapist and client in counseling session" />
                    <figcaption>
                        <header>
                            <h3>Normalizing Mental Health Care</h3>
                            <p>
                                <cite>Authored by Dr. Michael Chen</cite>
                                <time datetime="2025-05-10">Published May 10, 2025</time>
                            </p>
                        </header>
                        <p>Breaking down barriers to mental health accessibility...</p>
                        <footer>
                            <nav aria-label="Article tags">
                                <ul>
                                    <li>Therapy</li>
                                    <li>Mental Health</li>
                                    <li>Community</li>
                                </ul>
                            </nav>
                            <asp:HyperLink NavigateUrl="~/BlogPost.aspx?id=2" CssClass="read-more" runat="server">
                                Continue Reading →
                            </asp:HyperLink>
                        </footer>
                    </figcaption>
                </figure>
            </article>

            <article>
                <figure>
                    <img src="https://images.unsplash.com/photo-1454165804606-c3d57bc86b40" 
                         alt="Professional managing work stress" />
                    <figcaption>
                        <header>
                            <h3>Managing Workplace Anxiety</h3>
                            <p>
                                <cite>Authored by Dr. Priya Patel</cite>
                                <time datetime="2025-05-05">Published May 5, 2025</time>
                            </p>
                        </header>
                        <p>Strategies for high-pressure career environments...</p>
                        <footer>
                            <nav aria-label="Article tags">
                                <ul>
                                    <li>Workplace</li>
                                    <li>Anxiety</li>
                                    <li>Career</li>
                                </ul>
                            </nav>
                            <asp:HyperLink NavigateUrl="~/BlogPost.aspx?id=3" CssClass="read-more" runat="server">
                                Continue Reading →
                            </asp:HyperLink>
                        </footer>
                    </figcaption>
                </figure>
            </article>

            <article>
                <figure>
                    <img src="https://images.unsplash.com/photo-1529333166437-7750a6dd5a70" 
                         alt="Student studying for exams" />
                    <figcaption>
                        <header>
                            <h3>Academic Stress Management</h3>
                            <p>
                                <cite>Authored by Dr. James Wilson</cite>
                                <time datetime="2025-04-28">Published April 28, 2025</time>
                            </p>
                        </header>
                        <p>Healthy coping mechanisms for students...</p>
                        <footer>
                            <nav aria-label="Article tags">
                                <ul>
                                    <li>Education</li>
                                    <li>Students</li>
                                    <li>Stress</li>
                                </ul>
                            </nav>
                            <asp:HyperLink NavigateUrl="~/BlogPost.aspx?id=4" CssClass="read-more" runat="server">
                                Continue Reading →
                            </asp:HyperLink>
                        </footer>
                    </figcaption>
                </figure>
            </article>

            <footer>
                <nav aria-label="Blog pagination">
                    <button type="button" class="button-primary" onclick="loadMoreArticles()">
                        Load More Articles
                        <span class="visually-hidden">about mental health topics</span>
                    </button>
                </nav>
            </footer>
        </section>
    </main>

    <script>
        function loadMoreArticles() {
            const template = document.querySelector('article').cloneNode(true);
            document.querySelector('section').insertBefore(template, document.querySelector('footer'));
        }
    </script>
</asp:Content>