//
//  ResultVC.swift
//  prj2.2.4-RockPaperScissors
//
//  Created by Andres Kwan on 4/19/15.
//  Copyright (c) 2015 Kwan Castle. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {

    var winnerObj    :String?
    var message      :String?

    @IBOutlet weak var matchImage: UIImageView!
    @IBOutlet weak var matchLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        if let winnerObj = self.winnerObj{
            self.matchImage.image = UIImage(named: winnerObj)
        }
        if let message = self.message{
            self.matchLabel.text = message
        }
        
    }

    @IBAction func playAgainButon(sender: UIButton) {
        var controller : ViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("MainVC") as! ViewController
        presentViewController(controller, animated: true, completion: nil)
    }
}
