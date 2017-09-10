//
//  ShowOneViewController.swift
//  Funny Number 10Sep
//
//  Created by MasterUNG on 9/10/2560 BE.
//  Copyright © 2560 MasterUNG. All rights reserved.
//

import UIKit

class ShowOneViewController: UIViewController {
    
    //Explicit
    var objTimer = Timer()
    var myConstant = MyConstant()
    var indexAInt = 0
    
    
    
    
        
    
    
    
    
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    
    @IBAction func playButton(_ sender: Any) {
        print("Play")
        objTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ShowOneViewController.myPlayTime), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func stopButton(_ sender: Any) {
        print("Stop")
        objTimer.invalidate()
    }
    
    func myPlayTime() -> Void {
        
        let nameStrings = myConstant.getterNumber()
        
        indexAInt += 1
        if indexAInt >= nameStrings.count {
            
            indexAInt = 0
        }
        
        showText(strName: nameStrings[indexAInt] as! String)
        
    }
    
    func showText(strName: String) -> Void {
        
        numberLabel.text = strName
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
