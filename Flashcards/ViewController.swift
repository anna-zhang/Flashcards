//
//  ViewController.swift
//  Flashcards
//
//  Created by zhanglj on 2/15/20.
//  Copyright © 2020 zhanganna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var frontLabel: UIButton!
    @IBOutlet weak var backLabel: UIButton!
    
    @IBOutlet weak var buttonOptionOne: UIButton!
    @IBOutlet weak var buttonOptionTwo: UIButton!
    @IBOutlet weak var buttonOptionThree: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        styleCards.layer.cornerRadius = 20.0
        frontLabel.layer.cornerRadius = 20.0
        backLabel.layer.cornerRadius = 20.0
        frontLabel.clipsToBounds = true
        backLabel.clipsToBounds = true
        styleCards.layer.shadowRadius = 15.0
        styleCards.layer.shadowOpacity = 0.2
        
        
        
    }

    @IBAction func didTapOnFlashcard(_ sender: Any) {
        frontLabel.isHidden = true
        backLabel.isHidden = false
    }
    
    @IBAction func backToQuestion(_ sender: Any) {
        backLabel.isHidden = true
        frontLabel.isHidden = false
    }
    @IBOutlet weak var styleCards: UIView!
}
