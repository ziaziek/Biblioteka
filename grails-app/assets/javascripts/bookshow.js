/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$('#entryDate').datepicker({dateFormat: 'yy-mm-dd'});

function o(){
    $('#modal_confirm').dialog({modal:'true',
    buttons:{
        "Yes" :function(){
            $(this).dialog("close");
            $('#prolong').submit();
        },
        "No" : function(){
            $(this).dialog("close");
        }
    }
    });
    return false;
}

