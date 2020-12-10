//
//  ThirdVC.swift
//  DiceRollChallenge
//
//  Created by  on 12/7/20.
//  Copyright © 2020 Colin'sApps. All rights reserved.
//

import UIKit
import AVFoundation


class ThirdVC: UIViewController
{
    var myCards = [String]()
    
   // @IBOutlet weak var Card1ImageView: UIImageView!
    
    @IBOutlet weak var Card1ImageView: UIImageView!
    
    @IBOutlet weak var Card2ImageView: UIImageView!
    
    @IBOutlet weak var Card3ImageView: UIImageView!
    
    @IBOutlet weak var Card4ImageView: UIImageView!
    
    @IBOutlet weak var Card5ImageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    var dealSoundEffect: AVAudioPlayer?
    var cardImageViews = [UIImageView]()
    var suits = [String]()
    var nums = [Int]()
    
    
    
    override func viewDidLoad()
    {
        view.backgroundColor = UIColor.lightGray
        
        super.viewDidLoad()
        
        loadCards()
        cardImageViews.append (Card1ImageView)
        cardImageViews.append (Card2ImageView)
        cardImageViews.append (Card3ImageView)
        cardImageViews.append (Card4ImageView)
        cardImageViews.append (Card5ImageView)
    }
    
    func dealCard()->String
    {
        // get a random number
        if myCards.count <= 0
        {
            loadCards()
        }
        let randomInt = Int.random(in: 0..<myCards.count)
        
        // link back to card in myCards
        
        let card = myCards[randomInt]
        myCards.remove(at: randomInt)
        return card
        
        // display card
    }
    func displayCard()
    {
        
        Card1ImageView.image = UIImage (named: dealCard())
        Card2ImageView.image = UIImage (named: dealCard())
        Card3ImageView.image = UIImage (named: dealCard())
        Card4ImageView.image = UIImage (named: dealCard())
        Card5ImageView.image = UIImage (named: dealCard())
        
    }
    
    
    func loadCards()
    {
        var suits = ["hearts", "diamonds", "spades", "clubs"]
        var nums = ["02", "03", "04", "05", "06", "07", "08", "09", "10", "J", "Q", "K", "A"]
        for suit in suits
        {
            for num in nums
            {
                myCards.append("card_\(suit)_\(num)")
            }
        }
        myCards.append ("card_joker_black")
        myCards.append ("card_joker_red")

        print (myCards)
    }
   
    @IBAction func DealButtonTapped(_ sender: UIButton)
    {
    
        displayCard()
        
        let path = Bundle.main.path(forResource: "cardFan1.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            dealSoundEffect = try AVAudioPlayer(contentsOf: url)
            dealSoundEffect?.play()
        } catch {
            // couldn't load file :(
        }
        
    }
    
    @IBAction func card1Tapped(_ sender: UITapGestureRecognizer)
    {
        if Card1ImageView.isHighlighted == false
        {
            Card1ImageView.layer.masksToBounds = true
            Card1ImageView.layer.borderWidth = 1.5
            Card1ImageView.layer.borderColor = UIColor.orange.cgColor
            Card1ImageView.isHighlighted = true
        }
        else
        {
            Card1ImageView.layer.borderWidth = 0
            Card1ImageView.isHighlighted = false

        }
       
    }
    
    @IBAction func card2Tapped(_ sender: UITapGestureRecognizer)
    {
        if Card2ImageView.isHighlighted == false
        {
            Card2ImageView.layer.masksToBounds = true
            Card2ImageView.layer.borderWidth = 1.5
            Card2ImageView.layer.borderColor = UIColor.orange.cgColor
            Card2ImageView.isHighlighted = true
        }
        else
        {
            Card2ImageView.layer.borderWidth = 0
            Card2ImageView.isHighlighted = false

        }
       
    }
    
    @IBAction func card3Tapped(_ sender: UITapGestureRecognizer)
    {
            if Card3ImageView.isHighlighted == false
            {
                Card3ImageView.layer.masksToBounds = true
                Card3ImageView.layer.borderWidth = 1.5
                Card3ImageView.layer.borderColor = UIColor.orange.cgColor
                Card3ImageView.isHighlighted = true
            }
            else
            {
                Card3ImageView.layer.borderWidth = 0
                Card3ImageView.isHighlighted = false

            }
           
        }
    
    @IBAction func card4Tapped(_ sender: UITapGestureRecognizer)
    {
        if Card4ImageView.isHighlighted == false
        {
            Card4ImageView.layer.masksToBounds = true
            Card4ImageView.layer.borderWidth = 1.5
            Card4ImageView.layer.borderColor = UIColor.orange.cgColor
            Card4ImageView.isHighlighted = true
        }
        else
        {
            Card4ImageView.layer.borderWidth = 0
            Card4ImageView.isHighlighted = false

        }
       
    }
    
    @IBAction func card5Tapped(_ sender: UITapGestureRecognizer)
    {
        if Card5ImageView.isHighlighted == false
        {
            Card5ImageView.layer.masksToBounds = true
            Card5ImageView.layer.borderWidth = 1.5
            Card5ImageView.layer.borderColor = UIColor.orange.cgColor
            Card5ImageView.isHighlighted = true
        }
        else
        {
            Card5ImageView.layer.borderWidth = 0
            Card5ImageView.isHighlighted = false

        }
       
    }
    
    
    @IBAction func tradeButtonTapped(_ sender: UIButton)
    {
        
        for card in cardImageViews
        {
            if card.isHighlighted
            {
                card.image = UIImage(named: dealCard())
                card.isHighlighted = false
                card.layer.borderWidth = 0
            }
        }
        
//        Card1ImageView.image = UIImage(named: dealCard())
//        Card2ImageView.image = UIImage(named: dealCard())
//        Card3ImageView.image = UIImage(named: dealCard())
//        Card4ImageView.image = UIImage(named: dealCard())
//        Card5ImageView.image = UIImage(named: dealCard())

    }
    
//    func cardHand()
//    {
//        if
//        {
//            // Royal Flush
//
//
//        }
//        else if
//        {
//            // Straight Flush
//
//
//        }
//        else if
//        {
//            // Four of a Kind
//
//
//        }
//        else if
//        {
//            // Full House
//
//
//        }
//        else if
//        {
//            // Flush
//
//
//        }
//        else if
//        {
//            // Straight
//
//
//        }
//        else if
//        {
//            // Three of a Kind
//
//
//        }
//        else if
//        {
//            // Two Pair
//
//
//        }
//        else if
//        {
//            // Pair
//
//
//        }
//        else if
//        {
//            // High Card
//
//
//        }
//
//
// hello
//
//
//    }
    
    
    
}
