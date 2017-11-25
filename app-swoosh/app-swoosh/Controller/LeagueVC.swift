//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by MANNU PRABHAKAR on 22/11/17.
//  Copyright © 2017 MANNU PRABHAKAR. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player : Player!
    

    @IBOutlet weak var nextBtn: BorderButton!
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func menTapped(_ sender: Any) {
       // player.desiredLeague = "men"
       // nextBtn.isEnabled = true
        selectLeague(league: "men")
    }
    
    @IBAction func womenTapped(_ sender: Any) {
     //   player.desiredLeague = "women"
       // nextBtn.isEnabled = true
        selectLeague(league: "women")

    }
    @IBAction func co(_ sender: Any) {
       // player.desiredLeague = "coed"
       // nextBtn.isEnabled = true
        selectLeague(league: "coed")

    }
    func selectLeague(league : String) {
        player.desiredLeague = league
        nextBtn.isEnabled = true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
