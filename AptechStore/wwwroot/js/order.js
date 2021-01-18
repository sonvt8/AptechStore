var dataTable;

$(document).ready(function () {
    var url = window.location.search;
    if (url.includes("inprocess")) {
        loadDataTable("GetOrderList?status=inprocess");
    }
    else {
        if (url.includes("pending")) {
            loadDataTable("GetOrderList?status=pending");
        }
        else {
            if (url.includes("completed")) {
                loadDataTable("GetOrderList?status=completed");
            }
            else {
                if (url.includes("rejected")) {
                    loadDataTable("GetOrderList?status=rejected");
                }
                else {
                    loadDataTable("GetOrderList?status=all");
                }
            }
        }
    }
});


function loadDataTable(url) {
    dataTable = $('#tblData').DataTable({
        "ajax": {
            "url": "/Admin/order/" + url
        },
        "columns": [
            { "data": "id", "width": "10%" },
            { "data": "name", "width": "25%" },
            { "data": "phoneNumber", "width": "25%" },
            { "data": "applicationUser.email", "width": "25%" },
            { "data": "orderTotal", "width": "15%" }
        ]
    });
}