//
//  Hydro.swift
//  C0751142_MID_TERM_MAD3004
//
//  Created by admin on 2019-06-20.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import Foundation
class Hydro : Bill
{
    var agencyName : String
    var unitConsumed : Float
    
    override init()
    {
        self.agencyName = ""
        self.unitConsumed = 0
    }
}
