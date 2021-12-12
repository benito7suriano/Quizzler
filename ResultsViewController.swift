//
//  ResultsViewController.swift
//  Quizzler-iOS13
//
//  Created by Beno Suriano on 4/12/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit
import ConfettiView

class ResultsViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var slyCommentLabel: UILabel!
    @IBOutlet weak var confetti: ConfettiView!
    
    var score: String?
    var slyComment: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scoreLabel.text = score ?? "Oops... "
        slyCommentLabel.text = slyComment ?? "You win, we lose!"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let quizScoreDouble = Double(score!) {
            switch quizScoreDouble {
            case 0.0:
                confetti.emit(with: [
                    .text("🤐"),
                    .text("🤭"),
                    .shape(.circle, .darkGray),
                    .shape(.square, .black)
                ])
            case 0.1..<49.9:
                confetti.emit(with: [
                    .text("🤦‍♂️"),
                    .text("📚"),
                    .shape(.circle, .darkGray),
                    .shape(.square, .black)
                ])
            case 50.0..<74.9:
                confetti.emit(with: [
                    .text("🤡"),
                    .text("😉"),
                    .shape(.circle, .blue),
                    .shape(.square, .yellow)

                ])
            case 74.9..<89.9:
                confetti.emit(with: [
                    .text("🤩"),
                    .text("👍"),
                    .shape(.circle, .purple),
                    .shape(.square, .yellow)
                ])
            default:
                confetti.emit(with: [
                    .text("🤩"),
                    .text("👍"),
                    .text("💯"),
                    .shape(.circle, .purple),
                    .shape(.square, .yellow)
                ])
            }
        }
    }
    
    @IBAction func retakeQuizButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
