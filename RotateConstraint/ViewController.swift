//
//  ViewController.swift
//  RotateConstraint
//
//  Created by Andy Muir on 23/05/2017.
//  Copyright © 2017 Aim Your Technology Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var item: Item!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadAnItem()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        item.addCustomConstraints()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    fileprivate func loadAnItem() {
        item = Item(frame: CGRect(x: 10, y:300, width: 300, height:180))
        item.isHidden = false
        
        let item2 = Item(frame: CGRect(x: 10, y:10, width: 100, height:50))
        item2.isHidden = false
        
        view.addSubview(item)
//        item.addSubview(item2)
    }
}

