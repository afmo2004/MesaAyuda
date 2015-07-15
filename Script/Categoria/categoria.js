/// <reference path="../../View/crud/create.html" />
$("#btnNuevo").click(function (eve) {
    $("#modal-content").load("/View/crud/create.html");
});