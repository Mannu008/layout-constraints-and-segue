//
//  ViewController.swift
//  app-swoosh
//
//  Created by MANNU PRABHAKAR on 20/11/17.
//  Copyright © 2017 MANNU PRABHAKAR. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // swoosh.frame = CGRect(x: view.frame.size.width/2 - swoosh.frame.size.width/2, y: 50, width: swoosh.frame.size.width, height: swoosh.frame.size.height)
        
      //  bgImg.frame = view.frame
    
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue){
        
        
    }
    


}

