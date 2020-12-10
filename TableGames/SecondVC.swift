//
//  SecondVC.swift
//  DiceRollChallenge
//
//  Created by  on 11/5/20.
//  Copyright © 2020 Colin'sApps. All rights reserved.
//

import UIKit

class SecondVC: UIViewController
{
    
    override func viewDidLoad()
    {
       
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func ButtonTapped(_ sender: UIButton) {
       //   view.backgroundColor = UIColor.white
        
        UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseOut, animations: {
            self.view.backgroundColor = UIColor.green
      //      self.view.alpha = 0.0
        }, completion: {
            action in
            self.view.alpha = 1
            
   //         func fadeIn(_ duration: TimeInterval = 0.5, delay: TimeInterval = 0.5, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
       //         UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
          //          self.view.alpha = 0.5
           //     }, completion: nil, completion)  }
            
      //  })
            
         //   label.fadeIn()
         //   label.fadeIn(completion: {
         //       (finished: Bool) -> Void in
        //        label.text = "Changed!"
          //  })
            
//            func fadeViewInThenOut(view : UIView, delay: TimeInterval) {
//
//            let animationDuration = 1.5
//
//            UIView.animate(withDuration: animationDuration, delay: delay, options: [UIView.AnimationOptions.autoreverse, UIView.AnimationOptions.repeat], animations: {
//                self.view.alpha = 0.5
//            }, completion:                 self.view.alpha = CGFloat(0.5)
//)
            
    }
    
    
)}

}

