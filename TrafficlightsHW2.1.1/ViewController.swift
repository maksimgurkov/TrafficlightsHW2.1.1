//
//  ViewController.swift
//  TrafficlightsHW2.1.1
//
//  Created by Максим Гурков on 24.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    enum Color {
        case red, green, yellow
    }
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var yellowView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private let lightOn: CGFloat = 1
    private let lightOf: CGFloat = 0.3
    private var colors = Color.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = lightOf
        greenView.alpha = lightOf
        yellowView.alpha = lightOf
        
        redView.layer.cornerRadius = 50
        greenView.layer.cornerRadius = 50
        yellowView.layer.cornerRadius = 50
        
        startButton.setTitle("START", for: .normal)
        startButton.layer.cornerRadius = 10
        
    }

    @IBAction func actionStartButton() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        switch colors {
        case .red:
            redView.alpha = lightOn
            yellowView.alpha = lightOf
            colors = .green
        case .green:
            redView.alpha = lightOf
            greenView.alpha = lightOn
            colors = .yellow
        case .yellow:
            yellowView.alpha = lightOn
            greenView.alpha = lightOf
            colors = .red
        }
        
    }
    
    
    
}

