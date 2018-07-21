//
//  CustomButton.swift
//  BullsEye
//
//  Created by Yasmine Ghazy on 7/21/18.
//  Copyright © 2018 Yasmine Ghazy. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

    required public init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        self.setBackgroundImage(#imageLiteral(resourceName: "Button-Normal"), for: .normal)
        self.setBackgroundImage(#imageLiteral(resourceName: "Button-Highlighted"), for: .highlighted)
        let titleColor = UIColor.init(red: 96, green: 30, blue: 0, alpha: 1)
        self.setTitleColor(titleColor, for: .normal)
        
        let shadowColor = UIColor.init(red: 255, green: 255, blue: 255, alpha: 0.5)
        self.setTitleShadowColor(shadowColor, for: .normal)
        
        self.titleLabel?.shadowOffset = CGSize(width: 0, height: 1)
        self.titleLabel?.font = UIFont(name: "Arial Rounded MT Bold", size: 20)
    }

}
