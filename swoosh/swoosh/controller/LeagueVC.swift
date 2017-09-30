//
//  LeagueVCViewController.swift
//  swoosh
//
//  Created by NaiqingZheng on 9/29/17.
//  Copyright © 2017 NaiqingZheng. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player:Player?
    
    @IBAction func selectMen(_ sender: Any) {
        enableNext(type:"men")
    }
    @IBOutlet weak var nextBtn: BorderButton!
    
    @IBAction func selectWomen(_ sender: Any) {
        enableNext(type:"women")
    }
    func enableNext(type:String) {
        player?.desireLeague=type
        nextBtn.isEnabled = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        player=Player()

        // Do any additional setup after loading the view.
    }
    @IBAction func onNext(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func unwind(unwind: UIStoryboardSegue){
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVc = segue.destination as? SkillVC{
            skillVc.player = player
        }
        
    }

   
}
