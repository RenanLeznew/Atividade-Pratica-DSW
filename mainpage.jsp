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
        <link rel="stylesheet" type="text/css" href="CSS\cssForms.css">
        <title>JSP Page</title>
    </head>
    <body>
        <fieldset>
            <legend> Busca de Conta </legend>
            <form name="findAccount" action="processing.jsp">
                Operador: <input class="field" type="text" name="Operator" value="" size="30">
            <br>
        </fieldset>
        <fieldset>
            <legend>Conta</legend>
                Titular: <input class="field" type="text" name="Holder" value="" size="30">
            <br>
                Número: <input class="field" type="number" name="Number" value="" min="1">
            <br>
                Saldo: <input class="field" type="number" name="accountBalance" value="">
            <br>
                Valor: <input class="field" type="number" name="accountValue" value="" min="0">
            <br>
            <input class="buttonInput" type="submit" value="Depositar" name="buttonClickable">
            <input class="buttonInput" type="submit" value="Sacar" name="buttonClickable">
            </form>
        </fieldset>
    </body>
    
</html>
