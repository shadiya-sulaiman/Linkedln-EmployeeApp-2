//
//  DBUtilities.swift
//  finalLinkedIN
//
//  Created by Capgemini_DA161 on 6/14/22.
//

import Foundation
import FirebaseDatabase
import FirebaseAuth
import FirebaseStorage
import UIKit

struct Account {
    
    var fullname : String
    var dob : String
    var email : String
    var mobile : String
    var city : String
    var state : String
    var country : String
    
    
    //object to dict conversion
    func toDict() -> [String : String] {
        ["fullname": fullname, "dob": dob, "email" : email, "city": city, "mobile" : mobile, "state" : state, "country" : country]
    
    }
}

class DBUtility {
    
    private init(){}
        
    static let instance = DBUtility()
    
    let dbRef = Database.database().reference()
    let loggedInUser = Auth.auth().currentUser
    
    
    func saveEmpDetails(fullname:String, email: String, city: String, mobile: String, dob: String, state : String, country : String){
          
          let loggedInUser = Auth.auth().currentUser
    
}
}
