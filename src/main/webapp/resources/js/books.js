$(document).ready(function () {
    var page = new Page();
    page.init();
});

function Page() {

}

Page.prototype.init = function () {
    var that = this;
    $.get(root + "/all", function (data) {
        that.displayTable(data);
    });
};

//Page.prototype.bindButtons = function () {
//    this.bindSaveButton();
//};

//Page.prototype.bindSaveButton = function () {
//    var that = this;
//
//    $("#book-form").submit(function (e) {
//        e.preventDefault();
//        var data = $(this).serialize();
//        $.post(root + "books/save", data, function (data) {
//            that.displayTable(data);
//            $("#keywords").multiselect("refresh");
//            $("#book-form")[0].reset();
//            $("#add-book-form").modal('hide');
//        }, "json");
//    });
//};

Page.prototype.displayTable = function (rows) {
    var tmpRows = [];
    var $tableBody = $("#menutable tbody");

    for (var i = 0; i < rows.length; i++) {
        tmpRows.push(this.createRowHtml(rows[i]));
    }

    $tableBody.empty();
    $tableBody.append(tmpRows);
};

Page.prototype.createRowHtml = function (row) {
    var $row = $("<tr/>");
    var $nameCell = $("<td/>");
    var titleLink = $("<a/>").attr("href", root + "menu/" + row.id).text(row.name);
    $titleCell.append(titleLink);
    var $typeCell = $("<td/>");
    var $costCell = $("<td/>").text(row.cost);
    $row.append($nameCell, $typeCell, $costCell);
    return $row;
};