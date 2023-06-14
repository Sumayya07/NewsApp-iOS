//
//  ImgView + Ext.swift
//  SenpiperAssignment
//
//  Created by Sumayya Siddiqui on 14/06/23.
//

import Foundation
import UIKit

// MARK: ImageView Extension
extension UIImageView {
    public func imageFromUrl(urlString: String?) {
        guard let imageURLString = urlString else {
            self.image = UIImage(named: "default.png")
            return
        }
        DispatchQueue.global().async { [weak self] in
            let data = try? Data(contentsOf: URL(string: imageURLString)!)
            DispatchQueue.main.async {
                self?.image = data != nil ? UIImage(data: data!) : UIImage()
            }
        }
    }
}
