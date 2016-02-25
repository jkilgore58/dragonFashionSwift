//
//  DetailViewController.swift
//  DragonFashionSwift
//
//  Created by Jonathan Kilgore on 1/29/16.
//  Copyright © 2016 Jonathan Kilgore. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var selectedDragon: Dragon!

    @IBOutlet weak var dragonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dragonLabel.text = selectedDragon.swag as String

    }

    
}
