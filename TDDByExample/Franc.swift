//
//  Franc.swift
//  TDDByExample
//
//  Created by heeso Kim on 2016. 10. 11..
//  Copyright © 2016년 heeso Kim. All rights reserved.
//

import UIKit

class Franc {
  fileprivate var amount: Int
  
  init(amount: Int) {
    self.amount = amount
  }
  
  func times(_ multiplier: Int) -> Franc {
    return Franc(amount: amount * multiplier)
  }
}

extension Franc: Equatable {
  
}


func ==(lhs: Franc, rhs: Franc) -> Bool {
  return lhs.amount == rhs.amount
}
