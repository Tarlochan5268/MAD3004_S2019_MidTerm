//
//  Internet.swift
//  C0751142_MID_TERM_MAD3004
//
//  Created by admin on 2019-06-20.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import Foundation
class Internet : Bill
{
    var providerName : String
    var internetGBused : Float
    
    override init()
    {
        self.providerName = ""
        self.internetGBused = 0
    }
}
