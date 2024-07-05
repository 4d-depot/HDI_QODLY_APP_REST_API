Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		btnTrace:=False:C215
		
		InitInfo
		
		
		Form:C1466.endPointURL:=""
		Form:C1466.employeeAPIKey:=""
		Form:C1466.managerAPIKey:=""
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		If (FORM Get current page:C276=3)
			Form:C1466.productsEmp:=ds:C1482.getProducts(Form:C1466.endPointURL; Form:C1466.employeeAPIKey; "Employee")
			Form:C1466.productsManager:=ds:C1482.getProducts(Form:C1466.endPointURL; Form:C1466.managerAPIKey; "Manager")
			Form:C1466.productInfo:={name: "Demo API key"; price: 999}
		End if 
		
		If (FORM Get current page:C276=4)
			Form:C1466.getProductURL:=Form:C1466.endPointURL+"/rest/product"
			Form:C1466.createProductURL:=Form:C1466.endPointURL+"/rest/product/create"
			Form:C1466.body:={name: "Demo API key 2"; price: 555}
		End if 
		
		
	: (Form event code:C388=On Close Box:K2:21)
		If (Is Windows:C1573 && Get application info:C1599().SDIMode)
			QUIT 4D:C291
		Else 
			CANCEL:C270
		End if 
		
End case 

