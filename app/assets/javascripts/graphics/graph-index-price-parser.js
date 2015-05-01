PriceIndexGraphicLineParser = function() {

    var PriceIndexGraphicLineParser = function() {};

    PriceIndexGraphicLineParser.prototype.parse = function(data) {
        return {
            source:data.source,
            categories: this.mountCategories(data),
            series: this.mountSeries(data)
        }
    };

    PriceIndexGraphicLineParser.prototype.mountSeries = function(data) {
        var namesProducts = this.mountNames(data);
        var series = [];
        var monthsData = data.months
        _.forEach(namesProducts, function(nameProduct) {
            var serie = {
                name: nameProduct,
                data: []
            };
            _.forEach(monthsData, function(monthData) {
                //TODO define valid default value when product not exists in this month
                var priceIndex = 1;
                var product = _.find(monthData.products, function(product) {
                    return _.isEqual(product.name, nameProduct)
                })
                if(product){
                    priceIndex =product.priceIndex 
                }
                serie.data.push(priceIndex);
            })
            series.push(serie);
        })
        return series;
    };

    PriceIndexGraphicLineParser.prototype.mountNames = function(data) {
        var names = [];
        _.forEach(data.months, function(monthData) {
            _.forEach(monthData.products, function(product) {
                var name = product.name;
                if (!_.includes(names, name)) {
                    names.push(name);
                }
            })
        })
        return names;
    };

    PriceIndexGraphicLineParser.prototype.mountCategories = function(data) {
        var categories = [];
        _.forEach(data.months, function(monthData) {
            categories.push(monthData.month);
        })
        return categories;
    };


    return new PriceIndexGraphicLineParser();
}()