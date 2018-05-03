<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="//malsup.github.com/jquery.form.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add product</title>
</head>
<body>
<h1>Add Products Screen</h1>
<form id = "add-form">
<p> Product Number: <input type="text" id="productId" placeholder="Number"></input></p>

<p> Product Name: <input type="text" id="productName" placeholder="Mobile Name"></input></p>

<p> Product Description: <input type="text" id="productDescription"></input></p>

<p> Products List: <select id="productsList" >
				<option selected> --Select--</option>
				<OPTION>Iphone</OPTION>
                <OPTION>Samsung</OPTION>
                <OPTION>Google Nexus</OPTION>
                </select>
<p><input type="submit" value= "addProduct" onclick="formSubmit()"></input></p>
</form>
</body>
</html>
<script type="text/javascript" >
function formSubmit() {
	  
	$("#add-form").submit(function (event) {

          event.preventDefault();
         

  		// array
          var add = {}
          add["productId"] = $("#productId").val();
          add["productName"] = $("#productName").val();
          add["productDescription"] = $("#productDescription").val();
          add["productsList"] = $("#productsList").val();
          
          alert(add.productId);
          console.log(add);
  		$.ajax({
  			type: "POST",
  			contentType: "application/json",
  			url: "/OnlineStore/products/add",
  			data: JSON.stringify(add), // convert array to JSON
  			dataType: 'json',
  			cache: false,
  			timeout: 100000,
  			success: function (data) {
  				
  				console.log("SUCCESS : ", data);

  			},
  			error: function (e) {

  				console.log("ERROR : ", e);

  			}
  		});

      });
}

</script>