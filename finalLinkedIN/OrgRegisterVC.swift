//
//  OrgRegisterVC.swift
//  finalLinkedIN
//
//  Created by Capgemini_DA073 on 6/12/22.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage

class OrgRegisterVC: UIViewController {
    
    @IBOutlet weak var OrgnameT: UITextField!
    @IBOutlet weak var WebsiteT: UITextField!
    @IBOutlet weak var EmailT: UITextField!
    @IBOutlet weak var Passt: UITextField!
    @IBOutlet weak var CnfrmPassT: UITextField!
    @IBOutlet weak var LocationT: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func RegClick(_ sender: Any) {
        let OrganizationName = OrgnameT.text ?? ""
        let WebsiteName = WebsiteT.text ?? ""
        let email = EmailT.text ?? ""
        let password = Passt.text ?? ""
        let location = LocationT.text ?? ""
        
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
    
    
    @IBAction func LoginClick(_ sender: Any) {
        
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
