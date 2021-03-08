
function SetRadarChart(ctx, label_array, score_array){
  var RadarChart = new Chart(ctx, {
    type: 'radar',
    data: RadarData(label_array, score_array),
    options: RadarOptions()
  });

}
  function RadarData(label_array, score_array) {
    return {
      labels: label_array,
      datasets: [
        {
          backgroundColor: 'rgba(54, 162, 235, 0.2)',
          borderColor: 'rgba(54, 162, 235, 1)',
          pointBackgroundColor: 'rgba(54, 162, 235, 1)',
          data : score_array
        },
      ]
    };
  }
  function RadarOptions() {
    return {
      legend: false,
      tooltips: false,
      responsive: false,
      scale: {
         ticks: {
           display: false,
           min: 0,
           max: 5,
           maxTicksLimit: 10,
         },
        pointLabels: { fontSize:12 }
      }
    }
  }
