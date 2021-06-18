const { Module } = require("webpack");
const path = require('path')

Module.exports = {
    entry: './app.jsx',
    output: {
        path: path.resolve(__dirname),
        filename: 'bundle.js'
    },
    module: {
        rules: [
          {
            test: /\.jsx?$/,
            exclude: /(node_modules)/,
            use: {
              loader: 'babel-loader',
              option: {
                presets: ['@babel/env', '@babel/react']
              }
            },
          }
        ]
      },
    devtool: 'source-map',
    resolve: {
        extentions: ['.js', '.jsx', '*']
    }
}