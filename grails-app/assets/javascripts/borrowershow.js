/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function o(action){
    $('#borrower_deactivate_confirmation').dialog({modal:'true',
    buttons:{
        "Yes" :function(){
            $(this).dialog("close");
            $('#deactivateForm').submit();
        },
        "No" : function(){
            $(this).dialog("close");
        }
    }
    });
    return false;
}
