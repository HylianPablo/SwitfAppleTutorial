//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Pablo Martínez López on 02/02/2021.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    //Confirm that the Meal initializer returns a Meal object when passed valid parameters
    func testMealInitializationSucceds(){
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
         
        // Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    func testMealInitializationFails(){
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
         
        // Empty String
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
    }
}
