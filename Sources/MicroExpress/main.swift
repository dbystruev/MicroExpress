//  http://www.alwaysrightinstitute.com/microexpress/
//  docker run -p 1337:1337 -it --name MicroExpress -v ~/MicroExpress:/MicroExpress -w/MicroExpress swift:4.0 /bin/bash

let app = Express()

// Logging
app.use { req, res, next in
    print("\(req.header.method): " +
          "\(req.header.target)")
    next()  // continue processing
}

// Request Handling
app.use { _, res, _ in
    try res.send("Hello, Schwifty world!")
}

app.listen(1337)
