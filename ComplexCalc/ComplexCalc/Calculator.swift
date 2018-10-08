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
    
    public func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    public func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! + rhs["x"]!, "y": lhs["y"]! + rhs["y"]!]
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
    
    public func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    public func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! - rhs["x"]!, "y": lhs["y"]! - rhs["y"]!]
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
    
    public func mathOp(args: [Double], beg: Double, op: (Double, Double) -> Double) -> Double {
        return args.reduce(beg, op)
    }
}
