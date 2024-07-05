
var $headers : Object
var $requestObj; $request : Object
var $bodyColl : Collection



If (btnTrace)
	TRACE:C157
End if 


$headers:={}

$headers["api-key"]:=Form:C1466.managerAPIKey

$bodyColl:=New collection:C1472
$bodyColl.push(Form:C1466.body)

$requestObj:={method: HTTP POST method:K71:2; headers: $headers; body: $bodyColl}

$request:=4D:C1709.HTTPRequest.new(Form:C1466.createProductURL; $requestObj).wait()


If ($request.response.body#Null:C1517)
	Form:C1466.response:=$request.response.body
End if 

