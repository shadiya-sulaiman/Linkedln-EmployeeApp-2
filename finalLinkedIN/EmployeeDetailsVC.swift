//
//  EmployeeDetailsVC.swift
//  finalLinkedIN
//
//  Created by Capgemini_DA161 on 6/15/22.
//

import UIKit
import FirebaseAuth
import FirebaseStorage
import FirebaseDatabase


class EmployeeDetailsVC: UIViewController {
    
    

    @IBOutlet weak var EmpDetailTBL: UITableView!
    
    
    var ref : DatabaseReference?
    var dbHandle : DatabaseHandle?
    var postData = [EmployeeDetails]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       EmpDetailTBL.delegate = self
       EmpDetailTBL.dataSource = self
        
        ref = Database.database().reference().child("Users")
        ref!.observe(DataEventType.value, with: {(DataSnapshot) in
            if DataSnapshot.childrenCount > 0 {
                
                print("has children")
                
                for users in DataSnapshot.children.allObjects as![DataSnapshot]{
                    
                    let userObject = users.value as? [String: AnyObject]
                    
                    let fullname = userObject?["fullName"]
                    let city = userObject?["city"]
                    let email = userObject?["email"]
                   
                    let mobile = userObject?["mobile"]
                    
                    let employee = EmployeeDetails(fullname: fullname as? String, city: city as? String, email: email as? String, mobile: mobile as? String)
                    
                    
                    print("employee")
                    self.postData.append(employee)
                    print("appended")
                    
                    
                }
                self.EmpDetailTBL.reloadData()
            }
        })
        
    }
                    
                     
                     
        
        

        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    
   
}



extension EmployeeDetailsVC : UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! EmployeeCell
        
        let emp : EmployeeDetails
        emp = postData[indexPath.row]
        
        cell.FullNameL.text = emp.Fullname
        cell.EmailL.text = emp.email
        cell.MobileL.text = emp.mobile
        cell.cityL.text = emp.city
        
        return cell
    }
}

extension EmployeeDetailsVC : UITableViewDelegate{
    
}
        
  
