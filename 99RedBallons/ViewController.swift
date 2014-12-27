//
//  ViewController.swift
//  99RedBallons
//
//  Created by billdow on 12/13/14.
//  Copyright (c) 2014 Dow Publishing LLC. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var ballonslabel: UILabel!
    
    @IBOutlet weak var redBallonsImage: UIImageView!
    
    var balloons:[Balloon] = []
    
    var currentIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        createBalloons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func nextButtonPressedAction(sender: UIBarButtonItem) {

    let balloon = balloons[currentIndex]
    ballonslabel.text = "\(balloon.number) Balloon"
    //backgroundImageView.image = balloon.image
    currentIndex += 1

}


func createBalloons(){
    for var balloonCount = 0; balloonCount <= 99; ++balloonCount
    {
        
        var balloon = Balloon()
        balloon.number = balloonCount
        
      let randonNumber = Int(arc4random_uniform(UInt32(UInt32(4))))
       
        switch randonNumber {
            case 1:
            balloon.image = UIImage(named: "RedBalloon1.jpg")
            case 2:
            balloon.image = UIImage(named: "Redballoon2.jpg")
            case 3:
            balloon.image = UIImage(named: "Redballoon3.jpg")
        default:
            balloon.image = UIImage(named: "Redballoon4.jpg")
          }
     self.balloons.append(balloon)
        
            }
}
}
