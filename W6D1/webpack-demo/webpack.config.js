const path = require('path');
// var wepack = require('webpack');

module.exports = {
  entry: './src/index.js',
  output: {
    // path: path.resolve(__dirname,'./dist'),
    filename: 'bundle.js',
    path: __dirname + './dist'
  },
  module: {
     rules: [
       {
         test: /\.css$/,
         use: [
           'style-loader',
           'css-loader'
         ]
       },
       {
         test: /\.(png|svg|jpg|gif)$/,
         use: [
           'file-loader'
         ]
       },
       {
         test: /\.(woff|woff2|eot|ttf|otf)$/,
         use: [
           'file-loader'
         ]
       }
     ]
   }
 };
