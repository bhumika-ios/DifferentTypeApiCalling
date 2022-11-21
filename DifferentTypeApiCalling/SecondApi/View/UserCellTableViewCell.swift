//
//  UserCellTableViewCell.swift
//  DifferentTypeApiCalling
//
//  Created by Bhumika Patel on 21/11/22.
//

import UIKit

class UserCellTableViewCell: UITableViewCell {
    
    @IBOutlet var lblId: UILabel!
    @IBOutlet var lblTitle: UILabel!
    @IBOutlet var lblStatus: UILabel!
    var modelUser: UModel? {
        didSet{
            userConfiguration()
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func userConfiguration(){
        let status = modelUser?.getStatusColor()
        lblStatus.text = status?.0
        backgroundColor = status?.1
        if let id = modelUser?.id{
           lblId.text = "\(id)"
        }else{
           lblId.text = "No Id"
        }
                  lblTitle.text = modelUser?.title

    }
    
}
