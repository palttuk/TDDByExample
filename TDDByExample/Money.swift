//
//  Money.swift
//  TDDByExample
//
//  Created by heeso Kim on 2016. 10. 12..
//  Copyright © 2016년 heeso Kim. All rights reserved.
//

import Foundation

class Money {
  fileprivate var amount: Int
  
  init(amount: Int) {
    self.amount = amount
  }
  
  func times(_ multiplier: Int) -> Money {
    return Money(amount: amount * multiplier)
  }
}

extension Money: Equatable {
  
}


func ==(lhs: Money, rhs: Money) -> Bool {
  return lhs.amount == rhs.amount
}
