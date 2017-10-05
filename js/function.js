(function(){
	var actual_fs, next_fs, prev_fs;

	$(".next").click( function(){

                var e1= document.getElementById("email").value;
                var e2= document.getElementById("email2").value;
                var t= document.getElementById("tel").value;
                var c= document.getElementById("cel").value;
                var respuesta="";
                var tel=t.length;
                var cel=c.length;
                actual_fs = $(this).parent();
                next_fs = $(this).parent().next();

                if(tel==8){ //telefono ingresado debe de tener 8 digitos
                    if(cel==10){ //telefono ingresado debe de tener 10 digitos

                            if( e1 == e2){  //Se realiza la comparación de los correos
                                if (e1!=false && e2 !=false){
                                        $("#progreso li").eq($("form").index(next_fs)).addClass("activo")
                                        actual_fs.hide(800);
                                        next_fs.show(800);   
                                }
                                else { 
                                    respuesta=respuesta+"Ingresa tu Email";
                                    alert(respuesta);
                                }
                            }
                            else {
                                    respuesta= respuesta + "El Email no coincide. Inténtalo de Nuevo";
                                    alert(respuesta);
                            }
                    }
                    else{
                        respuesta=respuesta + "Número de celular inválido";
                        alert(respuesta);
                    }
                }
                else{
                    respuesta=respuesta + "Número de teléfono inválido";
                    alert(respuesta);
                } 
            

	});

        $(".next2").click( function(){

                var e1= document.getElementById("email").value;
                var e2= document.getElementById("email2").value;
                var respuesta;
                actual_fs = $(this).parent();
                next_fs = $(this).parent().next();

                            $("#progreso li").eq($("form").index(next_fs)).addClass("activo")
                            actual_fs.hide(800);
                            next_fs.show(800);   
                
    });



	$(".prev").click(function(){
		actual_fs = $(this).parent();
		prev_fs= $(this).parent().prev();

		$("#progreso li").eq($("form").index(actual_fs)).removeClass("activo")
		actual_fs.hide(800);
		prev_fs.show(800);

	});

    $(".reg").click(function(){
        var p1= document.getElementById("password").value;
        var p2= document.getElementById("pass2").value;
        var u= document.getElementById("user").value;
        var respuesta="";

            if( p1 == p2 ){
                if (p1!=false && p2 !=false){
                    var long=p1.length;
                    if(long>8){
                                        var n=document.getElementById("names").value
                                        var ap=document.getElementById("app").value
                                        var am=document.getElementById("apm").value
                                        var nc=document.getElementById("nc").value
                                        var curp=document.getElementById("curp").value
                                        var mail=document.getElementById("email").value
                                        var cel=document.getElementById("cel").value
                                        var tel=document.getElementById("tel").value
                                        var sem=document.getElementById("semestre").value
                                        var av=document.getElementById("creditos").value
                                        var opt=document.getElementById("opcion_t").value
                                        var dep=document.getElementById("depen").value
                                        var carr=document.getElementById("carrera").value
                                        var plant=document.getElementById("plan").value
                                        var us=document.getElementById("user").value
                                        var pass=document.getElementById("password").value

                        location.href="./Registro.jsp?names="+n+"&nc="+nc+"&lastname="+ap+"&lastname2="+am+"&email="+mail+"&cel="+cel+"&tel="+tel+"&semestre="+sem+"&avance_cred="+av+"&opcion_titulacion="+opt+"&dependencia="+dep+"&curp="+curp+""
                    }
                    else alert("Tu contraseña debe de ser mayor de 7 caracteres");        
                }
                else alert("Ingresa la Contraseña");
            }
            else {
                respuesta="La Contraseña no Coincide";
                alert(respuesta);
            }
        

    });


	$("#formulario_f input[type=submit]").click(function(){
		return false;
	});




});