//
//  ViewController.swift
//  ConstrainsWithCode
//
//  Created by Art Karma on 5/10/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var square: UIView = {
        var square = UIView()
        square.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        square.backgroundColor = .green
        square.translatesAutoresizingMaskIntoConstraints = false
        
        return square
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(square)
//        createConstrainsForSquare()
        createConstrainsForSquareCenter()
    }
    
    // part 1

    func createConstrainsForSquare() {
        // 4 constrains
        
        NSLayoutConstraint(item: square, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leadingMargin, multiplier: 1, constant: 0).isActive = true // leadingMargin отступ слево
        NSLayoutConstraint(item: square, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailingMargin, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: square, attribute: .top, relatedBy: .equal, toItem: view, attribute: .topMargin, multiplier: 1, constant: 88).isActive = true
        NSLayoutConstraint(item: square, attribute: .height, relatedBy: .equal, toItem: square, attribute: .width, multiplier: 1, constant: 0).isActive = true
    }
    
    // part 2
    
    func createConstrainsForSquareCenter() {
        
        NSLayoutConstraint(item: square, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: square, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: square, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 200).isActive = true
        NSLayoutConstraint(item: square, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 200).isActive = true
    }

}

