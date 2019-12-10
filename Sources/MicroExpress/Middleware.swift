//
//  Middleware.swift
//  MicroExpress
//
//  Created by Denis Bystruev on 10.12.2019.
//
//  http://www.alwaysrightinstitute.com/microexpress/
//  docker run -p 1337:1337 -it --name MicroExpress -v ~/MicroExpress:/MicroExpress -w/MicroExpress swift:4.0 /bin/bash

public typealias Middleware =
    ( IncomingMessage,
      ServerResponse,
      () -> ()
    ) throws -> Void
