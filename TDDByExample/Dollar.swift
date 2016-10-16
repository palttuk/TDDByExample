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
    return Money.dollar(amount: amount * multiplier)
  }

}

