<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="About.aspx.vb" Inherits="health_wellness_webapp.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Best Health | About</title>
    <meta name="description" content=" Meet the developers of this website." />
    <meta property="og:title" content="Best Health | About" />
    <meta property="og:description" content=" Meet the developers of this website." />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Our Developers</h1>
    <p class ="subtitle">This website was designed and developed by these five Software Engineering students.</p>
    <br />
    <section class ="team">
        <article class ="developer">
            <figure>
                <img src="images/anav.jpg" alt="Picture of Anav" title="Anav" height="300" width="300" loading="lazy" />
                <figcaption>Anav Chand</figcaption>
            </figure>
               <p class ="bio">An aspiring DevOps engineer, self-taught web developer, and second-year software engineering student @ USP.</p>     
            <p class="tech-title">Technology Skills</p>
                <ul>
                    <li>Next js</li>
                    <li>TypeScript</li>
                    <li>PostgreSQL</li>
                    <li>Docker</li>
                </ul>
        </article>
        <article class ="developer">
            <figure>
                <img src="images/vishant.jpg" alt="Picture of Vishant" title="Vishant" height="300" width="300" loading="lazy" />
                <figcaption>Vishant Kumar</figcaption>
            </figure>
                <p class ="bio">A frontend Web Developer who is always keen in growing his knowledge in the world of Web Development.</p>      
            <p class="tech-title">Technology Skills</p>
                <ul>
                    <li>C++</li>
                    <li>HTML</li>
                    <li>ASP.NET</li>
                    <li>Javascript</li>
                </ul>
        </article>
        <article class ="developer">
            <figure>
                <img src="images/aryan.jpg" alt="Picture of Aryan" title="Aryan" height="300" width="300" loading="lazy" />
                <figcaption>Aryan Singh</figcaption>
            </figure>
               <p class ="bio">A backend Web Developer who is known for his analytical thinking, technical expertise and excellent collaboration skills.</p>  
            <p class="tech-title">Technology Skills</p>
               <ul>
                   <li>PHP</li>
                   <li>C#</li>
                   <li>Kotlin</li>
                   <li>Python</li>
              </ul>
        </article>
        <article class ="developer">
            <figure>
               <img src="images/zhixian.jpg" alt="Picture of Zhixian" title="Zhixian" height="300" width="300" loading="lazy" />
                <figcaption>Zhixian Chen</figcaption>
            </figure>
               <p class ="bio">A fullstack Web Developer who is known for his high level of competency in both frontend and backend languages.</p>      
            <p class="tech-title">Technology Skills</p>
               <ul>
                   <li>Javascript</li>
                   <li>Node js</li>
                   <li>PostgreSQL</li>
                   <li>Django</li>
               </ul>
        </article>
        <article class ="developer">
            <figure>
               <img src="images/rohan.jpg" alt="Picture of Rohan" title="Rohan" height="300" width="300" loading="lazy" />
                <figcaption>Rohan Nandan</figcaption>
            </figure>
               <p class ="bio">A Passionate Software Engineer with 2 years of experience in developing web applications and backend systems.</p>       
            <p class="tech-title">Technology Skills</p>
                <ul>
                    <li>Kotlin</li>
                    <li>Godot</li>
                    <li>Go</li>
                    <li>Visual Basic</li>
                </ul>
        </article>
    </section>
</asp:Content>
