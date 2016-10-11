//
//  Dollar.swift
//  TDDByExample
//
//  Created by heeso Kim on 2016. 10. 11..
//  Copyright © 2016년 heeso Kim. All rights reserved.
//

import UIKit

struct Dollar {
  fileprivate var amount: Int
  
  init(amount: Int) {
    self.amount = amount
  }
  
  func times(_ multiplier: Int) -> Dollar {
    return Dollar(amount: amount * multiplier)
  }
}

extension Dollar: Equatable {
  
}


func ==(lhs: Dollar, rhs: Dollar) -> Bool {
  return lhs.amount == rhs.amount
}
