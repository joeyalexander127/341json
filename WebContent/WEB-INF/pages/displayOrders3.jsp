<head>
<title>CST-341 jQuery In-Class Activity 1</title>
	
<script>


		function getOrders() {
		    // Makes an AJAX call to the ORders via a REST Service
		    $.ajax({
		        type: "GET",
		        url: "/assignment2c/service1/orders",
		        dataType: "json",
		        success: function(data) {
		        	
		            $('#orders').dataTable({
		            	data : data,
		                columns : [{
		                        data : "orderNo",
		                        title: "Order Number"
		                    },
		                    {
		                        data : "productName",
		                        title: "Product Name"
		                    },
		                    {
		                        data : "price",
		                        title: "Price"
		                    },
		                    {
		                        data : "quantity",
		                        title: "Quantity"
		                    }
		                ]
		            });
		        },
		        error: function(xhr, ajaxOptions, thrownError) {
		            alert(xhr.status);
		            alert(thrownError);
		        }
		    });
		}

		$(document).ready(getOrders);
		</script>
</head>

<body>
	<table id="orders" style="width: 50%" border="1">

		<thead style="background-color: #A0A0A0">
			
		</thead>
	</table>
</body>
