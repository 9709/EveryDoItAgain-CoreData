//
//  DetailViewController.swift
//  EveryDoItAgain
//
//  Created by Matthew Chan on 2019-02-13.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var detailPriorityLabel: UILabel!
    

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let descriptionLabel = detailDescriptionLabel {
                descriptionLabel.text = detail.toDoDescription
            }
            if let priorityLabel = detailPriorityLabel {
                priorityLabel.text = detail.priority
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: ToDo? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

