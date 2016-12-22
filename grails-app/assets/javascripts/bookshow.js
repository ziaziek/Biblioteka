/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$('#entryDate').datepicker({dateFormat: 'yy-mm-dd'});

function o(action){
    $('#modal_'+action+'_confirm').dialog({modal:'true',
    buttons:{
        "Yes" :function(){
            $(this).dialog("close");
            $('#'+action).submit();
        },
        "No" : function(){
            $(this).dialog("close");
        }
    }
    });
    return false;
}

