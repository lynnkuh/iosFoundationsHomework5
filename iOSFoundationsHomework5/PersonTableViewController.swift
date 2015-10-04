//
//  PersonTableViewController.swift
//  iOSFoundationsHomework5
//
//  Created by Regular User on 10/1/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

import UIKit

class PersonTableViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var personTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let names = [Person(fName: "Fred", lName: "Flintstone"),
        Person(fName: "Betty", lName: "Rubble"),
        Person(fName: "Barney", lName: "Rubble"),
        Person(fName: "Wilma", lName: "Flintstone"),
        Person(fName: "Dino", lName: "Flintstone")]
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print("seque fired")
        let personDetailViewController = segue.destinationViewController as! PersonDetailViewController
        
        let selectedIndexPath = personTableView.indexPathForSelectedRow
        let selectedRow = selectedIndexPath!.row
        let selectedName = names[selectedRow]
        
        
        personDetailViewController.selectedFirstName = selectedName.firstName
        personDetailViewController.selectedLastName = selectedName.lastName

        
        personDetailViewController.view.backgroundColor = UIColor.greenColor()
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return names.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:
        NSIndexPath) -> UITableViewCell {
            
            
            let cell = tableView.dequeueReusableCellWithIdentifier("PersonCell", forIndexPath:indexPath )
            
            let name = names[indexPath.row]
            
            cell.textLabel?.text = "\(name.firstName) \(name.lastName)"
            
            
            cell.backgroundColor = UIColor.whiteColor()
            
            if indexPath.row == 0 {
                cell.backgroundColor = UIColor.yellowColor()
            }
            
            
            return cell

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
