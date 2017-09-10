//
//  ViewController.swift
//  Funny Number 10Sep
//
//  Created by MasterUNG on 9/10/2560 BE.
//  Copyright © 2560 MasterUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Explicit
    var numberAInt: Int = 1
    
    
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    @IBAction func decButton(_ sender: Any) {
        print("Click DEC")
        
        let ungClass = MyClass()
        numberAInt = ungClass.decNumber(intNumber: numberAInt)
        numberLabel.text = String(numberAInt)
        
        
    }
      
    
    @IBAction func incButton(_ sender: Any) {
        print("Click INC")
        numberAInt = addNumber(intNumber: numberAInt)
        numberLabel.text = String(numberAInt)
        
    }
    
    //Function Add Number
    func addNumber(intNumber: Int) -> Int {
        let result = intNumber + 1
        return result
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

