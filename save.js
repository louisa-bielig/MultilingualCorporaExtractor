var nodeio = require('node.io');
exports.job = new nodeio.Job({
    input: false,
    run: function () {
        var url = this.options.args[0];
        this.get(url, function(err, data) {
            if (err) {
                this.exit(err);
            } else {
                this.emit(data);
            }
        });
    }
});