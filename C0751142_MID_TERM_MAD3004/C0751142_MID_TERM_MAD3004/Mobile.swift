//
//  Mobile.swift
//  C0751142_MID_TERM_MAD3004
//
//  Created by admin on 2019-06-20.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import Foundation
class Mobile : Bill
{
    var mobileModelName : String
    var mobileNumber : String
    var internetGBused : Float
    var minuteUsed : Int
    var countryType : CountryType
    var totalBillAmount: Float
    {
        
    }
    
    override init()
    {
        self.mobileModelName = ""
        self.mobileNumber = ""
        self.internetGBused = 0
        self.minuteUsed = 0
    }
}
