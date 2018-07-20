//
//  AboutVC.swift
//  BullsEye
//
//  Created by Yasmine Ghazy on 7/20/18.
//  Copyright © 2018 Yasmine Ghazy. All rights reserved.
//

import UIKit

class AboutVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close(){
        dismiss(animated: true, completion: nil)
    }

}
