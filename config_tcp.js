{
  "graphiteHost": "graphite.example.com",
  "graphitePort": 2013,
  "port": 8125,
  "flushInterval": 10000,
  "dumpMessages": true,
  "servers": [
    { server: "./servers/tcp", address: "0.0.0.0", port: 8125 }
  ],
  "graphite": {
    "legacyNamespace": false,
    "globalPrefix":"statsd"
  }
}
