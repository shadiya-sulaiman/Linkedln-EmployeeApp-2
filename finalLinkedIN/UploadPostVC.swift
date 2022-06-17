//
//  UploadPostVC.swift
//  finalLinkedIN
//
//  Created by Capgemini_DA161 on 6/16/22.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage

class UploadPostVC: UIViewController {
    
    
    @IBOutlet weak var Uploadimg: UIImageView!
    
    @IBOutlet weak var imgSelect: UIButton!
    
    
    @IBOutlet weak var PostB: UIButton!
    
    var picker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.delegate = self

        // Do any additional setup after loading the view.
    }
    
  
    
    @IBAction func SelectImgClick(_ sender: Any) {
        
        picker.allowsEditing = true
        picker.sourceType = .photoLibrary
        
        self.present(picker, animated: true, completion: nil)
        
        
    }
    
    
    @IBAction func PostClick(_ sender: Any) {
        
        let uid = Auth.auth().currentUser?.uid
        let dbref = Database.database().reference()
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

extension UploadPostVC :  UIImagePickerControllerDelegate, UINavigationControllerDelegate
{
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            
            Uploadimg.image = image
            imgSelect.isHidden = true
            
            
        }
        self.dismiss(animated: true)
    }
}
