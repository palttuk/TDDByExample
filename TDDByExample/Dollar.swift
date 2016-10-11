//
//  Dollar.swift
//  TDDByExample
//
//  Created by heeso Kim on 2016. 10. 11..
//  Copyright © 2016년 heeso Kim. All rights reserved.
//

import UIKit

class Dollar: NSObject {
  var amount: Int
  
  init(amount: Int) {
    self.amount = amount
    super.init()
  }
  
  func times(_ multiplier: Int) {
    amount *= multiplier
  }
}
