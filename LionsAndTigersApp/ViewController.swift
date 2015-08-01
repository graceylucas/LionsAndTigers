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
    
    var myTigers:[Tiger] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // On the lefthand side of the = sign, we are creating a new variable pointer called myTiger and "setting" it to point to the object on the righthand side of the = sign.
        // By typing Tiger() lets us create -- or instantiatee -- the object Tiger. It is a type, also known as a struct.
        // Now that the pointer myTiger is pointing to an actual object Tiger(), we can "set" the properties of this new object through the myTiger var
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.age = 3
        myTiger.breed = "bengal"
        myTiger.sound = "roar"
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        
        myTigers.append(myTiger)
        
            
        // Calling this print line places helpful information into my developer's log below
        println("My pet's name is \(myTiger.name). He is a \(myTiger.age) year old \(myTiger.breed) and he says \"\(myTiger.sound).\"")
        
        
        
        // On the righthand side, I am "getting" properties my IBOutlets
        // On the lefthand side I'm "getting" properties from my struct myTiger and "setting" these properties for my IBOutlets
        imageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "\(myTiger.age)"
        breedLabel.text = myTiger.breed
        soundLabel.text = myTiger.sound
    
        var secondTiger = Tiger()
        secondTiger.name = "Tigress"
        secondTiger.age =  2
        secondTiger.breed = "Indochinese tiger"
        secondTiger.sound = "meeew"
        secondTiger.image = UIImage(named: "IndochineseTiger.jpg")
        println("My tiger's name is \(secondTiger.name). She is a \(secondTiger.age) year old \(secondTiger.breed) and says \"\(secondTiger.sound).\"")
        
        myTigers.append(secondTiger)
        
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Jacob"
        thirdTiger.age = 4
        thirdTiger.breed = "Malayan"
        thirdTiger.sound = "boop"
        thirdTiger.image = UIImage(named: "MalayanTiger.jpg")
        
        var fourthTiger = Tiger()
        fourthTiger.name = "Spar"
        fourthTiger.age = 5
        fourthTiger.breed = "SiberianTiger"
        fourthTiger.sound = "sigh"
        fourthTiger.image = UIImage(named: "SiberianTiger.jpg")
        
        myTigers += [thirdTiger, fourthTiger]
    
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        println(myTigers)
        
        let randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        let randomTiger = myTigers[randomIndex]
        
        imageView.image = randomTiger.image
        nameLabel.text = randomTiger.name
        ageLabel.text = "\(randomTiger.age)"
        breedLabel.text = randomTiger.breed
        soundLabel.text = randomTiger.sound
        
    }
    
    
}

