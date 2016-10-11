//
//  MoneySpecs.swift
//  TDDByExample
//
//  Created by heeso Kim on 2016. 10. 12..
//  Copyright © 2016년 heeso Kim. All rights reserved.
//

import Quick
import Nimble
@testable import TDDByExample

class MoneySpecs: QuickSpec {
  override func spec() {
    super.spec()
    
    describe("times 2", {
      it("is 10 dollars", closure: {
        let dollar = Money(amount: 5)
        let product = dollar.times(2)
        expect(product) == Money(amount: 10)
      })
    })
    
    describe("times 2 and 3") {
      it("is 15 dollars", closure: {
        let money = Money(amount: 5)
        var product = money.times(2)
        expect(product) == Money(amount: 10)
        product = money.times(3)
        expect(product) == Money(amount: 15)
        
      })
    }
 
  }
}
