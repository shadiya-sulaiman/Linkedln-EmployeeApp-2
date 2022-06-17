//
//  EmpLoginVC.swift
//  finalLinkedIN
//
//  Created by Capgemini_DA161 on 6/16/22.
//

import UIKit
import FirebaseAuth
import FirebaseStorage
import FirebaseDatabase

class EmpLoginVC: UIViewController {
    
    
    @IBOutlet weak var UserL: UITextField!
    
    
    @IBOutlet weak var PassL: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func CancelClick(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Login") as! LoginVC
        self.show(vc, sender: nil)
    }
    
    
    @IBAction func LoginClick(_ sender: Any) {
        
        let emailLogin = UserL.text ?? ""
        let password = PassL.text ?? ""
        
        Auth.auth().signIn(withEmail: emailLogin, password: password) { result, err in
                  if err == nil{
                      let vc = self.storyboard?.instantiateViewController(withIdentifier: "Home") as! HomeVC
                      self.show(vc, sender: nil)
                      
                      
                      
                  }
                  else {
                      self.showAlert(title: "Login failed..", msg: err!.localizedDescription)
                       }
        }
    }
    
   
    @IBAction func forgetClick(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "reset") as! ForgetPasswordVC
        self.show(vc, sender: nil)
        
    }
    

}
