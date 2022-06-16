//
//  EmployeeDetailsUtility.swift
//  finalLinkedIN
//
//  Created by Capgemini_DA161 on 6/15/22.
//

import Foundation
class EmployeeDetails {
    
    let Fullname : String?
    let city : String?
    let email : String?
    
    
    let mobile : String?
   
   

    init(fullname : String?, city : String?, email : String?, mobile : String?) {
        
        self.Fullname = fullname
        self.city = city
        self.email = email
        self.mobile = mobile
     
          
    }
}

