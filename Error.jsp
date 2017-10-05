<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/jquery.modal.css">
	<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
</head>

<body>
	<button id="btn"> Activar Modal</button>
	<div style="display:none" id="modal">
		<h1>Usuario Existente</h1>
	</div>
	<script src="js/jquery.modal.min.js"></script>
	<script>
		$('#btn').click(function(){
			$('#modal').modal();
		});
	</script>
	</body>
	</html>