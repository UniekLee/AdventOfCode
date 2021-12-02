//: [Previous](@previous)

import Foundation

// Puzzle setup

let devInput = ["forward 5", "down 5", "forward 8", "up 3", "down 8", "forward 2"]
let testInput = ["forward 2", "down 2", "forward 6", "forward 8", "down 8", "up 2", "forward 7", "forward 8", "down 1", "down 8", "forward 9", "down 1", "down 9", "up 9", "forward 8", "down 4", "forward 1", "forward 4", "up 3", "down 1", "up 4", "up 7", "down 8", "forward 8", "forward 9", "down 7", "forward 2", "up 2", "forward 3", "forward 2", "down 8", "up 3", "up 3", "forward 6", "down 5", "up 6", "down 3", "forward 4", "forward 2", "down 9", "down 9", "down 1", "down 3", "forward 7", "forward 4", "down 1", "down 3", "up 3", "up 9", "up 2", "down 6", "down 7", "forward 9", "down 7", "forward 3", "forward 5", "up 6", "up 4", "down 8", "down 6", "down 4", "up 2", "up 7", "up 8", "up 1", "forward 7", "up 9", "down 6", "up 7", "up 3", "forward 8", "up 9", "down 9", "up 2", "forward 8", "forward 4", "up 3", "forward 4", "up 2", "down 3", "up 7", "down 7", "forward 6", "forward 5", "forward 2", "forward 3", "up 2", "down 3", "up 6", "forward 2", "forward 4", "up 2", "down 6", "up 3", "down 8", "forward 7", "forward 8", "forward 3", "down 6", "forward 5", "forward 8", "down 6", "forward 4", "down 3", "up 2", "down 6", "down 5", "forward 8", "forward 8", "up 1", "down 9", "down 6", "forward 8", "up 1", "down 7", "forward 7", "up 4", "up 6", "down 3", "down 1", "up 9", "forward 8", "forward 1", "forward 2", "forward 2", "up 9", "up 4", "down 8", "up 9", "down 8", "forward 1", "forward 6", "up 3", "down 4", "forward 1", "down 5", "down 7", "down 9", "forward 1", "forward 1", "forward 5", "up 2", "up 4", "down 8", "forward 3", "forward 1", "forward 4", "down 6", "up 4", "up 4", "down 6", "up 9", "down 2", "up 6", "forward 5", "forward 5", "forward 1", "down 2", "up 1", "forward 6", "up 7", "forward 4", "up 3", "forward 3", "forward 8", "up 5", "forward 4", "up 3", "forward 9", "down 4", "down 8", "down 8", "forward 8", "forward 4", "down 5", "up 8", "down 4", "up 9", "forward 5", "up 3", "forward 8", "forward 3", "forward 7", "forward 5", "forward 3", "down 4", "down 3", "forward 9", "down 9", "forward 3", "down 7", "forward 8", "down 3", "forward 7", "forward 5", "up 6", "up 1", "forward 3", "down 3", "up 3", "down 1", "forward 8", "forward 5", "forward 1", "forward 6", "forward 9", "up 5", "down 5", "down 9", "forward 2", "down 5", "down 4", "up 9", "forward 9", "forward 7", "down 8", "up 3", "down 7", "down 1", "down 2", "down 4", "forward 2", "forward 7", "forward 3", "down 5", "down 3", "up 3", "down 4", "down 1", "forward 9", "down 1", "forward 4", "forward 6", "forward 7", "down 8", "up 4", "up 3", "down 4", "forward 5", "down 9", "down 1", "down 9", "up 9", "forward 6", "forward 7", "down 2", "up 1", "forward 8", "up 3", "forward 9", "forward 1", "up 9", "down 4", "forward 8", "forward 4", "forward 3", "forward 7", "forward 1", "forward 5", "forward 5", "forward 7", "down 8", "forward 1", "up 8", "forward 7", "up 8", "forward 2", "forward 7", "forward 3", "down 2", "forward 2", "forward 6", "down 7", "down 1", "up 2", "down 7", "up 3", "down 8", "down 4", "forward 2", "down 6", "forward 4", "down 8", "down 9", "forward 2", "down 2", "down 1", "forward 7", "up 2", "down 2", "forward 8", "forward 3", "down 9", "down 4", "down 5", "forward 6", "forward 2", "down 7", "up 7", "forward 1", "down 7", "down 3", "up 5", "down 8", "down 2", "down 2", "up 1", "forward 6", "up 2", "down 3", "up 1", "down 9", "forward 5", "forward 5", "up 5", "down 1", "down 7", "down 2", "forward 5", "down 6", "up 6", "forward 3", "down 1", "up 3", "forward 3", "down 7", "forward 5", "down 8", "down 5", "down 7", "down 7", "down 2", "forward 8", "down 7", "down 2", "up 7", "down 6", "down 8", "up 7", "forward 5", "up 8", "down 1", "forward 5", "down 2", "forward 3", "down 9", "down 7", "forward 3", "up 9", "up 7", "down 5", "down 3", "forward 3", "down 7", "forward 6", "forward 2", "up 9", "down 6", "up 4", "down 3", "up 3", "up 6", "up 1", "down 1", "down 7", "forward 7", "down 1", "up 1", "forward 6", "down 2", "up 6", "forward 4", "down 9", "forward 1", "forward 3", "down 1", "forward 9", "forward 1", "forward 5", "down 1", "down 8", "down 7", "down 7", "down 3", "up 1", "down 6", "down 2", "forward 3", "forward 8", "down 6", "down 8", "down 1", "down 6", "forward 5", "down 2", "down 6", "forward 7", "down 6", "forward 2", "forward 3", "down 8", "forward 4", "down 5", "down 1", "up 7", "forward 3", "forward 1", "forward 9", "forward 5", "down 2", "forward 6", "down 1", "up 3", "forward 6", "forward 5", "down 3", "down 6", "forward 2", "forward 3", "down 9", "up 4", "up 9", "up 1", "forward 6", "down 6", "forward 9", "forward 9", "down 6", "forward 4", "down 6", "forward 6", "forward 2", "forward 8", "forward 2", "down 2", "forward 6", "forward 4", "forward 2", "up 1", "down 2", "forward 7", "forward 2", "down 9", "forward 2", "forward 1", "down 8", "forward 4", "forward 7", "up 3", "down 2", "forward 4", "up 6", "down 1", "forward 6", "forward 3", "down 3", "down 3", "forward 7", "forward 9", "forward 5", "forward 9", "down 3", "down 3", "up 7", "down 2", "forward 1", "forward 3", "up 1", "forward 6", "down 6", "down 4", "down 2", "down 3", "down 1", "up 6", "forward 5", "down 6", "forward 2", "down 7", "forward 4", "down 2", "down 7", "down 6", "forward 3", "forward 1", "forward 6", "down 3", "forward 3", "up 1", "forward 5", "down 2", "up 1", "down 2", "up 5", "down 2", "up 3", "down 7", "up 6", "down 9", "forward 1", "forward 3", "down 9", "up 9", "down 4", "down 1", "forward 7", "forward 6", "up 1", "forward 5", "down 4", "up 4", "forward 7", "forward 6", "down 9", "up 9", "up 6", "up 6", "forward 6", "up 4", "forward 7", "down 4", "up 1", "forward 3", "down 5", "down 5", "up 2", "down 6", "forward 2", "up 2", "forward 1", "up 7", "up 8", "up 7", "down 3", "forward 5", "forward 9", "up 9", "down 7", "forward 5", "up 8", "down 9", "forward 6", "forward 1", "forward 3", "down 5", "up 4", "up 8", "down 5", "forward 5", "up 9", "down 7", "up 3", "forward 4", "down 1", "forward 1", "down 4", "forward 8", "up 8", "forward 4", "forward 5", "forward 6", "forward 2", "forward 5", "forward 6", "up 9", "down 3", "up 6", "down 3", "down 1", "down 2", "down 7", "down 9", "up 8", "down 5", "forward 4", "down 9", "forward 8", "forward 9", "down 3", "forward 4", "up 6", "forward 4", "forward 4", "down 6", "up 4", "down 4", "forward 9", "down 5", "down 7", "forward 9", "forward 4", "down 7", "down 2", "down 5", "down 4", "forward 5", "down 5", "forward 8", "forward 9", "forward 2", "down 8", "forward 9", "down 2", "forward 3", "up 6", "up 5", "down 9", "down 1", "up 7", "forward 9", "forward 9", "forward 2", "down 5", "up 5", "down 1", "forward 8", "forward 7", "down 7", "down 8", "down 1", "forward 5", "down 3", "forward 4", "down 1", "down 5", "forward 9", "up 1", "down 4", "down 7", "forward 8", "up 9", "up 6", "forward 4", "up 1", "forward 9", "down 6", "up 7", "down 8", "up 2", "forward 9", "up 6", "down 1", "up 7", "down 5", "down 3", "forward 2", "down 7", "forward 5", "forward 4", "down 4", "up 7", "down 5", "up 4", "forward 9", "forward 6", "forward 4", "down 8", "forward 1", "down 2", "forward 2", "down 3", "up 6", "forward 4", "down 5", "up 8", "forward 6", "forward 4", "up 4", "forward 5", "forward 3", "down 8", "forward 9", "forward 1", "forward 7", "down 8", "up 5", "forward 6", "down 4", "forward 3", "forward 7", "forward 2", "down 1", "up 5", "up 4", "down 8", "forward 3", "forward 8", "down 8", "forward 3", "up 9", "forward 9", "forward 2", "forward 7", "down 9", "up 5", "forward 7", "down 4", "up 4", "up 6", "down 2", "up 9", "up 7", "forward 4", "down 5", "up 4", "forward 3", "down 4", "down 7", "down 7", "up 7", "down 9", "down 9", "forward 7", "up 2", "forward 4", "forward 4", "forward 8", "forward 2", "down 1", "up 8", "down 9", "forward 1", "forward 4", "down 5", "down 3", "forward 3", "forward 1", "up 4", "down 6", "forward 2", "down 5", "down 1", "down 2", "forward 2", "down 3", "forward 6", "down 6", "down 3", "forward 9", "up 6", "up 9", "down 9", "up 5", "down 1", "down 1", "down 6", "forward 6", "forward 5", "forward 5", "forward 6", "down 8", "up 4", "down 3", "down 8", "down 9", "down 4", "down 7", "forward 2", "up 5", "forward 2", "forward 2", "forward 4", "down 4", "down 3", "forward 6", "forward 9", "down 9", "forward 4", "down 9", "down 2", "forward 1", "down 2", "up 3", "forward 2", "down 9", "up 5", "down 9", "forward 9", "forward 8", "down 1", "down 6", "up 2", "up 9", "forward 7", "up 1", "down 1", "down 3", "up 5", "down 2", "up 5", "down 7", "up 7", "up 8", "forward 2", "forward 3", "down 4", "forward 6", "up 3", "forward 7", "forward 7", "forward 7", "forward 7", "forward 8", "forward 4", "up 1", "forward 6", "forward 9", "forward 2", "down 3", "up 8", "down 9", "down 3", "down 8", "up 9", "down 6", "up 6", "up 9", "forward 9", "down 9", "forward 6", "forward 1", "down 3", "up 2", "forward 1", "up 2", "up 1", "forward 2", "down 1", "up 4", "forward 9", "down 5", "up 9", "down 4", "forward 4", "forward 1", "down 8", "forward 8", "down 5", "forward 5", "forward 7", "forward 6", "forward 7", "down 7", "down 3", "forward 9", "forward 6", "down 7", "forward 3", "forward 2", "down 1", "forward 2", "forward 5", "up 7", "up 7", "forward 2", "up 1", "forward 2", "up 2", "up 2", "up 6", "forward 4", "down 2", "up 3", "down 4", "down 7", "down 6", "forward 6", "forward 5", "forward 8", "forward 9", "up 1", "down 9", "up 6", "down 1", "up 1", "down 5", "forward 2", "forward 9", "forward 9", "up 4", "up 2", "forward 8", "up 4", "down 3", "down 8", "forward 2", "down 3", "down 8", "forward 2", "down 6", "down 8", "down 1", "up 4", "down 1", "forward 2", "up 7", "up 8", "down 8", "down 8", "forward 8", "down 1", "down 2", "down 1", "forward 9", "forward 5", "forward 8", "forward 7", "down 9", "down 2", "down 8", "forward 9", "down 3", "forward 4", "forward 1", "down 4", "forward 9", "up 6", "forward 6", "forward 7", "forward 7", "forward 6", "forward 8", "down 4", "forward 7", "down 8", "up 1", "forward 2", "down 1", "up 7", "forward 6", "up 9", "down 4", "up 4", "forward 1", "down 7", "down 2", "forward 4", "forward 4", "down 4", "down 2", "forward 5", "forward 9", "down 4", "down 5", "down 6", "up 9", "down 2", "up 4", "forward 7", "forward 5", "forward 1", "forward 9", "down 7", "up 4", "up 7", "forward 5", "up 8", "forward 2", "down 3", "up 1", "down 4", "forward 4", "forward 3", "forward 9", "forward 9", "down 9", "down 9", "up 7", "forward 4", "forward 9", "down 5", "down 5", "up 7", "up 4", "forward 9", "up 5", "down 2", "forward 5", "down 1", "forward 2", "down 6", "down 9", "forward 2", "up 4", "forward 6", "forward 6", "down 1", "up 8", "forward 5", "forward 9", "forward 6", "forward 4", "forward 9", "forward 2", "forward 5", "down 6", "up 4", "forward 2", "up 1", "forward 5"]

let input = testInput

// Challenge 1
struct Vector {
    enum Axis {
        case horizontal
        case verticle
    }
    
    let axis: Axis
    let magnitude: Int
}

func vector(for instruction: String) -> Vector {
    let instructionComponents = instruction.split(separator: " ")
    assert(instructionComponents.count == 2, "Invalid instruction")
    
    let magnitude = Int(instructionComponents.last ?? "0") ?? 0
    
    switch instructionComponents.first {
    case "forward": return .init(axis: .horizontal, magnitude: magnitude)
    case "up": return .init(axis: .verticle, magnitude: (-1 * magnitude))
    case "down": return .init(axis: .verticle, magnitude: magnitude)
    default: fatalError("Invalid instruction")
    }
}

let vectors: [Vector] = input.map({ vector(for: $0) })

let finalPosition_interpretation1: (distance: Int, depth: Int) = vectors
    .reduce(into: (distance: 0, depth: 0), { (position, vector) in
        switch vector.axis {
        case .horizontal:
            position.distance += vector.magnitude
        case .verticle:
            position.depth += vector.magnitude
        }
    })

print("Final position: \(finalPosition_interpretation1)")
print("Product: \(finalPosition_interpretation1.distance * finalPosition_interpretation1.depth)")

// Challenge 2

struct State {
    var distance: Int
    var depth: Int
    var aim: Int
    
    static let initial: State = State(distance: 0, depth: 0, aim: 0)
}

let finalPosition_interpretation2: State = vectors
    .reduce(into: State.initial) { state, vector in
        switch vector.axis {
        case .verticle:
            state.aim += vector.magnitude
        case .horizontal:
            state.distance += vector.magnitude
            state.depth += state.aim * vector.magnitude
        }
    }

print("#2: final position: \(finalPosition_interpretation2)")
print("#2: product: \(finalPosition_interpretation2.distance * finalPosition_interpretation2.depth)")

//: [Next](@next)
