<!DOCTYPE html>
<html>
	<head>
		<title>CST-341 jQuery In-Class Activity 1</title>
		<script src="https://code.jQuery.com/jQuery-3.2.1.min.js"></script>
		<script type="text/javascript">
			
			function displayOrders(data)
			{
				var x = 0;
				var y = 0;
				var table = document.getElementById("orders");
				for (var order of data)
				{
					var row = table.insertRow(-1);
					row.setAttribute("align", "center");
					var cell1 = row.insertCell();
					var cell2 = row.insertCell();
					var cell3 = row.insertCell();
					var cell4 = row.insertCell();
					
					row.id = x;
					
					cell1.id = x + "_" + y++;
					cell2.id = x + "_" + y++;
					cell3.id = x + "_" + y++;
					cell4.id = x + "_" + y++;
					
					cell1.innerHTML = order.orderNo;
					cell2.innerHTML = order.productName;
					cell3.innerHTML = order.price;
					cell4.innerHTML = order.quantity;
					
					row.style.backgroundColor = x & 1 ? "#FFFFFF": "#F0F0F0";
					++x;
					y = 0;
				}
			}
			
			function getOrders()
			{
				// Makes an AJAX call to the ORders via a REST Service
				$.ajax(
					{
						type: "GET",
						url: "/assignment2c/service1/orders",
						dataType: "json",
						success: function(data)
						{
							// Display ORdes in Using DOM in the orders Table
							displayOrders(data);
						},
						error: function (xhr, ajaxOptions, thrownError)
						{
							alert(xhr.status);
							alert(thrownError);
						}
					});
			}
			
			$(document).ready(getOrders);
		</script>
	</head>
	
	<body>
		<table id= "orders" style="width:50%" border="1">
			
			<thead>
				<tr style="background-color:#A0A0A0">
				<th><label>Order Number</label></th>
				<th><label>Product Name</label></th>
				<th><label>Price</label></th>
				<th><label>Quantity</label></th>
				<tr>
			</thead>
			
			<tbody>
				
			<tbody>
		</table>
	</body>
</html>
		