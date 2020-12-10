//
//  ViewController.swift
//  DiceRollChallenge
//
//  Created by  on 10/28/20.
//  Copyright © 2020 Colin'sApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    // hello
    //  @IBOutlet weak var GifImageView: UIImageView!
    
    //  @IBOutlet weak var DiceImageView: UIImageView!
    
    @IBOutlet weak var AllDiceImageView: UIImageView!
    
    @IBOutlet weak var BlueImageView: UIImageView!
    
    @IBOutlet weak var RedImageView: UIImageView!
    
    @IBOutlet weak var MyLabel: UILabel!
    
    var dicepositions = [-150, -90, -29.5, 29.5, 90, 150]
    var Ran1 = 0.0
    var Ran2 = 0.0
    
    var die1 = 0
    var die2 = 0
    override func viewDidLoad()
    {
        
        
        super.viewDidLoad()
        //   DiceImageView.image = UIImage (named: "DiceRoller")
        //    let gifURL : String = "https://www.google.com/search?q=rolling+dice+gif&source=lnms&tbm=isch&sa=X&ved=2ahUKEwiylaXrx-nsAhUZhXIEHXDvDWQQ_AUoAXoECCUQAw&biw=1280&bih=672#imgrc=MeWTJ6cCUHdUtM"
        //   let imageURL = UIImage.gifImageWithURL(gifURL)
        //   GifImageView.image = imageURL
        //   let gifURL : String = "http://www.gifbin.com/bin/4802swswsw04.gif"
        //      let imageURL = UIImage.gifImageWithURL(gifURL)
        //     let imageView3 = UIImageView(image: imageURL)
        //   imageView3.frame = CGRect(x: 20.0, y: 390.0, width: self.view.frame.size.width - 40, height: 150.0)
        //  view.addSubview(imageView3)
        let jeremyGif = UIImage.gifImageWithName("StarTrekDice")
        let imageView = UIImageView(image: jeremyGif)
        imageView.frame = CGRect(x: 20.0, y: 50.0, width: self.view.frame.size.width - 40, height: 300.0)
        view.addSubview(imageView)
    }
    
    @IBAction func ButtonTapped(_ sender: UIButton)
    {
        Ran1 = dicepositions.randomElement()!
        Ran2 = dicepositions.randomElement()!
        
        if Ran1 == -150
        {
            die1 = 1
        }
        else if Ran1 == -90
        {
            die1 = 2
        }
        else if Ran1 == -29.5
        {
            die1 = 3
        }
        else if Ran1 == 29.5
        {
            die1 = 4
        }
        else if Ran1 == 90
        {
            die1 = 5
        }
        else if Ran1 == 150
        {
            die1 = 6
        }
        
        if Ran2 == -150
        {
            die2 = 1
        }
        else if Ran2 == -90
        {
            die2 = 2
        }
        else if Ran2 == -29.5
        {
            die2 = 3
        }
        else if Ran2 == 29.5
        {
            die2 = 4
        }
        else if Ran2 == 90
        {
            die2 = 5
        }
        else if Ran2 == 150
        {
            die2 = 6
        }
        
        
        
        let x1 = CGFloat(self.AllDiceImageView.center.x) + CGFloat(Ran1)
        let x2 = CGFloat(self.AllDiceImageView.center.x) + CGFloat(Ran2)
        UIView.animate(withDuration: 2, animations: {
            self.RedImageView.center = CGPoint (x: x1, y: self.AllDiceImageView.center.y - 26.5)
        }, completion: {
            action in
            self.MyLabel.text = String(self.die1 + self.die2)
        })
        
        UIView.animate(withDuration: 2, animations: {
            self.BlueImageView.center = CGPoint (x: x2, y: self.AllDiceImageView.center.y + 32)
        }, completion: {
            action in
            self.MyLabel.text = String(self.die1 + self.die2)
        })
        
    }
    
    
}

