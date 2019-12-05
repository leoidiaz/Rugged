//
//  PasswordBrain.swift
//  Rugged
//
//  Created by Leonardo Diaz on 11/22/19.
//  Copyright © 2019 Leonardo Diaz. All rights reserved.
//

import Foundation

struct PasswordBrain {
    var passwordTypes =
        
        Password(lowerCase: ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"],
                 upperCase: ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"],
                 numbers: ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","1","2","3","4","5","6","7","8","9","0"],
                 symbols: ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","!","#","$","%","&","(",")","*","+",",","-",".","/",":",";","<","=",">","?","@","[","]","^","_","{","|","}","~","\\"],
                 allChars: ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","1","2","3","4","5","6","7","8","9","0","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","!","#","$","%","&","(",")","*","+",",","-",".","/",":",";","<","=",">","?","@","[","]","^","_","{","|","}","~","\\"],
                 upperNumbers: ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","1","2","3","4","5","6","7","8","9","0"],
                 upperSymbols: ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","!","#","$","%","&","(",")","*","+",",","-",".","/",":",";","<","=",">","?","@","[","]","^","_","{","|","}","~","\\"],
                 numberSymbols: ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","1","2","3","4","5","6","7","8","9","0","!","#","$","%","&","(",")","*","+",",","-",".","/",":",";","<","=",">","?","@","[","]","^","_","{","|","}","~","\\"])
    
    mutating func randomize(length: Float, upper:Bool, nums: Bool, syms: Bool) -> String{
        
        var password = ""
        
        switch true {
        case upper && nums && syms:
            for _ in 1...Int(length){
                passwordTypes.allChars.shuffle()
                password += passwordTypes.allChars[Int.random(in: 0..<passwordTypes.allChars.count)]
            }
            return password
        case upper && nums:
            for _ in 1...Int(length){
                passwordTypes.upperNumbers.shuffle()
                password += passwordTypes.upperNumbers[Int.random(in: 0..<passwordTypes.upperNumbers.count)]
            }
            return password
        case upper && syms:
            for _ in 1...Int(length){
                passwordTypes.upperSymbols.shuffle()
                password += passwordTypes.upperSymbols[Int.random(in: 0..<passwordTypes.upperSymbols.count)]
            }
            return password
            
        case nums && syms:
            for _ in 1...Int(length){
                passwordTypes.numberSymbols.shuffle()
                password += passwordTypes.numberSymbols[Int.random(in: 0..<passwordTypes.numberSymbols.count)]
            }
            return password
        case upper:
            for _ in 1...Int(length){
                passwordTypes.upperCase.shuffle()
                password += passwordTypes.upperCase[Int.random(in: 0..<passwordTypes.upperCase.count)]
            }
            return password
        case nums:
            for _ in 1...Int(length){
                passwordTypes.numbers.shuffle()
                password += passwordTypes.numbers[Int.random(in: 0..<passwordTypes.numbers.count)]
            }
            return password
        case syms:
            for _ in 1...Int(length){
                passwordTypes.symbols.shuffle()
                password +=  passwordTypes.symbols[Int.random(in: 0..<passwordTypes.symbols.count)]
            }
            return password
        default:
            for _ in 1...Int(length){
                passwordTypes.lowerCase.shuffle()
                password += passwordTypes.lowerCase[Int.random(in: 0..<passwordTypes.lowerCase.count)]
            }
            return password
            
        }
    }
    
}

