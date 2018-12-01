//
//  DailyModel.swift
//  Mind
//
//  Created by Adel on 12/1/18.
//  Copyright © 2018 Adel. All rights reserved.
//

import Foundation

class Daily{
    
    let LB_Sale_Bill_Count: Int
    let LB_Sale_Total: Double
    let LB_Buy_Bill_Count: Int
    let LB_Buy_Total: Double
    let LB_SaleReturn_Bill_Count: Int//
    let LB_SaleReturn_Total :Double//
    let LB_BuyReturn_Bill_Count:Int
    //
    let LB_BuyReturn_Total: Double
    let LB_RECEIPT_Bill_Count: Int//
    let LB_RECEIPT_Total: Double//
    let LB_PAYMENT_Bill_Count: Int//
    let LB_PAYMENT_Total :Double//
    let LB_Total_Bill_Count:Int
    let LB_Total_Bill_Total :Double
    
    // Init initializer
    init(LB_Sale_Bill_Count:Int,LB_Sale_Total:Double,LB_Buy_Bill_Count:Int,LB_Buy_Total:Double,LB_SaleReturn_Bill_Count:Int,LB_SaleReturn_Total:Double , LB_BuyReturn_Bill_Count:Int,LB_BuyReturn_Total:Double,LB_RECEIPT_Bill_Count:Int,LB_RECEIPT_Total:Double,LB_PAYMENT_Bill_Count:Int,LB_PAYMENT_Total:Double,LB_Total_Bill_Count:Int,LB_Total_Bill_Total:Double) {
        
        self.LB_Sale_Bill_Count = LB_Sale_Bill_Count
        self.LB_Sale_Total = LB_Sale_Total
        self.LB_Buy_Bill_Count = LB_Buy_Bill_Count
        self.LB_Buy_Total = LB_Buy_Total
        self.LB_SaleReturn_Bill_Count = LB_SaleReturn_Bill_Count
        self.LB_SaleReturn_Total = LB_SaleReturn_Total
        self.LB_BuyReturn_Bill_Count = LB_BuyReturn_Bill_Count
        //
        self.LB_BuyReturn_Total = LB_BuyReturn_Total
        self.LB_RECEIPT_Bill_Count = LB_RECEIPT_Bill_Count
        self.LB_RECEIPT_Total = LB_RECEIPT_Total
        self.LB_PAYMENT_Bill_Count = LB_PAYMENT_Bill_Count
        self.LB_PAYMENT_Total = LB_PAYMENT_Total
        self.LB_Total_Bill_Count = LB_Total_Bill_Count
        self.LB_Total_Bill_Total = LB_Total_Bill_Total
    }
    
}
