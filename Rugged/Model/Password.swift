//
//  PasswordModel.swift
//  Rugged
//
//  Created by Leonardo Diaz on 11/22/19.
//  Copyright © 2019 Leonardo Diaz. All rights reserved.
//

import Foundation

struct Password {
    var lowerCase: [String] //default
    var upperCase: [String] // upper && lower
    var numbers: [String] // nums && lower
    var symbols: [String] //syms && lower
    var allChars: [String] //upper && nums && syms
    var upperNumbers: [String] // upper && nums
    var upperSymbols: [String] // upper && syms
    var numberSymbols: [String] // numbs && syms
}

// By default lowerCase is included in all the other char sets
