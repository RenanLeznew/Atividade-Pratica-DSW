<%-- 
    Document   : exercicio 3
    Created on : May 18, 2021, 3:05:44 PM
    Authors     : Lucas Aguiar Cera e Renan Wenzel 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><h1> Busca da Conta </h1>
        <%! 
            public static String checkInformed(String tobechecked){
                if(tobechecked == null || tobechecked.isEmpty() == true){
                    String notFound = "nao foi informado";
                    return notFound;
                } else{
                    return "false";
                }
            }
        %>
        <%
            String NameOperator, NameHolder, requestNumber, StringNumber, StringBalance, StringValue, buttonClicked;

            NameOperator = request.getParameter("Operator");
            NameHolder = request.getParameter("Holder");
            StringNumber = request.getParameter("Number");
            StringBalance = request.getParameter("accountBalance");
            StringValue = request.getParameter("accountValue");
            buttonClicked = request.getParameter("buttonClickable");
            if(checkInformed(NameOperator) == "nao foi informado"){
                out.println("Operador: Operador " + checkInformed(NameOperator) + "<br>");
            } else{
                out.println("Nome do Operador: " + NameOperator + "<br>");
            }

            if(checkInformed(NameHolder) == "nao foi informado"){
                out.println("Titular: Titular " + checkInformed(NameHolder) + "<br>");
            } else{
                out.println("Nome do Titular: " + NameHolder + "<br>");
            }

            if(checkInformed(StringNumber) == "nao foi informado"){
                out.println("Número: Número " + checkInformed(StringNumber) + "<br>");
            } else{
                out.println("Número do Titular: " + StringNumber + "<br>");
            }

            if(checkInformed(StringBalance) == "nao foi informado"){
                out.println("Saldo: Saldo " + checkInformed(StringBalance) + "<br>");
            } else{
                out.println("Saldo do titular: R$" + StringBalance + ",00 <br>");
            }
            if(checkInformed(StringValue) == "nao foi informado"){
                out.println("Valor: Valor " + checkInformed(StringValue) + "<br>");
            } else{
                out.println("Valor depositado ou sacado: R$" + StringValue + ",00 <br>");
            }
            if(checkInformed(buttonClicked) == "nao foi informado"){
                out.println("Não foi informado se é desejado realizar um saque ou um depósito.");
            } else{
                if(buttonClicked.equals("Depositar")){
                    out.println("<p style='color: blue; font-size:large;'> Depósito realizado com sucesso! </p>");
                }
                if(buttonClicked.equals("Sacar")){
                    out.println("<p style='color: red; font-size:large;'> Saque realizado com sucesso! </p>");
                }
            }
        %>
    </body>
    
</html>