//
//  main.swift
//  C0751142_MID_TERM_MAD3004
//
//  Created by admin on 2019-06-20.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import Foundation

var dateFormatter = DateFormatter()
dateFormatter.dateFormat = "EEEE, dd MMMM, yyyy"
//yyyy-MM-dd HH:mm:ss


var formattedDate1 : Date = dateFormatter.date(from: "Wednesday, 19 June, 2019")!
//print(dateFormatter.string(from: formattedDate!))
//print(formattedDate1.getForamttedDate())
var c1bill1 : Bill = Hydro(billId: 1, billDate: formattedDate1, billType: BillType.Hydro, agencyName: "Planet Energy", unitConsumed: 29)
c1bill1.calculateTotal()
var formattedDate2 : Date = dateFormatter.date(from: "Wednesday, 19 June, 2019")!
var c1bill2 : Bill = Internet(billId: 2, billDate: formattedDate2, billType: BillType.Internet, providerName: "Rogers", internetGBused: 500)
c1bill2.calculateTotal()
//print(c2bill1.calculateTotal().currency())

var customer1 : Customer = Customer(customerid: 1, firstName: "Pritesh", lastName: "Patel", email: "amallabyg@topsy.com", arrayOfBills: [c1bill1,c1bill2])
Customer.addCustomer(customer: customer1)

//print(Customer.customerDict)
