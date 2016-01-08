<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css"/>

        <title>Results</title>
    </head>
    <%!
        int q1TV = 0;
        int q1Newspaper = 0;
        int q2Young = 0;
        int q2Old = 0;
    %>
    <%
        if (request.getParameter("question1").equals("TV"))
            q1TV++;
        else
            q1Newspaper++;
        if (request.getParameter("question2").equals("<18"))
            q2Young++;
        else
            q2Old++;
    %>

    <body>
        <div id="container">
            <fieldset>
                <legend>Question 1</legend>
                <h3>How did you find us?</h3>
                <table>
                    <tr>
                        <td>TV</td>
                        <td>
                            <meter value="<%= q1TV %>" min="0" max="<%= q1TV + q1Newspaper %>"><%= q1TV %></meter>
                            <p><%= q1TV %></p>
                        </td>
                    </tr>
                    <tr>
                        <td>Newspaper</td>
                        <td>
                            <meter value="<%= q1Newspaper %>" min="0" max="<%= q1TV + q1Newspaper %>">
                                <%= q1Newspaper %>
                            </meter>
                            <p><%= q1Newspaper %></p>
                        </td>
                    </tr>
                </table>
            </fieldset>
            <fieldset>
                <legend>Question 2</legend>
                <h3>How old are you?</h3>
                <table>
                    <tr>
                        <td><18</td>
                        <td>
                            <meter value="<%= q2Young %>" min="0" max="<%= q2Young + q2Old %>"><%= q2Young %></meter>
                            <p><%= q2Young %></p>
                        </td>
                    </tr>
                    <tr>
                        <td>18></td>
                        <td>
                            <meter value="<%= q2Old %>" min="0" max="<%= q2Young + q2Old %>"><%= q2Old %></meter>
                            <p><%= q2Old %></p>
                        </td>
                    </tr>
                </table>
            </fieldset>
        </div>
    </body>
</html>

