//
//  Customer.swift
//  C0751142_MID_TERM_MAD3004
//
//  Created by admin on 2019-06-20.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import Foundation
class Customer
{
    var customerid : String
    var firstName : String
    var lastName : String
    var fullName : String
    {
        return "\(self.firstName) \(self.lastName)"
    }
    var email : String
    var arrayOfBills : [Bill] = [Bill]()
    var totalBillToPay : Float
    {
        var total : Float = 0
        for bill in arrayOfBills
        {
            total = total + bill.totalBillAmount
        }
        return total
    }
}
