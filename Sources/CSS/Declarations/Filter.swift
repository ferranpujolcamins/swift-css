//
//  Filter.swift
//  
//
//  Created by Carson Katri on 10/5/19.
//

public enum Filter {
    case blur(CSSUnit)
    case invert(CSSUnit = .percent(100))
    
    var description: String {
        switch self {
        case let .blur(size):
            return "blur(\(size.description))"
        case let .invert(amount):
            return "invert(\(amount.description))"
        }
    }
}

public func filter(_ filter: Filter) -> Declaration {
    Declaration(property: .filter, value: filter.description)
}
