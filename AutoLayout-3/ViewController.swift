//
//  ViewController.swift
//  AutoLayout-3
//
//  Created by Facheng Liang  on 06/01/2018.
//  Copyright © 2018 Facheng Liang . All rights reserved.
//

import UIKit

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
        stackView.addArrangedSubview(imageView)
    }
    
    @IBAction func clickRemove(_ sender: UIButton) {
        if let imageView = stackView.arrangedSubviews.last {
            stackView.removeArrangedSubview(imageView)
            imageView.removeFromSuperview()
        }
    }

}

