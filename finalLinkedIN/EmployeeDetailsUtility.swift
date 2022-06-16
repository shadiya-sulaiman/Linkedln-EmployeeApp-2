//
//  EmployeeDetailsUtility.swift
//  finalLinkedIN
//
//  Created by Capgemini_DA161 on 6/15/22.
//

import Foundation
class EmployeeDetails {
    
    let name : String?
    let city : String?
    let email : String?
    
    
    let mobile : String?
    let profileUrl : String?
   

    init(name : String?, city : String?, email : String?, mobile : String?, doj : String?, empId : String?, salary : String?, profileUrl: String?, lat: Double?, lon: Double?){
        
        self.name = name
        self.city = city
        self.email = email
        self.mobile = mobile
     
        self.profileUrl = profileUrl
       
    }
}

