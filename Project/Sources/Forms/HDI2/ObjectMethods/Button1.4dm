

If (btnTrace)
	TRACE:C157
End if 

Form:C1466.product:=ds:C1482.createProduct(Form:C1466.endPointURL; Form:C1466.managerAPIKey; Form:C1466.productInfo; "Manager")

Form:C1466.productsEmp:=ds:C1482.getProducts(Form:C1466.endPointURL; Form:C1466.employeeAPIKey; "Employee")

Form:C1466.productsManager:=ds:C1482.getProducts(Form:C1466.endPointURL; Form:C1466.managerAPIKey; "Manager")