//
//  StringCalculator.swift
//  StringCalculator
//
//  Created by Alvarez, Ivan on 15/01/2020.
//  Copyright © 2020 Alvarez, Ivan. All rights reserved.
//

import Foundation


class StringCalculator {
    
    func add(numbers: String) -> Int {
        guard !numbers.isEmpty else { return 0 }
        return numbers.components(separatedBy: CharacterSet(arrayLiteral: ",","\n"))
            .compactMap({ return Int($0) }).reduce(0,+)
    }
}
