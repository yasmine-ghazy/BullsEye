//
//  AboutVC.swift
//  BullsEye
//
//  Created by Yasmine Ghazy on 7/20/18.
//  Copyright © 2018 Yasmine Ghazy. All rights reserved.
//

import UIKit

class AboutVC: UIViewController {

    @IBOutlet weak var webView : UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html"){
            if let htmlData = try? Data.init(contentsOf: url){
                let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
                webView.load(htmlData, mimeType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL)
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close(){
        dismiss(animated: true, completion: nil)
    }

}
