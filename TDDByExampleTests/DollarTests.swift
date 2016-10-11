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
 *    it 10 dollar
 */



class DollarSpec: QuickSpec {
  override func spec() {
    super.spec()
    
    describe("times 2", {
      it("is 10 dollars", closure: {
        let dollar = Dollar(amount: 5)
        dollar.times(2)
        expect(dollar.amount) == 10
      })
    })
    

  }
}
