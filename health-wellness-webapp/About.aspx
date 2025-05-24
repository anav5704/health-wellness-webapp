<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="About.aspx.vb" Inherits="health_wellness_webapp.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Best Health | About</title>
    <meta name="description" content=" Meet the developers of this website." />
    <meta property="og:title" content="Best Health | About" />
    <meta property="og:description" content=" Meet the developers of this website." />
    <meta property="og:image" content="/images/og.png" />
    <link rel="icon" type="image/png" href="/images/favicon.ico" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Meet Our Developers</h1>
    <p class ="subtitle">This website was designed and built by the these five <br /> students who currently studying Software Engineering.</p>
    <br />
    <section class ="team">
        <article class ="developer">
            <figure>
                <asp:Image ID="imgAnav" runat="server" AlternateText="Picture of Anav" Title="Anav" Height="300px" ImageUrl="~/images/anav.jpg" Width="300px" />
                <figcaption>Anav Chand</figcaption>
            </figure>
               <p class ="bio">An aspiring DevOps engineer, self-taught web developer, and second-year software engineering student @ USP.</p>     
            <h4>Technology Skills</h4>
                <ul>
                    <li>Next js
                    <li>TypeScript
                    <li>PostgreSQL
                    <li>Docker
                </ul>
        </article>
        <article class ="developer">
            <figure>
                <asp:Image ID="imgVishant" runat="server" AlternateText="Picture of Vishant" Title="Vishant" Height="300px" ImageUrl="~/images/vishant.jpg" Width="300px" />
                <figcaption>Vishant Kumar</figcaption>
            </figure>
                <p class ="bio">A frontend Web Developer who is always keen in growing his knowledge in the world of Web Development.</p>      
            <h4>Technology Skills</h4>
                <ul>
                    <li>React</li>
                    <li>HTML</li>
                    <li>ASP.NET</li>
                    <li>Javascript</li>
                </ul>
        </article>
        <article class ="developer">
            <figure>
                <asp:Image ID="imgAryan" runat="server" AlternateText="Picture of Aryan" Title="Aryan" Height="300px" ImageUrl="~/images/aryan.jpg" Width="300px" />
                <figcaption>Aryan Singh</figcaption>
            </figure>
               <p class ="bio">A backend Web Developer who is known for his analytical thinking and excellent collaboration skills.</p>  
            <h4>Technology Skills</h4>
               <ul>
                   <li>PHP</li>
                   <li>C#</li>
                   <li>Kotlin</li>
                   <li>Python</li>
              </ul>
        </article>
        <article class ="developer">
            <figure>
                <asp:Image ID="imgZhixian" runat="server" AlternateText="Picture of Zhixian" Title="Zhixian" Height="300px" ImageUrl="~/images/zhixian.jpg" Width="300px" />
                <figcaption>Zhixian Chen</figcaption>
            </figure>
               <p class ="bio">A fullstack Web Developer who is known for his high level of competency in both frontend and backend languages.</p>      
            <h4>Technology Skills</h4>
               <ul>
                   <li>Javascript</li>
                   <li>Node js</li>
                   <li>PostgreSQL</li>
                   <li>Django</li>
               </ul>
        </article>
        <article class ="developer">
            <figure>
                <asp:Image ID="imgRohan" runat="server" AlternateText="Picture of Rohan" Title="Rohan" Height="300px" ImageUrl="~/images/rohan.jpg" Width="300px" />
                <figcaption>Rohan Nandan</figcaption>
            </figure>
               <p class ="bio">A Passionate Software Engineer with 2 years of experience in developing web applications and backend systems.</p>       
            <h4>Technology Skills</h4>
                <ul>
                    <li>Kotlin</li>
                    <li>Perl</li>
                    <li>Go</li>
                    <li>Visual Basic</li>
                </ul>
        </article>
    </section>
</asp:Content>
