//
//  ViewController.swift
//  PermanentDataStorage
//
//  Created by Ahmed T Khalil on 11/24/16.
//  Copyright © 2016 kalikans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //General structure:
        //something->store something->retrieve something->check if something exists and is of a certain type before using it
        
        
        let name = "Ahmed"
        //store
        UserDefaults.standard.set(name, forKey: "name")
        //retrieve
        let nameRetrieved=UserDefaults.standard.object(forKey: "name")
        //print it out
        print(nameRetrieved)
        
        //But this is optional...
        //So instead...
        //check if object exists and if it is of a certain type
        if let nameRetrieved1 = nameRetrieved as? String {
            print(nameRetrieved1)
        }
        
        
        let array : [Int] = [1,2,3,4]
        UserDefaults.standard.set(array,forKey:"Array")
        let arrayObject = UserDefaults.standard.object(forKey: "Array")
        if let array1 = arrayObject as? NSArray{
            print(array1)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

