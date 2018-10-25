/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function salir(){
    $(document).ready(function (){
        $.ajax({
            type: 'POST',
            url: "Servlet_Salir"
        })
    })
}