//
//  HomeScreen.swift
//  neatwork0.5
//
//  Created by Girrard Del Pilar on 4/18/20.
//  Copyright © 2020 JD Pablo. All rights reserved.
//

import UIKit

class HomeScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.Background()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func Background() {
        UIView.animate(withDuration: 2, animations: {
            self.view.backgroundColor = UIColor.init(red: 69/255, green: 0/255, blue: 130/255, alpha: 1.0)
        }, completion: {
            (completed: Bool) -> Void in
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear, animations: {
                self.view.backgroundColor = UIColor.init(red: 53/255, green: 16/255, blue: 117/255, alpha: 1.0)
            }, completion: {
                (completed: Bool) -> Void in
                self.Background()
            })
        })
    }
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func infoButtonTapped() {
    }
    
    @IBAction func historyButtonTapped() {
    }
    
    @IBAction func neatworkButtonTapped() {
        let activityController = UIActivityViewController(activityItems: [textField.text!], applicationActivities: nil)
        present(activityController, animated: true, completion: nil)
    }
    
    @IBAction func modeButtonTapped() {
    }
   
}

