//
//  NewsCell.swift
//  Haber
//
//  Created by Mehmet Arıkan on 21.06.2022.
//

import UIKit

class NewsCell: UITableViewCell {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
