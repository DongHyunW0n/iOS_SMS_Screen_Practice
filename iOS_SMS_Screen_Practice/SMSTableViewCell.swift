//
//  SMSTableViewCell.swift
//  iOS_SMS_Screen_Practice
//
//  Created by WonDongHyun on 2022/08/31.
//

import Foundation
import UIKit

class SMSTableViewCell : UITableViewCell {
    
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var dateLabel : UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        print("SMSTableView - awakeFromNib() Called")
        
        
        
    }
    
    
    
}
