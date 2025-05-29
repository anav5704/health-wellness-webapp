<%@ Page Title="Blogs" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="Blogs.aspx.vb" Inherits="health_wellness_webapp.Blogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Best Health | Blogs</title>
    <meta name="description" content=" Blogs page for our website." />
    <meta property="og:title" content="Best Health | Blogs" />
    <meta property="og:description" content=" Discover expert insights on wellness, mindfulness, and mental health through articles offering practical tips for stress relief, nutrition, journaling, and therapeutic strategies.." />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 id="blogs-header" class="blogs-header">Blog Articles</h1>

    <p class="subtitle">Stay informed through testimonials and expert insights on wellness, click to get detail.</p>

    <asp:Panel ID="pnlSearch" runat="server" CssClass="search-panel">
        <asp:TextBox ID="txtSearch" runat="server" CssClass="search-box" Placeholder="Search blogs by title, author, tag or description..."></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="search-button" OnClick="btnSearch_Click" />
    </asp:Panel>

    <asp:Label ID="lblSearchResult" runat="server" CssClass="search-status" />

    <asp:Repeater ID="rptBlogs" runat="server">
        <ItemTemplate>
            <a href='<%# Eval("ReadUrl") %>' class="blog-card-link">
                <section class="blog-card">
                    <figure class="blog-image-container">
                        <img src='<%# Eval("ImageUrl") %>' alt='<%# Eval("BlogTitle") %>' title='<%# Eval("BlogTitle") %>' width="300" height="200" loading="lazy" />
                    </figure>
                    <section class="blog-content">
                        <section class="blog-header">
                            <h3 class="blog-title"><%# Eval("BlogTitle") %></h3>
                            <article class="blog-meta">
                                <cite class="blog-author"><%# Eval("Author") %>,</cite>
                                <time datetime='<%# Eval("PublishDate", "{0:yyyy-MM-dd}") %>'
                                    class="blog-date">
                                    <%# Eval("PublishDate", "{0:MMMM d, yyyy}") %>
                                </time>
                            </article>
                            <p class="blog-excerpt"><%# Eval("Excerpt") %></p>
                            <ul class="blog-tags">
                                <ul class="blog-tags">
                                    <%# "<li>" & _
        String.Join("</li><li>", Eval("Tags").ToString().Split(","c)) &
                                                "</li>" %>
                                </ul>
                            </ul>
                        </section>
                    </section>
                </section>
            </a>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
