/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function o(){
    $('#administration_modal_confirm').dialog({modal:'true',
    buttons:{
     "OK":function(){
         $('#administration_modal_confirm').dialog('close');
         $('#admin_params').submit();
     },
     "Cancel":function(){
         $('#administration_modal_confirm').dialog('close');
     }
    }
    });
    return false;
}
