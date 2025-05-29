<%@ Page Title="Therapist" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Therapists.aspx.vb" Inherits="health_wellness_webapp.Therapists" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Best Health | Therapist List</title>
    <meta name="description" content="Check therapist details to find the best therapist for you" />
    <meta property="og:title" content="Best Health | Therapists" />
    <meta property="og:description" content="Check therapist details to find the best therapist for you" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:AccessDataSource ID="adsTherapistList" runat="server" DataFile="~/App_Data/Webapp.accdb" SelectCommand="SELECT Therapist_Id, Therapist_Name, Therapist_Description, Therapist_ImgUrl, Therapist_Price,Therapist_Speciality FROM Therapist"></asp:AccessDataSource>

    <h1>Our Therapists</h1>
    <p class="subtitle">View therapist details to find which one is best for you, click a therapist card to book</p>
    <asp:Repeater ID="rptTherapists" runat="server" DataSourceID="adsTherapistList">
        <ItemTemplate>
            <a href='Booking.aspx?therapistId=<%# Eval("Therapist_Id") %>'>
                <section class="therapist-card">
                    <figure class="image-cell">
                        <img src='<%# Eval("Therapist_ImgUrl") %>'title="<%#"Therapist_Name" %>" alt='<%# Eval("Therapist_Name") %>' loading="lazy" width="200" height="200" />
                    </figure>
                    <article class="content-cell">
                        <p class="therapist-name"><%# Eval("Therapist_Name") %></p>
                        <p class="therapist-description"><%# Eval("Therapist_Description") %></p>
                        <ul class="therapist-tags">
                            <li>
                                <%# String.Join("</li><li>", _
              Eval("Therapist_Speciality").ToString().Split(","c) _
            ) %>
                            </li>
                        </ul>
                        <p class="therapist-price">$<%# Eval("Therapist_Price") %></p>
                    </article>
                </section>
            </a>
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>
