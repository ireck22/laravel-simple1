
// var s="ok";


$(function() {
 
    $( "#dialog-1" ).dialog({
       autoOpen: false,
    });

    $( ".dialog-2" ).dialog({
        autoOpen: false,
     });

    $( "#opener" ).click(function() {
       $( "#dialog-1" ).dialog( "open" );
    //    $("#t2").text(s);//測試輸出

    });

    $( ".opener2" ).click(function() {
        $( ".dialog-2" ).dialog( "open" );
 
     });
 });


 function validateForm(){

    if( document.myForm.user.value == "" )
    {
        alert( "帳號必填!" );
        return false;
    }

    if( document.myForm.username.value == "" )
    {
        alert( "姓名必填" );
        return false;
    }

    if( document.myForm.gender.value == "")
    {
        alert( "性別必填" );
        return false;
    }

    if( document.myForm.birthday.value == "")
    {
        alert( "生日必填" ); 
        return false;
    }else{
        var date=document.myForm.birthday.value;
        var re = new RegExp("^([0-9]{4})[.-]{1}([0-9]{1,2})[.-]{1}([0-9]{1,2})$");
        var strDataValue="";
        var infoValidation = true;
        if ((strDataValue = re.exec(date)) != null) {
          var i;
          i = parseFloat(strDataValue[1]);
          if (i <= 0 || i > 9999) { /*年*/
            infoValidation = false;
          }
          i = parseFloat(strDataValue[2]);
          if (i <= 0 || i > 12) { /*月*/
            infoValidation = false;
          }
          i = parseFloat(strDataValue[3]);
          if (i <= 0 || i > 31) { /*日*/
            infoValidation = false;
          }
        } else {
          infoValidation = false;
        }
        if (!infoValidation) {
          alert("請輸入 YYYY-MM-DD 日期格式");
          return false;
        }


    }

    if( document.myForm.email.value == "")
    {
        alert( "email必填" );
        return false;
    }else{
        var x=document.myForm.email.value;
        var atpos=x.indexOf("@");
        var dotpos=x.lastIndexOf(".");
        if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length){
            alert("不是一個有效的 e-mail 地址");
        }
    }

    if( document.myForm.Remarks.value == "")
    {
        alert( "備註必填" );
        return false;
    }

    return true;
    

    
     
 }

