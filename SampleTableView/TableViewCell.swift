//
//  TableViewCell.swift
//  SampleTableView
//
//  Created by 佐藤瑠偉史 on 2021/10/07.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mainTextLabel: UILabel!
    @IBOutlet weak var contentsImageView: UIImageView!
    
    
    // cellの内容をリセット
    override func prepareForReuse() {
        super.prepareForReuse()
        iconView.image = nil
        nameLabel.text = nil
        mainTextLabel.text = nil
        contentsImageView.image = nil
    }
    
    func configure(user: UserModel) {
        if let iconImageUrlStr = user.icon, !iconImageUrlStr.isEmpty {
            iconView.image = getImage(UrlStr: iconImageUrlStr)
        }
        
        nameLabel.text = user.name
        mainTextLabel.text = user.mainText
        
        if let contentsImageUrlStr = user.image, !contentsImageUrlStr.isEmpty {
            guard let image = getImage(UrlStr: contentsImageUrlStr) else {
                contentsImageView.isHidden = true
                return
            }
            contentsImageView.image = image
            contentsImageView.isHidden = false
        } else {
            contentsImageView.isHidden = true
        }
    }
    
    func getImage(UrlStr: String) -> UIImage? {
        guard let url = URL(string: UrlStr) else { return nil }
        do {
            let data = try Data(contentsOf: url)
            return UIImage(data: data)
        } catch {
            print("error")
            return nil
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
    
}
