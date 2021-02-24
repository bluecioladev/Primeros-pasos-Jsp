<html>

<body>

<h1 style="text-align:center">


Ejemplo declaraciones

</h1>

<%!

private int resultado;

public int MetodoSuma (int num1,int num2){
	
	resultado=num1+num2;
	
	return resultado;
}

public int MetodoResta (int num1,int num2){
	
	resultado=num1-num2;
	
	return resultado;
}

public int MetodoMultiplica (int num1,int num2){
	
	resultado=num1*num2;
	
	return resultado;
}


%>

El resultado de la suma es : <%= MetodoSuma(7,5) %>

<br>

El resultado de la resta es : <%= MetodoResta(7,5) %>

<br>

El resultado de la suma es : <%= MetodoMultiplica(7,5) %>



</body>

</html>









