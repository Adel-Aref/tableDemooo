
//  ReportModel.swift
//  Mind
//
//  Created by Adel on 9/3/18.
//  Copyright © 2018 Mind. All rights reserved.
//

import Foundation
class OrginzationModel{
    let Orginzation_Name: String
    let Time  : Time
    let Daily: Daily
    let Analysis: [Analysis]
    let Money: Money
    let Daily_Users: [Daily_Users]
    let Balance: Balance
    let Earns: Earns
    
    init(Orginzation_Name: String, Time: Time, Daily: Daily, Analysis: [Analysis],Money: Money, Daily_Users: [Daily_Users],Balance: Balance,Earns:Earns) {
        self.Orginzation_Name = Orginzation_Name
        self.Time = Time
        self.Daily = Daily
        self.Analysis = Analysis
        self.Money = Money
        self.Daily_Users = Daily_Users
        self.Balance = Balance
        self.Earns = Earns
        
    }

}
