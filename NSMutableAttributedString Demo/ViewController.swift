//
//  ViewController.swift
//  NSMutableAttributedString Demo
//
//  Created by Pawan kumar on 16/05/19.
//  Copyright © 2019 Pawan Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtTitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        //For Title Label
        
        let fulltext = "Do any additional setup after loading the view"
        let substring: String = "loading"
        
        let substringRange = fulltext.range(of: substring)!
        
        if !substringRange.isEmpty {
           
            let nsRange = NSRange(substringRange, in: fulltext)
            
            if nsRange.length > 0 {
            
                //Set Text
                let stringAttributed = NSMutableAttributedString.init(string: fulltext)
                
                //Font
                let font = UIFont(name: "verdana-bold", size: 18.0)
                
                //Set Font
                stringAttributed.addAttribute(NSAttributedString.Key.font, value:font!, range: nsRange)
                
                //Set Text Color
                stringAttributed.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: nsRange)
                
                //Set Text UnderLine Color with Underline Style
                stringAttributed.addAttribute(NSAttributedString.Key.underlineColor, value: UIColor.blue, range: nsRange)
                 stringAttributed.addAttribute(NSAttributedString.Key.underlineStyle, value: 1.0, range: nsRange)
                
                //Set Background Color
                stringAttributed.addAttribute(NSAttributedString.Key.backgroundColor, value: UIColor.lightGray, range: nsRange)
                
                //Set Title
                self.titleLabel?.attributedText = stringAttributed
            }
        }
        
        
        //For SubTitle Label
        
        let fullRange = fulltext.range(of: fulltext)!
        
        if !fullRange.isEmpty {
            
            let nsRange = NSRange(fullRange, in: fulltext)
            
            if nsRange.length > 0 {
                
                //Set Text
                let stringAttributed = NSMutableAttributedString.init(string: fulltext)
                
                //Font
                let font = UIFont(name: "verdana-bold", size: 30.0)
                
                //Set Font
                stringAttributed.addAttribute(NSAttributedString.Key.font, value:font!, range: nsRange)
                
                //Stroke color Attribute and stroke width attribute:
                
                //Set Stroke Color
                stringAttributed.addAttribute(NSAttributedString.Key.strokeColor, value: UIColor.red, range: nsRange)
                
                //Set Stroke Width
                stringAttributed.addAttribute(NSAttributedString.Key.strokeWidth, value: 2.0, range: nsRange)
                
                //Set Title
                self.subtTitleLabel?.attributedText = stringAttributed
                
            }
        }
        
    }


}

