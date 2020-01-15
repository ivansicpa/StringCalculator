//
//  StringCalculatorTests.swift
//  StringCalculatorTests
//
//  Created by Alvarez, Ivan on 15/01/2020.
//  Copyright © 2020 Alvarez, Ivan. All rights reserved.
//

import XCTest
@testable import StringCalculator

class StringCalculatorTests: XCTestCase {

    private let stringCalculator = StringCalculator()
    
    override func setUp() {
    }
    
    override func tearDown() {
    }
    
    func testReturnCeroWhenStringIsEmpty() {
        let result = stringCalculator.add(numbers: "")
        XCTAssertEqual(0, result)
    }
    
    func testReturnSameNumberWhenStringContainsOnlyOneValue() {
        let result = stringCalculator.add(numbers: "1")
        XCTAssertEqual(1, result)
    }
    
    func testReturnTheSumOfTwoValuesWhenStringContainsTwoNumbersSeparatedbyComa() {
        let result = stringCalculator.add(numbers: "1,2")
        XCTAssertEqual(3, result)
    }
    
    func testReturnTheSumOfAnyValuesWhenStringIsSeparatedbyComa() {
        let result = stringCalculator.add(numbers: "1,2,3,4,5,6,7,8,9,0")
        XCTAssertEqual(45, result)
    }
    
    func testReturnTheSumOfAnyValuesWhenStringIsSeparatedbyNewLine() {
        let result = stringCalculator.add(numbers: "1\n2\n3\n4\n5\n6\n7\n8\n9\n0")
        XCTAssertEqual(45, result)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
