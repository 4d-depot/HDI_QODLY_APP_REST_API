Class extends DataStoreImplementation



exposed Function getProductsDatastore($endPoint : Text; $apiKey : Text; $id : Text) : 4D:C1709.DataStoreImplementation
	
	var $theRemoteDS : 4D:C1709.DataStoreImplementation
	var $connect : Object:={hostname: $endPoint; tls: True:C214}
	
	$connect["api-key"]:=$apiKey
	
	$theRemoteDS:=Open datastore:C1452($connect; $id)
	return $theRemoteDS
	
	
	
exposed Function getProducts($endPoint : Text; $apiKey : Text; $role : Text) : 4D:C1709.EntitySelection
	
	var $theRemoteDS : 4D:C1709.DataStoreImplementation
	
	$theRemoteDS:=This:C1470.getProductsDatastore($endPoint; $apiKey; $role)
	
	return $theRemoteDS.product.all()
	
	
	
	
exposed Function createProduct($endPoint : Text; $apiKey : Text; $productInfo : Object; $role : Text) : 4D:C1709.Entity
	
	var $theRemoteDS : 4D:C1709.DataStoreImplementation
	
	$theRemoteDS:=This:C1470.getProductsDatastore($endPoint; $apiKey; $role)
	
	return $theRemoteDS.product.create($productInfo)