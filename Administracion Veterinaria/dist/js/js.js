function objetoAjax() {
    var xmlhttp = false;
    try {
        xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
    } catch (e) {
        try {
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        } catch (E) {
            xmlhttp = false;
        }
    }

    if (!xmlhttp && typeof XMLHttpRequest != 'undefined') {
        xmlhttp = new XMLHttpRequest();
    }
    return xmlhttp;
}
function tables(){
    $(document).ready(function() {
        $('#dataTables-example').dataTable();
    });
}
function login(){
    var resultado = document.getElementById('page-wrapper');
    ajax = objetoAjax();
    ajax.open("GET", "../paginas/login.php", true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4){
            resultado.innerHTML = ajax.responseText;
            tables();
        }
    }
    ajax.send(null);
} 
function estadisticas(){
    var resultado = document.getElementById('page-wrapper');
    ajax = objetoAjax();
    ajax.open("GET", "../paginas/estadisticas.php", true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4){
            resultado.innerHTML = ajax.responseText;
            tables();
        }
    }
    ajax.send(null);
} 
function lista_usuarios(){
    var resultado = document.getElementById('page-wrapper');
    ajax = objetoAjax();
    ajax.open("GET", "../paginas/lista_usuarios.php", true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4){
            resultado.innerHTML = ajax.responseText;
            tables();
        }
    }
    ajax.send(null);
} 
function nuevo_usuario(){
    var resultado = document.getElementById('page-wrapper');
    ajax = objetoAjax();
    ajax.open("GET", "../paginas/nuevo_usuario.php", true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4){
            resultado.innerHTML = ajax.responseText;
            tables();
        }
    }
    ajax.send(null);
} 
function lista_duenios(){
    var resultado = document.getElementById('page-wrapper');
    ajax = objetoAjax();
    ajax.open("GET", "../paginas/lista_duenios.php", true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4){
            resultado.innerHTML = ajax.responseText;
            tables();
        }
    }
    ajax.send(null);
} 
function lista_veterinarias(){
    var resultado = document.getElementById('page-wrapper');
    ajax = objetoAjax();
    ajax.open("GET", "../paginas/lista_veterinarias.php", true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4){
            resultado.innerHTML = ajax.responseText;
            tables();
        }
    }
    ajax.send(null);
} 
function lista_enfermedades(){
    var resultado = document.getElementById('page-wrapper');
    ajax = objetoAjax();
    ajax.open("GET", "../paginas/lista_enfermedades.php", true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4){
            resultado.innerHTML = ajax.responseText;
            tables();
        }
    }
    ajax.send(null);
} 
function nueva_enfermedad(){
    var resultado = document.getElementById('page-wrapper');
    ajax = objetoAjax();
    ajax.open("GET", "../paginas/nueva_enfermedad.php", true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4){
            resultado.innerHTML = ajax.responseText;
            tables();
        }
    }
    ajax.send(null);
} 
function nueva_veterinaria(){
    var resultado = document.getElementById('page-wrapper');
    ajax = objetoAjax();
    ajax.open("GET", "../paginas/nueva_veterinaria.php", true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4){
            resultado.innerHTML = ajax.responseText;
            tables();
        }
    }
    ajax.send(null);
} 
function eliminar_veterinaria(){
    var resultado = document.getElementById('page-wrapper');
    ajax = objetoAjax();
    ajax.open("GET", "../paginas/eliminar_veterinaria.php", true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4){
            resultado.innerHTML = ajax.responseText;
            tables();
        }
    }
    ajax.send(null);
} 
function eliminar_enfermedad(){
    var resultado = document.getElementById('page-wrapper');
    ajax = objetoAjax();
    ajax.open("GET", "../paginas/eliminar_enfermedad.php", true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4){
            resultado.innerHTML = ajax.responseText;
            tables();
        }
    }
    ajax.send(null);
} 
function eliminar_usuario(){
    var resultado = document.getElementById('page-wrapper');
    ajax = objetoAjax();
    ajax.open("GET", "../paginas/eliminar_usuario.php", true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4){
            resultado.innerHTML = ajax.responseText;
            tables();
        }
    }
    ajax.send(null);
} 
function editar_enfermedad(){
    var resultado = document.getElementById('page-wrapper');
    ajax = objetoAjax();
    ajax.open("GET", "../paginas/editar_enfermedad.php", true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4){
            resultado.innerHTML = ajax.responseText;
            tables();
        }
    }
    ajax.send(null);
} 
function editar_veterinaria(){
    var resultado = document.getElementById('page-wrapper');
    ajax = objetoAjax();
    ajax.open("GET", "../paginas/editar_veterinaria.php", true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4){
            resultado.innerHTML = ajax.responseText;
            tables();
        }
    }
    ajax.send(null);
} 
function editar_usuario(){
    var resultado = document.getElementById('page-wrapper');
    ajax = objetoAjax();
    ajax.open("GET", "../paginas/editar_usuario.php", true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4){
            resultado.innerHTML = ajax.responseText;
            tables();
        }
    }
    ajax.send(null);
} 
function lista_veterinarias(){
    var resultado = document.getElementById('page-wrapper');
    ajax = objetoAjax();
    ajax.open("GET", "../paginas/lista_veterinarias.php", true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4){
            resultado.innerHTML = ajax.responseText;
            tables();
        }
    }
    ajax.send(null);
} 

