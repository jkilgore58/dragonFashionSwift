//
//  RootTableViewController.swift
//  DragonFashionSwift
//
//  Created by Jonathan Kilgore on 1/29/16.
//  Copyright © 2016 Jonathan Kilgore. All rights reserved.
//

import UIKit

class RootTableViewController: UITableViewController {

    var dragonArray: NSMutableArray = []
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let dragonOne = Dragon()
        dragonOne.fullName = "Smaug"
        dragonOne.swag = "Ill-gotten Gold"
        
        let dragonTwo = Dragon()
        dragonTwo.fullName = "Trogdor"
        dragonTwo.swag = "Thatched roof cottages"
        
        let dragonThree = Dragon()
        dragonThree.fullName = "Spyro"
        dragonThree.swag = "Dragonfly"
        
        let dragonFour = Dragon()
        dragonFour.fullName = "Puff"
        dragonFour.swag = "Magic Wand"
        
        self.dragonArray = [dragonOne, dragonTwo, dragonThree, dragonFour]
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dragonArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CellID", forIndexPath: indexPath)
        
        let currentDragon :Dragon = self.dragonArray.objectAtIndex(indexPath.row) as! Dragon
        
        cell.textLabel?.text = currentDragon.fullName as String
        cell.detailTextLabel!.text = currentDragon.swag as String
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let selectedIndexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        let destVC = segue.destinationViewController as! DetailViewController
        let currentDragon : Dragon = (self.dragonArray.objectAtIndex(selectedIndexPath.row) as! Dragon)
        destVC.selectedDragon = currentDragon
        
    }
}

