<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    // Retrieve the selected hospital's name from the previous page
    String selectedHospitalName = request.getParameter("selectedHospitalName");

    // Debugging: Output the selectedHospitalName to the console
    System.out.println("Selected Hospital Name: " + selectedHospitalName);

    // Determine the destination page based on the selected hospital's name
    String destinationPage = "";

    if (selectedHospitalName != null) {
        selectedHospitalName = selectedHospitalName.trim(); // Remove leading/trailing spaces
        if (selectedHospitalName.equals("aster hospital")) {
            destinationPage = "aster.jsp"; // Replace with the actual page for HospitalName1
        } else if (selectedHospitalName.equals("bangalore baptist hospital")) {
            destinationPage = "baptist.jsp"; // Replace with the actual page for HospitalName2
        }
        else if (selectedHospitalName.equals("kamala speciality hospital")) {
            destinationPage = "kamala.jsp"; // Replace with the actual page for HospitalName2
        }
        else if (selectedHospitalName.equals("kongunad hospital")) {
            destinationPage = "kongunadu.jsp"; // Replace with the actual page for HospitalName2
        }
        else if (selectedHospitalName.equals("ktvr hospital")) {
            destinationPage = "ktvr.jsp"; // Replace with the actual page for HospitalName2
        }
        else if (selectedHospitalName.equals("naruvi hospital")) {
            destinationPage = "naruvi.jsp"; // Replace with the actual page for HospitalName2
        }
        // Add conditions for other hospitals as needed
    }

    // Debugging: Output the determined destination page to the console
    System.out.println("Destination Page: " + destinationPage);

    // Redirect to the determined destination page
    response.sendRedirect(destinationPage);
%>
