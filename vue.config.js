module.exports = {
    devServer: {

        proxy: {
            '/server': {
                target: 'http://localhost:8888/rokuflashback/',
                ws: true,
                changeOrigin: true
            }
        }
    }
}