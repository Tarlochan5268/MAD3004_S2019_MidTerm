//
//  Bill.swift
//  C0751142_MID_TERM_MAD3004
//
//  Created by admin on 2019-06-20.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import Foundation
class Bill
{
    let billId : Int
    var billDate : Date
    var billType : BillType
    //var totalBillAmount
    init()
    {
        self.billId = 0
        self.billDate = Date()
        self.billType = BillType.None
    }
}
