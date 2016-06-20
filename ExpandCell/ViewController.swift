//
//  ViewController.swift
//  ExpandCell
//
//  Created by Sridhar Sanapala on 6/20/16.
//  Copyright © 2016 everythingswift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView:UITableView!
    let testArray1 = [
                    "The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog.The               quick brown fox jumped over the lazy dog.The quick brown fox jumped over the lazy dog.The quick brown fox jumped over the lazy dog.",
                      "The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog.The quick brown fox jumped over the lazy.",
                      "The quick brown fox jumped over the lazy dog.",
                      "The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog.The quick brown fox jumped over the lazy dog.The quick brown fox jumped over the lazy dog.The quick brown fox jumped over the lazy dog.",
                      "The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog.The quick brown fox jumped over the lazy.",
                      "The quick brown fox jumped over the lazy dog."]
    
    let testArray2 = [
        "The quick brown fox jumped over the lazy dog.",
        "The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog.The quick brown fox jumped over the lazy dog.The quick brown fox jumped over the lazy dog.The quick brown fox jumped over the lazy dog.",
        "The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog.The quick brown fox jumped over the lazy dog.The quick brown fox jumped over the lazy dog.The quick brown fox jumped over the lazy dog.",
        "The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog.The quick brown fox jumped over the lazy.",
        "The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog.The quick brown fox jumped over the lazy.",
        "The quick brown fox jumped over the lazy dog."
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.myTableView.rowHeight = UITableViewAutomaticDimension;
        self.myTableView.estimatedRowHeight = 160.0;
        self.myTableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK -- UITableView Data Source
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return testArray1.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let expandCell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("EXPAND_CELL")! as UITableViewCell
        
        let label1 = expandCell.viewWithTag(101) as! UILabel
        let label2 = expandCell.viewWithTag(102) as! UILabel
        
        label1.text = testArray1[indexPath.row]
        label2.text = testArray2[indexPath.row]
        
        return expandCell
    }

}

