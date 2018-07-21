//
//  CustomSlider.swift
//  BullsEye
//
//  Created by Yasmine Ghazy on 7/21/18.
//  Copyright © 2018 Yasmine Ghazy. All rights reserved.
//

import UIKit

class CustomSlider: UISlider {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.*/
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let thumbImageNormal = #imageLiteral(resourceName: "SliderThumb-Normal")
        self.setThumbImage(thumbImageNormal, for: .normal)
        let thumbImageHighlighted = #imageLiteral(resourceName: "SliderThumb-Highlighted")
        self.setThumbImage(thumbImageHighlighted, for: .highlighted)
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        let trackLeftImage = #imageLiteral(resourceName: "SliderTrackLeft")
        let trackLeftResizable =
            trackLeftImage.resizableImage(withCapInsets: insets)
        self.setMinimumTrackImage(trackLeftResizable, for: .normal)
        let trackRightImage = #imageLiteral(resourceName: "SliderTrackRight")
        let trackRightResizable =
            trackRightImage.resizableImage(withCapInsets: insets)
        self.setMaximumTrackImage(trackRightResizable, for: .normal)
        
    }
    
}
