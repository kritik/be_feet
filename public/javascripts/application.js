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
  var below_line = plot.data("below_line");
  if(!below_line)  below_line = 0;
  $.plot($("#placeholder"), [ {
    data:coordinates,
    threshold: { below: below_line, color: "rgb(50, 205, 50)" }
  } ],{
    xaxis: {
      mode: "time",
      timeformat: "%d-%m-%y"// %H:%M"//,
    // tickFormatter: function (val, axis) {
    //   var d = new Date(val);
    //   console.log(axis);
    //   console.log(val);
    //   console.log(d);
    //   return d.getUTCDate() + "/" + (d.getUTCMonth() + 1);
    // }
    }
  });
}


function add_log(log, plot_arr){
  $("#logs").append(log);
  make_plot(plot_arr);
}

function del_log(log_id, plot_arr){
  $("#log_"+log_id).hide('slow').remove();
  make_plot(plot_arr);
}

$(document).ready(function(){
  make_plot();
  $(".accordion").accordion({
    event: "mouseover",
    active:false,
    fillSpace: true
  });
});