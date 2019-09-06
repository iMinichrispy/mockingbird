//
//  Initializers.swift
//  MockingbirdTestsHost
//
//  Created by Andrew Chang on 9/5/19.
//

import Foundation

protocol InitializerProtocol {
  init()
  init?(param: Bool)
  init!(param: Int)
  init(param1: Bool, _ param2: Int)
  init(param: String) throws
}

class InitializerClass {
  init() {}
  init?(param: Bool) {}
  init!(param: Int) {}
  init(param1: Bool, _ param2: Int) {}
  init(param: String) throws {}
  required init(param: String?) {}
  convenience init(param: Double?) {
    try! self.init(param: "foo bar")
  }
}