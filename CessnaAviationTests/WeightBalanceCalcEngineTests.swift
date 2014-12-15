//
//  WeightBalanceCalcEngineTests.swift
//  CessnaAviation
//
//  Created by Michael Baptist on 12/14/14.
//  Copyright (c) 2014 Michael Baptist. All rights reserved.
//

import UIKit
import XCTest
import CessnaAviation

class WBCalcEngineTests: XCTestCase {
    
    let calcEngine = WBCalcEngine();
    var weightDict =  [String: Double]();
    var momentDict =  [String: Double]();
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCalcEngineNotNull() {
        XCTAssertNotNil(self.calcEngine, "Calc Engine Object Nil");
    }
    
    func testAircraftWeightToMomentConversion() {
        self.weightDict["aircraftWeight"] = 1642.0;
        XCTAssertEqualWithAccuracy(self.calcEngine.aircraftWeightToMoment(1642.0), 62.6, 1, "Aircraft Weight to Moment Conversion Failure");
        self.momentDict["aircraftWeight"] = self.calcEngine.aircraftWeightToMoment(1642.0);
    }
    
    func testUsableFuelWeightToMomentConversion() {
        self.weightDict["usableFuel"] = 30.0;
        XCTAssertEqualWithAccuracy(self.calcEngine.usableFuelWeightToMoment(30.0), 8.6, 1, "Aircraft Weight to Moment Conversion Failure");
        self.momentDict["usableFuel"] = self.calcEngine.usableFuelWeightToMoment(30.0);
    }
    
    func testFrontRowWeightToMomentConversion() {
        self.weightDict["frontRow"] = 340.0;
        XCTAssertEqualWithAccuracy(self.calcEngine.frontRowWeightToMoment(340.0), 12.6, 1, "Front Row Weight to Moment Conversion Failure");
        self.momentDict["frontRow"] = self.calcEngine.frontRowWeightToMoment(340.0);
    }
    
    func testBackRowWeightToMomentConversion() {
        self.weightDict["backRow"] = 340.0;
        XCTAssertEqualWithAccuracy(self.calcEngine.backRowWeightToMoment(340.0), 24.8, 1, "Back Row Weight to Moment Conversion Failure");
        self.momentDict["backRow"] = self.calcEngine.backRowWeightToMoment(340.0);
    }
    
    func testBagageAreaOneWeightToMomentConversion() {
        self.weightDict["areaOne"] = 56;
        XCTAssertEqualWithAccuracy(self.calcEngine.bagAreaOneWeightToMoment(56), 4.6, 1, "Baggage Area One Weight to Moment Conversion Failure");
        self.momentDict["areaOne"] = self.calcEngine.bagAreaOneWeightToMoment(56);
    }
    
    func testBagageAreaTwoWeightToMomentConversion() {
        self.weightDict["areaTwo"] = 0;
        XCTAssertEqualWithAccuracy(self.calcEngine.bagAreaTwoWeightToMoment(0), 0, 1, "Baggage Area Two Weight to Moment Conversion Failure");
        self.momentDict["areaTwo"] = self.calcEngine.bagAreaTwoWeightToMoment(0);
    }
    
    func testFuelAllowanceWeightToMomentConversion() {
        let allowance = 8.0;
        XCTAssertEqualWithAccuracy(self.calcEngine.fuelAllowanceWeightToMoment(allowance), 0.4, 1, "Fuel Allowance Weight to Moment Conversion Failure");
    }
    
    func testGallonsToPoundsConversion() {
        XCTAssertEqualWithAccuracy(self.calcEngine.gallonsToPounds(30), 180, 1, "Gallons to pounds conversion failure.");
    }
    
}

