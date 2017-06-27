//
//  Item.swift
//  RotateConstraint
//
//  Created by Andy Muir on 23/05/2017.
//  Copyright © 2017 Aim Your Technology Ltd. All rights reserved.
//

import UIKit

class Item: UIView {

    fileprivate var nameLabel: UILabel?
    fileprivate var anotherLabel: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customInitialization()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func customInitialization() {
        self.backgroundColor = UIColor.blue
        addNameLabel()
        addAnotherLabel()
        rotateNameLabel()
        //addCustomConstraints()
        
    }

    fileprivate func addNameLabel() {
        nameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        nameLabel!.text = "Name Label"
        nameLabel!.textAlignment = NSTextAlignment.right
        nameLabel!.isHidden = false
        nameLabel!.backgroundColor = UIColor.brown
        
        self.addSubview(nameLabel!)
    }
    
    fileprivate func addAnotherLabel() {
        anotherLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 40))
        anotherLabel!.text = "Another label"
        anotherLabel!.textAlignment = NSTextAlignment.left
        anotherLabel!.isHidden = false
        anotherLabel!.backgroundColor = UIColor.green
        
        self.addSubview(anotherLabel!)
        
    }
    
    func addCustomConstraints() {
        let views = ["nameLabel": nameLabel!, "anotherLabel": anotherLabel!]
        nameLabel!.translatesAutoresizingMaskIntoConstraints = false
        anotherLabel!.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        let nameLabelWidthConstraints = NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-[nameLabel]",
            options: [],
            metrics: nil,
            views: views)
        constraints.append(contentsOf: nameLabelWidthConstraints)
        
        let nameLabelHeightConstraints = NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-[nameLabel]",
            options: [],
            metrics: nil,
            views: views)
        constraints.append(contentsOf: nameLabelHeightConstraints)
        
        
        let anotherLabelWidthConstriants = NSLayoutConstraint.constraints(
            withVisualFormat: "H:[anotherLabel]-|",
            options: [],
            metrics: nil,
            views: views)
        constraints.append(contentsOf: anotherLabelWidthConstriants)
        
        let anotherLabelHeightConstraints = NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-[anotherLabel]",
            options: [],
            metrics: nil,
            views: views)
        constraints.append(contentsOf: anotherLabelHeightConstraints)
        
        NSLayoutConstraint.activate(constraints)
    }
    
    fileprivate func rotateNameLabel() {
        nameLabel!.transform = CGAffineTransform(rotationAngle: (3 * CGFloat.pi) / 2)
        nameLabel!.layer.anchorPoint.x = 1
        nameLabel!.layer.anchorPoint.y = 0
    }
    

}
