//
//  ResultViewController.swift
//  Quizzler-iOS13
//
//  Created by Kapil Kedar on 14/04/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var result = 0

    override func viewDidLoad() {
        super.viewDidLoad()
      
        scoreLabel.text = "\(result)/10"
        if result >= 7 && result != 10{
            adviceLabel.text = "Nice"
        }else if result < 7 && result != 10{
            adviceLabel.text = "Try Again!"
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
