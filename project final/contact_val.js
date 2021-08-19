var hasError=false;

function get(id){
    return document.getElementById(id);
}

function validate(){
    refresh();
    if(get("name").value == ""){
        hasError = true;
        get("err_name").innerHTML = "**Name Required";
    }

    if(get("email").value == ""){
        hasError = true;
        get("err_email").innerHTML = "**Email Required";
    }

    if(get("subject").value == ""){
        hasError = true;
        get("err_subject").innerHTML = "**Subject Required";
    }

    if(get("message").value == ""){
        hasError = true;
        get("err_message").innerHTML = "**Message Required";
    }
    return !hasError;
}


    function refresh(){
        hasError=false;
        get("err_name").innerHTML ="";
        get("err_email").innerHTML = "";
        get("err_subject").innerHTML = "";
        get("err_message").innerHTML = "";
    }