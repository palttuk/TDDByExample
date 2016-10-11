//
//  FrancSpecs.swift
//  TDDByExample
//
//  Created by heeso Kim on 2016. 10. 11..
//  Copyright © 2016년 heeso Kim. All rights reserved.
//

import Quick
import Nimble
@testable import TDDByExample

/*
 * describe a Franc
 *    describe times 2
 *      it 10 Franc
 *    describe times 2 and times 3
 */

class FrancSpecs: QuickSpec {

  override func spec() {
    super.spec()
    
    describe("multiple 2 and 3", {
      it("is 15", closure: {
        let franc = Franc(amount: 5)
        let product = franc.times(2)
        expect(product) == Franc(amount: 10)
        
        expect(franc.times(3)) == Franc(amount: 15)
      })
    })
  }
}
