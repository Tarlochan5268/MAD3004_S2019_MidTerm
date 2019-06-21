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
    let customerid : Int

    private var firstName : String
    var getfirstName : String
    {
        get
        {
            return self.firstName
        }
    }
    
    private var lastName : String
    var getlastName : String
    {
        get
        {
            return self.lastName
        }
    }
    //computed value
    var fullName : String
    {
        return "\(self.firstName) \(self.lastName)"
    }
    
    private let email : String
    var getemail : String
    {
        get
        {
            return self.email
        }
    }
    
    var arrayOfBills : [Bill] = [Bill]()
    //computed value
    var totalBillToPay : Float
    {
        var total : Float = 0
        for bill in arrayOfBills
        {
            total = total + bill.totalBillAmount
        }
        return total
    }
    
    init()
    {
        self.customerid = 0
        self.firstName = ""
        self.lastName = ""
        self.email = ""
        self.arrayOfBills = []
    }
    init(customerid : Int,firstName : String,lastName : String,email : String,arrayOfBills : [Bill])
    {
        self.customerid = customerid
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.arrayOfBills = arrayOfBills
    }
    
    static var customerDict = [Int:Customer]()
    
    static func addCustomer(customer : Customer)
    {
        customerDict.updateValue(customer, forKey: customer.customerid )
    }
    
    static func getCustomerById(customerid : Int) -> Customer?
    {
        if let customerObj = customerDict[customerid]
        {
            return customerObj
        }
        else
        {
            return nil
        }
    }
    
    func calculateTotalBill() ->Float
    {
        var total : Float = 0
        for bill in self.arrayOfBills
        {
            total = total + self.totalBillToPay
        }
        return total
    }
    
}
