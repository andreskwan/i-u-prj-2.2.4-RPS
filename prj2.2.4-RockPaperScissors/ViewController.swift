//
//  ViewController.swift
//  prj2.2.4-RockPaperScissors
//
//  Created by Andres Kwan on 4/19/15.
//  Copyright (c) 2015 Kwan Castle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rockButton(sender: UIButton) {
        var controller : ResultVC
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultVC") as! ResultVC
        //TODO: create a method (takes a ResultVC) -> set it according to a random value
        
//        controller.matchImage.image = UIImage(named:"RockCrushesScissors")
        presentViewController(controller, animated: true, completion: nil)
    }

}

