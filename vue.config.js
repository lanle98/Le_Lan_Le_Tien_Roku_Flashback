module.exports = {
    devServer: {

        proxy: {
            '/server': {
                target: 'http://localhost:8888/Le_Lan_Le_Tien_Roku_Flashback/server',
                ws: true,
                changeOrigin: true
            },

        }

    }
}