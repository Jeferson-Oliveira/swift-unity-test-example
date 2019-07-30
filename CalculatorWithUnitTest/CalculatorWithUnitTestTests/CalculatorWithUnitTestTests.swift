//
//  CalculatorWithUnitTestTests.swift
//  CalculatorWithUnitTestTests
//
//  Created by Jeferson Oliveira Cequeira de Jesus on 29/07/19.
//  Copyright © 2019 Jeferson Oliveira Cequeira de Jesus. All rights reserved.
//

import XCTest
@testable import CalculatorWithUnitTest

class CalculatorWithUnitTestTests: XCTestCase {

    var sut: Calculator!
    
    override func setUp() {
        sut = Calculator()
    }

    override func tearDown() {
        sut = nil
    }

    func testSum() {
        // 1 Given
        let a = 10.0
        let b = 20.0
        
        // 1 When
        sut.sum(a: a, b: b)
        
        // 3 Then
        XCTAssert(sut.result == 30.0, "Sum made with sucessful")
    }
    
    func testMutiply() {
        // 1 Given
        let a = 10.0
        let b = 10.0
        
        // 1 When
        sut.mutiply(a: a, b: b)
        
        // 3 Then
        XCTAssert(sut.result == 100, "Mutiply made with success")
    }
    
    func testMinus() {
        // 1 Given
        let a = 10.0
        let b = 10.0
        
        // 1 When
        sut.minus(a: a, b: b)
        
        // 3 Then
        XCTAssert(sut.result == 0.0, "Minus made with success")
    }
    
    func testDivisio() {
        // 1 Given
        let a = 10.0
        let b = 10.0
        
        // 1 When
        sut.divide(a: a, b: b)
        
        // 3 Then
        XCTAssert(sut.result == 1.0, "Division made with success")
    }
    
//    func testDivisionByZero() {
//        // 1 Given
//        let a = 10.0
//        let b = 0.0
//        
//        // 1 When
//        sut.divide(a: a, b: b)
//        
//        // 3 Then
//        XCTAssert(sut.result == Double.infinity, "Division by zero don't made with sucess")
//    }

}
