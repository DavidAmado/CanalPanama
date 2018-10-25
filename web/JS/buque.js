/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function enviar_solicitud() {
    var convocatoria = $('#txtnumconvocatoria').val();
    var solicitante = $('#txt_cod').val();
    var facultad = $('#txt_facultad').val();
    var jornada = $('#txt_jornada').val();
    condiciones = condiciones + $('#select_ingresos').val() + ",";
    $("input:checkbox:checked").each(function () {
        condiciones = condiciones + $(this).val() + ",";
    });
    $(document).ready(function () {
        $.ajax({
            type: 'POST',
            data: {"conv": convocatoria,
                "soli": solicitante,
                "fac": facultad,
                "jor": jornada,
                "cond": condiciones
            },
            url: "Servlet_IngresoSolicitud",
            success: function (result3) {
                smoke.alert(result3, function (e) {
                    location.href = "http://localhost:8084/Apoyo/ComponentePrincipal.jsp";
                });
            }
        })
    })

}

