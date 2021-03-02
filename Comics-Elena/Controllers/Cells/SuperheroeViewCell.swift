//
//  SuperheroeViewCell.swift
//  Comics-Elena
//
//  Created by elena hermina barbullushi on 01.03.21.
//

import UIKit

class SuperheroeViewCell: UICollectionViewCell {
    @IBOutlet weak var viewCell: UIView!
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var search: UISearchBar!
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
       // imageCell.image = nil
        name.text = nil
        title.text = nil
        
    }
    
    func configure( title: String?, name: String?) {
       
     //   self.imageCell.image = UIImage(named: imageCell ?? "")
        self.name.text = name
        self.title.text = title
       
    }
    
}
