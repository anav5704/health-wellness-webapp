<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="About.aspx.vb" Inherits="health_wellness_webapp.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Meet Our Developers</h1>
    <section class ="team">
        <article class ="developer">
            <figure>
                <asp:Image ID="imgAnav" runat="server" AlternateText="Picture of Anav" Height="300px" ImageUrl="~/images/anav.jpg" Width="300px" />
                <figcaption>Anav Chand-S11221203</figcaption>
            </figure>
               <p class ="bio">An aspiring DevOps engineer, self-taught web developer, and second-year software engineering student @ USP.</p>
               <br />        
            <h4>Technology Skills</h4>
                <ul>
                    <li>Next js
                    <li>TypeScript
                    <li>PostgreSQL
                    <li>Docker
                </ul>
        </article>
        <br />
        <article class ="developer">
            <figure>
                <asp:Image ID="imgVishant" runat="server" AlternateText="Picture of Vishant" Height="300px" ImageUrl="~/images/vishant.jpg" Width="300px" />
                <figcaption>Vishant Kumar-S11230430</figcaption>
            </figure>
                <p class ="bio">A frontend Web Developer who is always keen in growing his knowledge in the world of Web Development.</p>
               <br />        
            <h4>Technology Skills</h4>
                <ul>
                    <li>React</li>
                    <li>HTML</li>
                    <li>ASP.NET</li>
                    <li>Javascript</li>
                </ul>
        </article>
        <br />
        <article class ="developer">
            <figure>
                <asp:Image ID="imgAryan" runat="server" AlternateText="Picture of Aryan" Height="300px" ImageUrl="~/images/aryan.jpg" Width="300px" />
                <figcaption>Aryan Singh-S11230987</figcaption>
            </figure>
               <p class ="bio">A backend Web Developer who is known for his technical expertise, analytical thinking, and excellent collaboration skills.</p>
            <br />   
            <h4>Technology Skills</h4>
               <ul>
                   <li>PHP</li>
                   <li>C#</li>
                   <li>Kotlin</li>
                   <li>Python</li>
              </ul>
        </article>
        <br />
        <article class ="developer">
            <figure>
                <asp:Image ID="imgZhixian" runat="server" AlternateText="Picture of Zhixian" Height="300px" ImageUrl="~/images/zhixian.jpg" Width="300px" />
                <figcaption>Zhixian Chen-S11230686</figcaption>
            </figure>
               <p class ="bio">A fullstack Web Developer who is known for his high level of competency in both frontend and backend languages.</p>
               <br />       
            <h4>Technology Skills</h4>
               <ul>
                   <li>Javascript</li>
                   <li>Node js</li>
                   <li>PostgreSQL</li>
                   <li>Django</li>
               </ul>
        </article>
        <br />
        <article class ="developer">
            <figure>
                <asp:Image ID="imgRohan" runat="server" AlternateText="Picture of Rohan" Height="300px" ImageUrl="~/images/rohan.jpg" Width="300px" />
                <figcaption>Rohan Nandan-S11234883</figcaption>
            </figure>
               <p class ="bio">A Passionate Software Engineer with 5+ years of experience in developing web applications and backend systems.</p>
               <br />        
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
