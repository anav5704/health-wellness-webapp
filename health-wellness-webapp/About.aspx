<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="About.aspx.vb" Inherits="health_wellness_webapp.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/globals.css" rel="stylesheet" type="text/css" />
    <link href="styles/about.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Meet Our Developers</h1>
    <section class ="team">
        <section class ="developer">
            <figure>
                <asp:Image ID="imgAnav" runat="server" AlternateText="Picture of Anav" Height="400px" ImageUrl="~/images/anav.jpg" Width="300px" />
                <figcaption>Anav Chand</figcaption>
            </figure>
            <section class ="bio">
                <p>An aspiring DevOps engineer, self-taught web developer, and second-year software engineering student @ USP.</p>
            </section>
            <section class ="tech-skills">
                <h4>Technology Skills</h4>
                <ul>
                    <li>React</li>
                    <li>Node js</li>
                    <li>Typescript</li>
                    <li>Nginx</li>
                </ul>
            </section>
        </section>
        <br />
        <section class ="developer">
            <figure>
                <asp:Image ID="imgVishant" runat="server" AlternateText="Picture of Vishant" Height="400px" ImageUrl="~/images/vishant.jpg" Width="300px" />
                <figcaption>Vishant Kumar</figcaption>
            </figure>
            <section class ="bio">
                <p>A frontend Web Developer who is always keen in growing his knowledge in the world of Web Development.</p>
            </section>
            <section class ="tech-skills">
                <h4>Technology Skills</h4>
                <ul>
                    <li>React</li>
                    <li>HTML</li>
                    <li>ASP.NET</li>
                    <li>Javascript</li>
                </ul>
            </section>
        </section>
        <br />
        <section class ="developer">
            <figure>
                <asp:Image ID="imgAryan" runat="server" AlternateText="Picture of Aryan" Height="400px" ImageUrl="~/images/aryan.jpg" Width="300px" />
                <figcaption>Aryan Singh</figcaption>
            </figure>
            <section class ="bio">
                <p>A backend Web Developer who is known for his technical expertise, analytical thinking, and excellent collaboration skills.</p>
            </section>
            <section class ="tech-skills">
                <h4>Technology Skills</h4>
                <ul>
                    <li>PHP</li>
                    <li>C#</li>
                    <li>Kotlin</li>
                    <li>Python</li>
                </ul>
            </section>
        </section>
        <br />
        <section class ="developer">
            <figure>
                <asp:Image ID="imgZhixian" runat="server" AlternateText="Picture of Zhixian" Height="400px" ImageUrl="~/images/zhixian.jpg" Width="300px" />
                <figcaption>Zhixian Chen</figcaption>
            </figure>
            <section class ="bio">
                <p>A fullstack Web Developer who is known for his high level of competency in both frontend and backend languages.</p>
            </section>
            <section class ="tech-skills">
                <h4>Technology Skills</h4>
                <ul>
                    <li>Javascript</li>
                    <li>Node js</li>
                    <li>PostgreSQL</li>
                    <li>Django</li>
                </ul>
            </section>
        </section>
        <br />
        <section class ="developer">
            <figure>
                <asp:Image ID="imgRohan" runat="server" AlternateText="Picture of Rohan" Height="400px" ImageUrl="~/images/rohan.jpg" Width="300px" />
                <figcaption>Rohan Nandan</figcaption>
            </figure>
            <section class ="bio">
                <p>A Passionate Software Engineer with 5+ years of experience in developing web applications and backend systems.</p>
            </section>
            <section class ="tech-skills">
                <h4>Technology Skills</h4>
                <ul>
                    <li>Kotlin</li>
                    <li>Perl</li>
                    <li>Go</li>
                    <li>Visual Basic</li>
                </ul>
            </section>
        </section>
    </section>
</asp:Content>
