function remove_fields(link) {
  $(link).prev("input[type=hidden]").val("1");
  $(link).closest(".fields").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).parent().before(content.replace(regexp, new_id));
}


function make_plot(coordinates){
  var plot = $("#placeholder")
  if (plot.length < 1) return; 
  if(!coordinates) coordinates = plot.data("coordinates");
  $.plot($("#placeholder"), [ coordinates ],{
    xaxis: {
      mode: "time",
      timeformat: "%y-%m-%d %H:%M"
    }
  });
}


function add_log(log, plot_arr){
  $("#logs").append(log);
  console.log(log);
  console.log(plot_arr);
  make_plot(plot_arr);
}

$(document).ready(function(){
  make_plot();
});