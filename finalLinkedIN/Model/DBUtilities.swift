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
    
    func saveEmpDetails(fullname:String, email: String, city: String, mobile: String, dob: String, state : String, country : String, Post : String){
          
          let loggedInUser = Auth.auth().currentUser
          let EmpAccount = Account(fullname: fullname, dob: dob, email: email, mobile: mobile, city: city, state: state, country: country)
       
        if let user = loggedInUser {
            dbRef.child("Users").child(user.uid).setValue(EmpAccount.toDict())
        }
    
}
    func getUserDetails(completionHandler: @escaping (Account) -> Void) {

            // get logged in user

            let loggedInUser = Auth.auth().currentUser

            if let user = loggedInUser {

                // read from realtime database

                let uNode = dbRef.child("Users").child(user.uid)

                uNode.getData { err, snapshot in

                    if err == nil {

                    
                        let info = snapshot?.value as! Dictionary<String, String>
                
                        let email = info["email"] ?? ""
                        let mobile = info["mobile"] ?? ""
                        let fullname = info["fullname"] ?? ""
                        let city = info["city"] ?? ""
                        let password = info["password"] ?? ""
                        let state = info["state"] ?? ""
                        let country = info["country"] ?? ""
                        let dob = info["dob"] ?? ""
                       

                        print("\(fullname)")
                        print("\(email)")
                        print("\(mobile)")
                        print("\(city)")
                        print("\(state)")
                        print("\(country)")
                        print("\(dob)")
                        

                        let acc = Account(fullname: fullname, dob: dob, email: email, mobile: mobile, city: city, state: state, country: country)
                   
                        completionHandler(acc)

                    }

                }

            }

        }
}


struct OAccount {
    
    var OrganizationName : String
    var WebsiteName : String
    var email : String
    var ContactNo : String
    var Location : String
   
    
    
    //object to dict conversion
    func toDict() -> [String : String] {
        ["OrgName": OrganizationName, "website": WebsiteName, "email" : email, "ContactNo": ContactNo, "location" : Location]
    
    }
}

class OrgUtility {
    
    private init(){}
        
    static let instance = OrgUtility()
    
    let dbRef = Database.database().reference()
    let loggedInUser = Auth.auth().currentUser
    
    func saveOrgDetails(OrgName: String, website: String, email: String, ContactNo: String, location: String){
          
          let loggedInUser = Auth.auth().currentUser
          let OrgAccount = OAccount(OrganizationName: OrgName, WebsiteName: website, email: email, ContactNo: ContactNo, Location: location)
       
        if let organization = loggedInUser {
            dbRef.child("Organizations").child(organization.uid).setValue(OrgAccount.toDict())
        }
    
}
    func getOrgDetails(completionHandler: @escaping (OAccount) -> Void) {

            // get logged in user

            let loggedInUser = Auth.auth().currentUser
            if let organization = loggedInUser {

                // read from realtime database

                

                let uNode = dbRef.child("Organizations").child(organization.uid)

                

                uNode.getData { err, snapshot in

                    

                    if err == nil {

                        

                        let info = snapshot?.value as! Dictionary<String, String>

                        

                        let orgName = info["orgName"] ?? ""

                        let website = info["website"] ?? ""

                        let email = info["email"] ?? ""

                        let ContactNo = info["ContactNo"] ?? ""

                        let password = info["password"] ?? ""
                        let location = info["location"] ?? ""
                       

                        

                        print("\(orgName)")

                        print("\(website)")

                        print("\(email)")

                        print("\(ContactNo)")
                        print("\(location)")
                       
                        

                        

                        let Oacc = OAccount(OrganizationName: orgName, WebsiteName: website, email: email, ContactNo: ContactNo, Location: location)
                        
                        completionHandler(Oacc)

                        

                         

                    }

                }

            }

        }
}
