//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Fang Yang on 7/1/18.
//  Copyright © 2018 Yang Fang. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    func testMealInitializationSucceeds(){
        let zeroRatingmeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingmeal)
        
        let positiveRatingmeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingmeal)
    }
    
    func testMealInitializationFails(){
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
        
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }
}
