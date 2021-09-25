//
//  ViewController.swift
//  DropDownMenu
//
//  Created by Raj on 05/06/17.
//  Copyright © 2017 Raj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cities: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSelectCity(_ sender: UIButton) {
        cities.forEach { (Button) in
            UIView.animate(withDuration: 0.3, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    @IBAction func btnCity1(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.blue
    }
    @IBAction func btnCity2(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.green
    }
    @IBAction func btnCity3(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.red
    }
    @IBAction func btnCity4(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.orange
    }
}

