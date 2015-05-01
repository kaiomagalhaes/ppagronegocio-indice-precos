$(document).ready(function(){
    $('#graph-decreasing-price-reasons').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false
        },
        title: {
            text: 'Top 10 reasons for the <b>decreasing</b> of prices'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer'
            }
        },
        series: [{
            type: 'pie',
            name: 'Percentage',
            data: [
            ['Season',   45.0],
            ['Gas price',       26.8],
            ['Lack of rains',12.8],
            ['Metheors',    8.5],
            ['Canibal lettuces',     6.2],
            ['Others',   0.7]
            ]
        }]
    });
});