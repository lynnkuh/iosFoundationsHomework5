//
//  PersonDetailViewController.swift
//  iOSFoundationsHomework5
//
//  Created by Regular User on 9/30/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    var selectedFirstName = "None"
    var selectedLastName = "None"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.sizeToFit()
        label1.text = selectedFirstName
        label2.sizeToFit()
        label2.text = selectedLastName


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
