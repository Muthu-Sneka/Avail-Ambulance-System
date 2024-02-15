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

        /* Style for the user's response input field */
        .user-response {
            width: 80%;
            padding: 10px;
            margin-top: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* Style for the submit button */
        .submit-button {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }
    </style>
</head>
<body bgcolor="7A1DAC">
    <div class="hospital-details">
        <h1>Aster Hospital</h1>
        <img src="aster.jpeg" alt="Hospital Image">
        <p>Location: 24th main road, Bangalore</p>
        <p>Phone: 689745</p>
        <p>Specialties: Cardiology, Neurology, Pediatrics</p>
        <!-- Add more hospital details here -->

        <!-- User's response input field and submit button -->
        <textarea class="user-response" id="userResponse" placeholder="Type your response"></textarea>
        <button class="submit-button" onclick="redirectToResponsePage()">Submit</button>
    </div>

    <script>
        function redirectToResponsePage() {
            // Get the user's response from the textarea
            var userResponse = document.getElementById("userResponse").value; 
            
            // Redirect to the response.html page with the user's response as a parameter
            window.location.href = 'response.html?message=' + encodeURIComponent(userResponse);
        }
    </script>
</body>
</html>