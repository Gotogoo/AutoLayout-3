//
//  ViewController.swift
//  AutoLayout-3
//
//  Created by Facheng Liang  on 06/01/2018.
//  Copyright © 2018 Facheng Liang . All rights reserved.
//

import UIKit

let MAX_STACK_SIZE = 5

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        stackView.spacing = 10
        stackView.distribution = .fillEqually
    }
    
    @IBAction func clickAdd(_ sender: UIButton) {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "cat"))
        imageView.contentMode = .scaleAspectFit
        stackView.insertArrangedSubview(imageView, at: 0)
        
        if stackView.subviews.count > MAX_STACK_SIZE {
            removeLastSubView()
        }
        
        updateLayoutWithAnimate(0.2)
    }
    
    @IBAction func clickRemove(_ sender: UIButton) {
        removeLastSubView()
        updateLayoutWithAnimate(0.2)
    }
    
    private func removeLastSubView() {
        if let imageView = stackView.arrangedSubviews.last {
            stackView.removeArrangedSubview(imageView)
            imageView.removeFromSuperview()
        }
    }
    
    private func updateLayoutWithAnimate(_ duration: TimeInterval) {
        UIView.animate(withDuration: duration, animations: {
            self.stackView.layoutIfNeeded()
        })
    }
    
}

