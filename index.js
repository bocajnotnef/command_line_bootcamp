var url = require('url')
var querystring = require('querystring')
var adventureTime = require('adventure-time')

var qs = url.parse(window.location.href, true).query

if (!qs.id) {
  qs.id = Math.random().toString(36).slice(2)
  window.location.href = window.location.href.split('?')[0] + '?' + querystring.stringify(qs)
}

var opts = {
  guide: 'guide/',
  console: 'terminal.html',
  server: "localhost:8080/command_line_bootcamp",
  id: qs.id
}

if (!qs.server) qs.server = opts.server

opts.console += '?'+querystring.stringify(qs)

var adventure = adventureTime(opts)
