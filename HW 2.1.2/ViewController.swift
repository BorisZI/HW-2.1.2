//
//  ViewController.swift
//  HW 2.1.2



import UIKit
enum Currentlight  {
    case red, yellow, green
}
class ViewController: UIViewController {

    @IBOutlet var greenLightView: UIView!
    @IBOutlet var yellowLightsView: UIView!
    @IBOutlet var redLightsView: UIView!
    
    @IBOutlet var buttonStart: UIButton!
    
    private var currentLight = Currentlight.red
    private let on: CGFloat = 1
    private let off: CGFloat = 0.4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonStart.layer.cornerRadius = 20
        
        greenLightView.alpha = off
        yellowLightsView.alpha = off
        redLightsView.alpha = off
        
    }
    
    override func viewWillLayoutSubviews() {
        redLightsView.layer.cornerRadius = redLightsView.frame.width / 2
        yellowLightsView.layer.cornerRadius = yellowLightsView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
    }
        
    @IBAction func buttonPress() {
        if buttonStart.currentTitle == "START" {
            buttonStart.setTitle("NEXT", for: .normal)
        }
        switch currentLight {
        case .red:
            greenLightView.alpha = off
            redLightsView.alpha = on
            currentLight = .yellow
        case .yellow:
            redLightsView.alpha = off
            yellowLightsView.alpha = on
            currentLight = .green
        case .green:
            greenLightView.alpha = on
            yellowLightsView.alpha = off
            currentLight = .red
        }
    }
}
    
    
