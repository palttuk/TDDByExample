//
//  Money.swift
//  TDDByExample
//
//  Created by heeso Kim on 2016. 10. 12..
//  Copyright © 2016년 heeso Kim. All rights reserved.
//

import Foundation


class Money: Equatable {
  fileprivate var _amount: Int

  var amount: Int {
    return _amount
  }
  fileprivate let currency: String
  
  init(amount: Int, currency: String) {
    self._amount = amount
    self.currency = currency
  }
  
//  func times(_ multiplier: Int) -> Money {
//    return Money(amount: amount * multiplier, curr)
//  }
}

extension Money {
  static func dollar(amount: Int) -> Dollar {
    return Dollar(amount: amount, currency: "USD")
  }
  
  static func franc(amount: Int) -> Franc {
    return Franc(amount: amount, currency: "CHF")
  }
}

func ==(lhs: Money, rhs: Money) -> Bool {
  return lhs.amount == rhs.amount
}
