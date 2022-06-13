//
//  EmpRegisterVC.swift
//  finalLinkedIN
//
//  Created by Capgemini_DA073 on 6/12/22.
//

import UIKit
import FirebaseAuth
import FirebaseStorage
import FirebaseDatabase

class EmpRegisterVC: UIViewController {
    
    
    @IBOutlet weak var Fname: UITextField!
    @IBOutlet weak var DOBT: UITextField!
    @IBOutlet weak var EmailT: UITextField!
    @IBOutlet weak var PassT: UITextField!
    @IBOutlet weak var MobileT: UITextField!
    @IBOutlet weak var CityT: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func RegisterClick(_ sender: Any) {
        
        let fullname = Fname.text ?? ""
        let dob = DOBT.text ?? ""
        let email = EmailT.text ?? ""
        let password = PassT.text ?? ""
        let mobile = MobileT.text ?? ""
        let city = CityT.text ?? ""
        
        Auth.auth().createUser(withEmail: email, password: password) { result, err in
            if err == nil {
                print("No error in registration")
                self.showAlert(title: "Registeration successfull", msg: "Login using Email ID and Password")
                
                
        }
            else {
                            
                self.showAlert(title: "Registeration failed", msg: "ERROR : \(err!.localizedDescription)")
                        }
    
        }
    }
    @IBAction func loginClick(_ sender: Any) {
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
