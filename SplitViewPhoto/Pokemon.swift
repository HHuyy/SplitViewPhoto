//
//  Pokemon.swift
//  SplitViewPhoto
//
//  Created by tham gia huy on 6/8/18.
//  Copyright © 2018 tham gia huy. All rights reserved.
//

import UIKit

class Pokemon {
    let photoName: String
    
    init(photoName: String) {
        self.photoName = photoName
    }
    
    var photo: UIImage? {
        return UIImage(named: photoName)
    }
    
}
