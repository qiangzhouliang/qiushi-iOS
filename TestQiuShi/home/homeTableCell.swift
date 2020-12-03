//
//  homeTableCell.swift
//  TestQiuShi
//
//  Created by qiangzhouliang on 2020/12/3.
//

import UIKit

class homeTableCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    init(withIdentifier identifier: String, for indexPath: IndexPath) {
        
        super.init(style: UITableViewCell.CellStyle, reuseIdentifier: identifier)
    }

}
