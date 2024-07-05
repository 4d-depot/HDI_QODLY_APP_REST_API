
var $headers : Object
var $requestObj; $request : Object





If (btnTrace)
	TRACE:C157
End if 


$headers:={}

$headers["api-key"]:=Form:C1466.employeeAPIKey

$requestObj:={method: HTTP GET method:K71:1; headers: $headers}

$request:=4D:C1709.HTTPRequest.new(Form:C1466.getProductURL; $requestObj).wait()

If ($request.response.body#Null:C1517)
	Form:C1466.response:=$request.response.body
End if 

