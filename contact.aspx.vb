﻿'Add these two imports so you have access to the mail features.
Imports System.Net.Mail
Imports System.Net



Partial Class contact
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        EmailTB.Focus()

    End Sub


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim msg As New MailMessage
        Dim client As New SmtpClient


        msg.To.Add("michael-colbert@uiowa.edu") 'desination email address
        msg.From = New MailAddress(EmailTB.Text) 'get the address from the textbox
        msg.Subject = "web contact form test" 'set the message subject line
        msg.Body = MessageTB.Text 'get the message from the textbox


        client.Host = "smtp.gmail.com"
        client.Port = 587
        client.Credentials = New NetworkCredential("ui.6k183", "6k183U*I")
        client.EnableSsl = True
        client.Send(msg)


        'clear textboxes if message is sent
        EmailTB.Text = ""
        MessageTB.Text = ""


        'confirm sent message
        confirmSent.Text = "Thank you. Your message has been sent."


        Response.AddHeader("REFRESH", "2;URL=default.aspx")


    End Sub
End Class
