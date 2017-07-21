//
//  helper.swift
//  CoinPush
//
//  Created by Bijan Massoumi on 7/16/17.
//  Copyright © 2017 Goods and Services. All rights reserved.
//

import Foundation

class helper {
    
    static var labelDict: [String:String] = ["ETH": "Ethereum","BTC": "Bitcoin", "ETC" :"Ethereum Classic", "DGB": "Digital Dash" ,"LTC": "Litecoin","USD": "U.S Dollars", "EUR": "Euros", "CNY" : "Chinese Yuan", "GBP" : "Pounds"]
    
    static var symbolDict: [String: String] = ["USD" : "$",  "EUR" : "€", "BTC" :"Ƀ", "ETH" : "Ξ","LTC" : "Ł","ETC" : "⟠", "CNY" : "¥", "GBP" : "£"]
    
    
    static func getCurrencyIdentifier(rawText: String) -> String{
        var returnExpression : String
        switch rawText {
            case "Ethereum (ETH)":
                returnExpression = "ETH"
            case "Bitcoin (BTC)":
                returnExpression = "BTC"
            case "Dash (DGB)":
                returnExpression = "DGB"
            case "Ethereum Classic (ETC)":
                returnExpression = "ETC"
            case "Litecoin (LTC)":
                returnExpression = "LTC"
            case "🇺🇸 U.S Dollar (USD)":
                returnExpression = "USD"
            case "🇪🇺 Euro (EUR)":
                returnExpression = "EUR"
            case "🇨🇳 Chinese Yuan (CNY)":
                returnExpression = "CNY"
            case "🇬🇧 British Pound (GBP)":
                returnExpression = "GBP"
            default:
                fatalError("passed string had no match")
            
            }
        return returnExpression
    }
    
}
