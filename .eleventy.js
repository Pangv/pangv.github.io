module.exports = function (config) {
    config.addPassthroughCopy({'src/_includes/assets/css/global.css': './global.css'});
    config.addPassthroughCopy({'src/_includes/assets/img/': './img'});

    return {
        dir: {
            input: 'src'
        },

    }

}
