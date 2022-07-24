//
//  ViewController.swift
//  DarkMode
//
//  Created by Selman ADANİR on 25.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private let myView: UIView = {
        let view = UIView(frame: CGRect(x: 20, y: 100, width: 200, height: 100))
        view.backgroundColor = .secondarySystemBackground
        return view
    }()
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.text = "Hello, world!"
        label.textAlignment = .center
        return label
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
     
        myLabel.frame = myView.bounds
        myView.addSubview(myLabel)
        
        
        view.addSubview(myView)
        
        view.backgroundColor = .systemBlue
        
        switch traitCollection.userInterfaceStyle {
        case .dark:
            break
        case .light:
            break
        default:
            print("Something les")
        }
    }
}
