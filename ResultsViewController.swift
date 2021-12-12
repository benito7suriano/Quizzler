//
//  ResultsViewController.swift
//  Quizzler-iOS13
//
//  Created by Beno Suriano on 4/12/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var slyCommentLabel: UILabel!

    var score: String?
    var slyComment: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        scoreLabel.text = score ?? "Oops... "
        slyCommentLabel.text = slyComment ?? "You win, we lose!"
    }
    
    @IBAction func retakeQuizButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
