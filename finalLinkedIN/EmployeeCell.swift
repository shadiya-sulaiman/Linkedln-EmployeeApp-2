//
//  EmployeeCell.swift
//  finalLinkedIN
//
//  Created by Capgemini_DA161 on 6/16/22.
//

import UIKit

class EmployeeCell: UITableViewCell {
    
    
    @IBOutlet weak var FullNameL: UILabel!
    
    @IBOutlet weak var EmailL: UILabel!
    
    
    @IBOutlet weak var MobileL: UILabel!
    
    
    @IBOutlet weak var cityL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    

    // MARK: - Table view data source

  
}
