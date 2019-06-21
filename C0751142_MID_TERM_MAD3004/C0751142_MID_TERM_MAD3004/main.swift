//
//  main.swift
//  C0751142_MID_TERM_MAD3004
//
//  Created by admin on 2019-06-20.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import Foundation

do{


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
var formattedDate3 : Date = dateFormatter.date(from: "Wednesday, 19 June, 2019")!
var c2bill1 : Bill = Hydro(billId: 1, billDate: formattedDate3, billType: BillType.Hydro, agencyName: "Planet Energy", unitConsumed: 29)
c2bill1.calculateTotal()

var c2bill2 : Bill = Internet(billId: 2, billDate: formattedDate3, billType: BillType.Internet, providerName: "Rogers", internetGBused: 500)
c2bill2.calculateTotal()

var formattedDate4 : Date = dateFormatter.date(from: "Thursday, 24 January, 2019")!
var c2bill3 : Bill = Mobile(billId: 3, billDate: formattedDate4, billType: BillType.Mobile, mobileModelName: "Galaxy Samsung Inc.", mobileNumber: "1234567890", internetGBused: 5, minuteUsed: 356, countryType: CountryType.Canada,planName: "Prepaid Talk + Text plan")
c2bill3.calculateTotal()

var customer2 : Customer = Customer(customerid: 2, firstName: "Vipul", lastName: "Garg", email: "adurrant1@github.io", arrayOfBills: [c2bill1,c2bill2,c2bill3])
Customer.addCustomer(customer: customer2)


var c3bill1 : Bill = Hydro(billId: 1, billDate: formattedDate3, billType: BillType.Hydro, agencyName: "Planet Energy", unitConsumed: 40)
c3bill1.calculateTotal()
var customer3 : Customer = Customer(customerid: 3, firstName: "Anetta", lastName: "Langrick", email: "bgeillc@europa.eu", arrayOfBills: [c3bill1])
Customer.addCustomer(customer: customer3)

Customer.display()

}
catch(CustomerError.invalidEmail)
{
    print("Error : Invalid Email")
}
