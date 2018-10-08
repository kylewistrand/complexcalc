//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    public func add(_ args: [Double]) -> Double {
        // Inspiration: https://stackoverflow.com/a/24795181
        return args.reduce(0, +)
    }
    
    public func add(lhs: Double, rhs: Double) -> Double {
        return lhs + rhs
    }
    
    public func multiply(_ args: [Double]) -> Double {
        return args.reduce(1, *)
    }
    
    public func multiply(lhs: Double, rhs: Double) -> Double {
        return lhs * rhs
    }
    
    public func subtract(lhs: Double, rhs: Double) -> Double {
        return lhs - rhs
    }
    
    public func divide(lhs: Double, rhs: Double) -> Double {
        return lhs / rhs
    }
    
    public func count(_ args: [Double]) -> Int {
        return args.count
    }
    
    public func avg(_ args: [Double]) -> Double {
        return Double(add(args)) / Double(count(args))
    }
}
