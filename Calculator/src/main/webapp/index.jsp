<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP Calculator</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: grey;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .calculator {
            background: #222;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.5);
            width: 280px;
        }
        .display {
            width: 100%;
            height: 50px;
            background: #333;
            color: #fff;
            font-size: 24px;
            text-align: right;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 6px;
            border: none;
        }
        .buttons {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 10px;
        }
        .btn {
            padding: 20px;
            font-size: 18px;
            background: #444;
            color: #fff;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
        }
        .btn:hover {
            background: #555;
        }
        .btn.equal {
            background: #0ba29d;
            grid-column: span 2;
        }
        .btn.clear {
            background: #e74c3c;
            grid-column: span 2;
        }
    </style>
    <script>
        function addToDisplay(value) {
            document.getElementById("display").value += value;
        }
        function clearDisplay() {
            document.getElementById("display").value = "";
        }
    </script>
</head>
<body>
    <div class="calculator">
        <%
            String expression = request.getParameter("expression");
            String result = "";
            if(expression != null && !expression.trim().isEmpty()) {
                try {
                    // Custom calculation logic
                    double calcResult = 0;
                    char operator = ' ';
                    
                    // Find operator
                    if(expression.contains("+")) operator = '+';
                    else if(expression.contains("-")) operator = '-';
                    else if(expression.contains("*")) operator = '*';
                    else if(expression.contains("/")) operator = '/';
                    
                    if(operator != ' ') {
                        String[] parts = expression.split("\\" + operator);
                        if(parts.length == 2) {
                            double num1 = Double.parseDouble(parts[0]);
                            double num2 = Double.parseDouble(parts[1]);
                            
                            switch(operator) {
                                case '+': calcResult = num1 + num2; break;
                                case '-': calcResult = num1 - num2; break;
                                case '*': calcResult = num1 * num2; break;
                                case '/': calcResult = (num2 != 0) ? num1 / num2 : Double.NaN; break;
                            }
                            result = String.valueOf(calcResult);
                        } else {
                            result = "Error";
                        }
                    } else {
                        result = "Error";
                    }
                } catch(Exception e) {
                    result = "Error";
                }
            }
        %>
        <form method="post">
            <input type="text" id="display" name="expression" class="display"
                   value="<%= (result.isEmpty() ? (expression != null ? expression : "") : result) %>" readonly>

            <div class="buttons">
                <button type="button" class="btn" onclick="addToDisplay('7')">7</button>
                <button type="button" class="btn" onclick="addToDisplay('8')">8</button>
                <button type="button" class="btn" onclick="addToDisplay('9')">9</button>
                <button type="button" class="btn" onclick="addToDisplay('/')">÷</button>

                <button type="button" class="btn" onclick="addToDisplay('4')">4</button>
                <button type="button" class="btn" onclick="addToDisplay('5')">5</button>
                <button type="button" class="btn" onclick="addToDisplay('6')">6</button>
                <button type="button" class="btn" onclick="addToDisplay('*')">×</button>

                <button type="button" class="btn" onclick="addToDisplay('1')">1</button>
                <button type="button" class="btn" onclick="addToDisplay('2')">2</button>
                <button type="button" class="btn" onclick="addToDisplay('3')">3</button>
                <button type="button" class="btn" onclick="addToDisplay('-')">−</button>

                <button type="button" class="btn" onclick="addToDisplay('0')">0</button>
                <button type="button" class="btn" onclick="addToDisplay('.')">.</button>
                <button type="button" class="btn" onclick="addToDisplay('+')">+</button>
                <button type="submit" class="btn equal">=</button>

                <button type="button" class="btn clear" onclick="clearDisplay()">C</button>
            </div>
        </form>
    </div>
</body>
</html>
