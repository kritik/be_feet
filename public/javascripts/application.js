function remove_fields(link) {
  $(link).prev("input[type=hidden]").val("1");
  $(link).closest(".fields").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).parent().before(content.replace(regexp, new_id));
}


function make_plot(){
  var plot = $("#placeholder")
  if (plot.length < 1) return; 
  $.plot($("#placeholder"), [ plot.data("coordinates") ],{
    xaxis: {
      mode: "time",
      timeformat: "%y-%m-%d %H:%M"
    }
  });
}

$(document).ready(function(){
  make_plot();
});