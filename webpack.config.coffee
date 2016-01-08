path = require 'path'
module.exports =
  entry: './src/chat.cjsx'
  output:
    path: path.join __dirname, '/'
    publicPath: '/'
    filename: 'chat.js'
  resolve:
    extensions: ['', '.js', '.cjsx', '.coffee']
  module:
    loaders: [
      { test: /\.cjsx$/, loaders: ['coffee', 'cjsx'] }
      { test: /\.coffee$/, loader: 'coffee' }
    ]
