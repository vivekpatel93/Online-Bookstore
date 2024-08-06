<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<%@include file="Common_content/Common1.jsp" %>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f8fafa;
    margin: 0;
    padding: 0;
}
.container {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: calc(80vh - 60px);
    background-color: #ffffff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    overflow: hidden;
    margin-left:auto;
    margin-rigth:auto;
    margin-top:25px;
    overflow-y: auto;
}

.contact-info, .send-message {
    padding: 20px;
    flex: 1;
}

.contact-info {
    background-color: #004687;
    color: #fff;
    border-right: 1px solid #ddd;
}

.contact-info h2, .send-message h2 {
    margin-top: 0;
    color: #333;
}

.contact-info h2 {
    color: #fff;
}

.contact-info p {
    margin: 10px 0;
    color: #ddd;
}

.send-message form {
    display: flex;
    flex-direction: column;
}

.send-message .form-group {
    display: flex;
    justify-content: space-between;
    gap: 10px;
}

.send-message input, .send-message textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ddd;
    border-radius: 4px;
    box-sizing: border-box;
}

.send-message textarea {
    resize: vertical;
}

.send-message button {
    padding: 10px;
    background-color: #004687;
    border: none;
    border-radius: 4px;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.send-message button:hover {
    background-color: #004687;
}

.social-media {
    display: flex;
    justify-content: center;
    margin-top: 20px;
}

.social-media a {
    color: #333;
    font-size: 24px;
    margin: 0 10px;
    transition: color 0.3s;
}

.social-media a:hover {
    color: #007bff;
}

</style>
</head>
<body>
<%@include file="Common_content/nav-bar.jsp" %>
<div class="container">
        <div class="contact-info">
            <h2>Contact Info</h2>
            <p>Lucknow</p>
            <p>India</p>
            <p>bibekumrao1@gmail.com</p>
            <p>+91 9369445286</p>
        </div>
        <div class="send-message">
            <h2>Send a Message</h2>
            <form action="send_data.jsp" method="get">
                <div class="form-group">
                    <input type="text" name="name" placeholder="First Name" required>
                    <input type="text" name="address" placeholder="Address">
                </div>
                <div class="form-group">
                    <input type="email" name="email" placeholder="Email Address" required>
                    <input type="tel" name="contact" placeholder="Mobile Number" required>
                </div>
                <textarea name="msg" placeholder="Write your message here..." required></textarea>
                <button type="submit">Send</button>
            </form>
            <div class="social-media">
                <a href="https://open.spotify.com/user/315hl5fxhfukmi4przj6uj6rmzlq"><i class="fa-brands fa-spotify"></i></a>
                <a href="https://x.com/patelvivek7_"><i class="fa-brands fa-x-twitter"></i></a>
                <a href="#"><i class="fa-brands fa-instagram"></i></a>
                <a href="https://www.linkedin.com/in/vivek-kumar-patel-607378244/"><i class="fab fa-linkedin-in"></i></a>
            </div>
        </div>
    </div>
<%@include file="Common_content/footer.jsp" %>
</body>
</html>