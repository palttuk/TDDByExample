//
//  Dollar.swift
//  TDDByExample
//
//  Created by heeso Kim on 2016. 10. 11..
//  Copyright © 2016년 heeso Kim. All rights reserved.
//

import UIKit

class Dollar: Money {
  func times(_ multiplier: Int) -> Money {
    return Dollar(amount: amount * multiplier, currency: currency)
  }

}

