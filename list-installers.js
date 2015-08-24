Product = function(packageCode, packageName, localPackage)
{
	this.packageCode = packageCode;
	this.packageName = packageName;
	this.localPackage = localPackage;
}

Product.prototype.toString = function() {
	var s = "";
	for ( var p in this )
	{
		s += p + ": " + this[p] + "\n";
	}
	return s;
}


var installer = WScript.CreateObject("WindowsInstaller.Installer");
var products = installer.Products;
var productList = new Array();
productList.append = function(item)
{
  var packageName;
	try {
		packageName = installer.ProductInfo(item, "PackageName");
	} catch (ex) { 
		packageName = null;	
	}
	
	var localPackage;
	try {
		localPackage = installer.ProductInfo(item, "LocalPackage");
	} catch (ex) { 
		localPackage = null;	
	}
	
	var productName;
	try {
		productName = installer.ProductInfo(item, "ProductName");
	} catch (ex) { 
		productName = null;	
	}
	
	var p = new Product(item, packageName, localPackage);
	p.productName = productName;
	productList.push(p);
}

for (var e = new Enumerator(products); !e.atEnd(); e.moveNext())
{
	productList.append(e.item());	
}

for (var i = 0; i < productList.length; i++ )
{
	//WScript.Echo(productList[i].toString());
	with ( productList[i] )
	{
		WScript.Echo( '"' + productName + '","' + packageCode + '"');
	}

}
