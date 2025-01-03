<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="util.HeaderFooterManager" %>
<%@ page import="FAQ.FAQClient" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQs - Coffee Shop</title>
    <link rel="stylesheet" href="style.css">
    <style>
        /* Main Wrapper */
        .faq-container {
            max-width: 900px;
            margin: 100px auto;
            padding: 42px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Heading */
        .faq-container h1 {
            text-align: center;
            color: #6F4C3E;
            font-size: 2rem;
            margin-bottom: 1.5rem;
        }

        .faq-columns {
            display: flex;
            justify-content: space-between;
        }

        .faq-column {
            width: 48%;
        }

        .faq-column ol {
            padding-left: 20px;
            font-size: 1rem;
            line-height: 1.6;
            color: #333;
        }

        .faq-column ol li {
            background-color: #f9f9f9;
            margin-bottom: 10px;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            font-weight: bold;
        }

        .faq-container form {
            margin-top: 2rem;
        }

        .faq-container label {
            font-size: 1rem;
            color: #333;
        }

        .faq-container input[type="number"] {
            padding: 8px; /* Reduced padding */
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 10%; 
            margin-top: 10px;
}


        .faq-container button {
            padding: 10px 20px;
            background-color: #b2744c;
            color: #fff;
            font-weight: bold;
            font-size: 1rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .faq-container button:hover {
            background-color: #de9e73;
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .response {
            margin-top: 1rem;
            padding: 1rem;
            background-color: #f9f9f9;
            border-left: 4px solid #6F4C3E;
            font-size: 1.2rem;
            color: #333;
        }
    </style>
</head>
<body>
    <%= HeaderFooterManager.getInstance().getHeader() %>

    <!-- FAQ Content -->
    <main class="faq-container">
        <h1>Frequently Asked Questions</h1>

        <!-- Display Questions in Two Columns -->
        <div class="faq-columns">
            <!-- Left Column (Questions 1-5) -->
            <div class="faq-column">
                <ol>
                    <%
                        List<String[]> faqs = FAQClient.getFAQs(); // Ensure FAQClient.getFAQs() is implemented
                        for (int i = 0; i < 5; i++) { // Loop for questions 1 to 5
                            String question = faqs.get(i)[0];
                    %>
                    <li>
                        <p><strong>Q:</strong> <%= question %></p>
                    </li>
                    <%
                        }
                    %>
                </ol>
            </div>

            <!-- Right Column (Questions 6-10) -->
            <div class="faq-column">
                <ol start="6"> <!-- Start the numbering from 6 for the second column -->
                    <%
                        for (int i = 5; i < 10; i++) { // Loop for questions 6 to 10
                            String question = faqs.get(i)[0];
                    %>
                    <li>
                        <p><strong>Q:</strong> <%= question %></p>
                    </li>
                    <%
                        }
                    %>
                </ol>
            </div>
        </div>

        <!-- Form to enter question number -->
        <form method="post">
            <label for="questionNumber">Enter the question number to get the answer:</label>
            <input type="number" id="questionNumber" name="questionNumber" required><br><br>
            <button type="submit">Get Answer</button>
        </form>

        <!-- Response Section -->
        <div class="response">
            <%
                String questionNumber = request.getParameter("questionNumber");
                if (questionNumber != null) {
                    String answer = FAQClient.getFAQAnswer(questionNumber);
                    if (answer != null && !answer.isEmpty()) {
            %>
                        <p><strong>Answer:</strong> <%= answer %></p>
            <%
                    } else {
            %>
                        <p><strong>Answer:</strong> Sorry, no answer available for this question.</p>
            <%
                    }
                }
            %>
        </div>
    </main>

    <%= HeaderFooterManager.getInstance().getFooter() %>
</body>
</html>
