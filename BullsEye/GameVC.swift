//
//  ViewController.swift
//  BullsEye
//
//  Created by Yasmine Ghazy on 7/20/18.
//  Copyright © 2018 Yasmine Ghazy. All rights reserved.
//

import UIKit
import QuartzCore

class GameVC: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    var currentValue: Int = 0
    var targetValue: Int = 0
    var score = 0
    var round = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.startNewRound()
        self.updateLabels()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAlert(){
        
        let difference: Int = abs(targetValue - currentValue)
        let points: Int = 100 - difference
        
        score += points
        
        let title : String
        switch(difference){
            
            case 0: title = "perfect"
            case 1..<5: title = "you almost had it"
            case 5..<10: title = "pretty good"
            default : title = "not event close"
        }
        
        let message = "You Scored \(points) points"
        
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok",style: .default,
                                   handler: {
                                    action in
                                        self.startNewRound()
                                        self.updateLabels()
                                   })
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    
    }
    
    @IBAction func sliderMoved(_ slider:UISlider){
        currentValue = lroundf(slider.value)
    }
    
    @IBAction func startOver(){
        startNewGame()
        updateLabels()
    }
    
    func startNewRound(){
        //Generating Random Valuer
        round += 1
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
    }
    
    func updateLabels(){
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
    
    func startNewGame(){
        round = 0
        score = 0
        startNewRound()
        
        let transition = CATransition()
        transition.type = kCATransitionFade
        transition.duration = 1
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        view.layer.add(transition, forKey: nil)
    }
}

