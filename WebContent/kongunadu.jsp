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
        <h1>Kongunad Hospital</h1>
        <img src="kongu.jpeg" alt="Hospital Image">
        <p>Location: Tatabat, Coimbatore</p>
        <p>Phone: 569874</p>
        <p>Specialties: Cardiology, Pediatrics</p>
        <!-- Add more hospital details here -->

        <!-- Add a "Book Now" button -->
        <button class="book-button" onclick="redirectToKongunad1()">Book Now</button>
    </div>
    <!-- JavaScript function to navigate to kongunadu1.jsp -->
    <script>
        function redirectToKongunad1() {
            // Replace the URL with the actual URL of kongunadu1.jsp
            var jspUrl = 'kongunadu1.jsp';
            window.location.href = jspUrl;
        }
    </script>
</body>
</html>
