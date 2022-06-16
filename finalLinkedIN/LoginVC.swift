//
//  LoginVC.swift
//  finalLinkedIN
//
//  Created by Capgemini_DA073 on 6/12/22.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage

class LoginVC: UIViewController {
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func EmployeeClick(_ sender: Any) {
    }
    
    
    
    @IBAction func OrgClick(_ sender: Any) {
    }
    
    
    @IBAction func loginClick(_ sender: Any) {
        
       
        
    }
    
    
    
    @IBAction func forgetClick(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "reset") as! ForgetPasswordVC
        self.show(vc, sender: nil)
        
       
    }
    
    
    
    @IBAction func regEmpClick(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "EmpDetails")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    @IBAction func regOrgClick(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "OrgDetails")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
        
    }
    
    
    @IBAction func cancelClick(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Login")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
        
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
