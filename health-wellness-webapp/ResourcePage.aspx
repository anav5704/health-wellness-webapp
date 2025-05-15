<%@ Page Title="Resources" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ResourcePage.aspx.vb" Inherits="health_wellness_webapp.Resources" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Resources Page</h1>

    <section class="downloads">
        <h2>Documents</h2>
        <div class="download-container">
            <div class="download-item">
                <a href="#" target="_blank">Wellness Guide (PDF)</a>
            </div>
            <div class="download-item">
                <a href="#" target="_blank">Nutrition Tips (PDF)</a>
            </div>
            <div class="download-item">
                <a href="#" target="_blank">Exercise Planner (PDF)</a>
            </div>
        </div>
    </section>

    <section class="external-links">
        <h2>External Links</h2>
        <div class="download-container">
            <div class="link 1">
                <a href="#" target="_blank">link 1</a>
            </div>
            <div class="link 2">
                <a href="#" target="_blank">link 2</a>
            </div>
            <div class="link 3">
                <a href="#" target="_blank">link 3</a>
            </div>
        </div>
    </section>

    <section class="embedded-media">
        <h2>Embed Media will go here</h2>
        <p>Recommended:</p>
       
    </section>
</asp:Content>

