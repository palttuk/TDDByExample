//
//  DollarTests.swift
//  TDDByExample
//
//  Created by heeso Kim on 2016. 10. 11..
//  Copyright © 2016년 heeso Kim. All rights reserved.
//

import Quick
import Nimble
@testable import TDDByExample

/*
 * describe a Dollar
 *    describe times 2
 *      it 10 dollar
 *    describe times 2 and times 3
 */



class DollarSpec: QuickSpec {
  override func spec() {
    super.spec()
    
    describe("times 2", {
      it("is 10 dollars", closure: {
        let dollar = Money.dollar(amount: 5)
        let product = dollar.times(2)
        expect(product) == Money.dollar(amount: 10)
      })
    })
    
    describe("times 2 and 3") {
      it("is 15 dollars", closure: { 
        let dollar = Money.dollar(amount: 5)
        var product = dollar.times(2)
        expect(product) == Money.dollar(amount: 10)
        product = dollar.times(3)
        expect(product) == Money.dollar(amount: 15)
        
      })
    }
    
    describe("5 Dollar compare to" , {
      context("5 dollars", { 
        it("is Equal true ", closure: {
          expect(Money.dollar(amount: 5)) == Money.dollar(amount: 5)
        })
      })
      
      context("6 dollars", {
        it("is not Equal", closure: {
          expect(Money.dollar(amount: 6)) != Money.dollar(amount: 5)
        })
      })
    })
  }
  
}
