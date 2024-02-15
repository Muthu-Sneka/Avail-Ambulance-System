<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Hospital Details</title>
    <style>
        .hospital-details {
            text-align: center;
            padding: 20px;
            border: 1px solid #ccc;
            background-color: rgba(255, 255, 255, 0.8);
            margin: 20px auto;
            max-width: 600px;
        }

        h1 {
            color: #333;
        }

        img {
            max-width: 100%;
            height: auto;
            margin-top: 10px;
        }

        .book-button {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }
    </style>
</head>
<body bgcolor="#006666">
    <div class="hospital-details">
        <h1>ktvr group Hospital</h1>
        <img src="ktvvr.jpeg" alt="Hospital Image">
        <p>Location: Sai Baba Colony, Coimbatore</p>
        <p>Phone: 4698723</p>
        <p>Specialties: Cardiology, Pediatrics</p>
        <!-- Add more hospital details here -->

        <!-- Add a "Book Now" button with onclick attribute -->
        <button class="book-button" onclick="redirectToKtvr1()">Book Now</button>

<script>
    function redirectToKtvr1() {
        // Replace 'ktvr1.jsp' with the actual URL of the JSP page you want to navigate to
        var jspUrl = 'ktvr1.jsp';
        window.location.href = jspUrl;
    }
</script>
    </div>
</body>
</html>

