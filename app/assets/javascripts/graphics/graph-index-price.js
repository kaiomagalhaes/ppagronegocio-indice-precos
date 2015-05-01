priceIndexLineGraph = function() {

    var PriceIndexLineGraph = function() {};

    PriceIndexLineGraph.prototype.getUrl = function() {
        return '/json/graph-index-price.json'
    }

    PriceIndexLineGraph.prototype.getIdContainer = function() {
        return '#graph-price-index-container'
    }

    PriceIndexLineGraph.prototype.init = function() {
        var self = this;
        DataAux.getJSON(self.getUrl(), function(data) {
            var parsedData = PriceIndexGraphicLineParser.parse(data);
            var graphic = self.mountGraphic(parsedData);
            $(self.getIdContainer()).highcharts(graphic);
        })

    }

    PriceIndexLineGraph.prototype.mountGraphic = function(data) {
        return {
            title: {
                text: 'Grocery prince index',
                x: -20 //center
            },
            subtitle: {
                text: 'Source:'+ data.source,
                x: -20
            },
            xAxis: {
                categories: data.categories
            },
            yAxis: {
                title: {
                    text: 'Price index (R$)'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                shared: true,
                pointFormat: '{series.name}: <b>{point.y}</b><br/>',
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'middle',
                borderWidth: 0
            },
            series: data.series
        }
    }
    return new PriceIndexLineGraph();
}()