//
//  WBCalcEngine.swift
//  AviationWB
//
//  Created by Michael Baptist on 9/21/14.
//  Copyright (c) 2014 Michael Baptist. All rights reserved.
//

import UIKit

class WBCalcEngine: NSObject {
   
    func aircraftWeightToMoment(aircraftWeight: Double) -> (Double) {
        return self.computeMoment(aircraftWeight, distance: 38);
    }
    
    // convert gallons into pounds.
    func usableFuelWeightToMoment(fuelWeight: Double) -> (Double) {
        return self.computeMoment(self.gallonsToPounds(fuelWeight), distance: 48);
    }
    
    // distance may vary between 34 to 46 inches
    func frontRowWeightToMoment(comboWeight: Double) -> (Double) {
        return self.computeMoment(comboWeight, distance: 37);
    }
    
    func backRowWeightToMoment(comboWeight: Double) -> (Double) {
        return self.computeMoment(comboWeight, distance: 73);
    }
    
    // station distance varies from 82 to 108 inches
    func bagAreaOneWeightToMoment(comboWeight: Double) -> (Double) {
        return self.computeMoment(comboWeight, distance: 95);
    }
    
    // station distance varies from 108 to 142 inches
    func bagAreaTwoWeightToMoment(comboWeight: Double) -> (Double) {
        return self.computeMoment(comboWeight, distance: 123);
    }
    
    func fuelAllowanceWeightToMoment(allowance: Double) -> (Double) {
        return self.computeMoment(allowance, distance: 48);
    }
    
    func getRampWeight(rampWeightDict: [String: Double]) -> (Double) {
        var rampWeight: Double = 0;
        for (key, value) in rampWeightDict {
            rampWeight += value;
        }
        return rampWeight;
    }
    
    func getRampMoment(rampMomentDict: [String: Double]) -> (Double) {
        var rampMoment: Double = 0;
        for (key, value) in rampMomentDict {
            rampMoment += value;
        }
        return rampMoment;
    }
    
    func gallonsToPounds(gallons: Double) -> (Double) {
        return (gallons * 6.0);
    }
    
    func computeMoment(weight: Double, distance: Double) -> (Double) {
        return (weight * distance / 1000.0);
    }
    
    // create functions for not excceding weight for each section. create the tests during the ui build.
}
