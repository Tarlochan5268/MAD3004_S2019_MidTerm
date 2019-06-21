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
    let internetRate : Float = 10
    let minuteRate : Float = 0.5
    
    override init()
    {
        self.mobileModelName = ""
        self.mobileNumber = ""
        self.internetGBused = 0
        self.minuteUsed = 0
        self.countryType = CountryType.None
        super.init()
    }
    init(billId : Int,billDate : Date,billType : BillType,mobileModelName : String,mobileNumber : String,internetGBused : Float,minuteUsed : Int,countryType : CountryType)
    {
        self.mobileModelName = mobileModelName
        self.mobileNumber = mobileNumber
        self.internetGBused = internetGBused
        self.minuteUsed = minuteUsed
        self.countryType = countryType
        super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: 0)
    }
    
    override func calculateTotal()->Float
    {
        var total : Float = 0
        total = (internetGBused * self.internetRate) + ( Float(minuteUsed) * minuteRate )
        self.totalBillAmount = total
        return total
    }
}
