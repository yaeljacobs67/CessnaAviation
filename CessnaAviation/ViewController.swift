//
//  ViewController.swift
//  AviationWB
//
//  Created by Michael Baptist on 9/20/14.
//  Copyright (c) 2014 Michael Baptist. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let parser = MBChkListParser();
//        let filePath = NSBundle.mainBundle().pathForResource("c172s.clist", ofType: "");
//        let iceFilePath = NSBundle.mainBundle().pathForResource("c172sEmer.clist", ofType: "");
//        let checklist = parser.parseChkListWithUrl(filePath);
//        let icechecklist = parser.parseChkListWithUrl(iceFilePath);
//        NSLog("%@\n\n%@", checklist.description, icechecklist.description);
        
        self.navigationController?.performSegueWithIdentifier("graphSegue", sender: self);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

