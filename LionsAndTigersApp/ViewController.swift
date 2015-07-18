//
//  ViewController.swift
//  LionsAndTigersApp
//
//  Created by Mary Grace Lucas on 7/16/15.
//  Copyright (c) 2015 Mary Grace Lucas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var soundLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.age = 3
        myTiger.breed = "Bengal"
        myTiger.sound = "Roar"
        myTiger.image = UIImage(named: "BengalTiger")
                    println("My tiger's name is \(myTiger.name). Its \(myTiger.age)' years old. Its breed is \(myTiger.breed). And it makes the sound \(myTiger.sound).")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        
    }

}

