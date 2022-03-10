//
//  ViewController.swift
//  MyExampleApp
//
//  Created by Str1de on 09.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myView: UIView!
    @IBOutlet var myButton: UIButton!
    @IBOutlet var mySwitch: UISwitch!
    
    var user = Man.getFullName()
    
    var colorMass: [UIColor] = [.red, .green, .blue]
    
    override func viewWillLayoutSubviews() {
        magicCircle()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //myView.layer.cornerRadius = 10
        myButton.layer.cornerRadius = 10
        mySwitch.isOn = false
        
    }
    @IBAction func buttonPressed() {
        let currentColor = colorMass.randomElement()
        myView.backgroundColor = currentColor
        myButton.buttonAnim()
    }
    
    @IBAction func circleSwitchPressed() {
        magicCircle()
    }
    
    
        func magicCircle() {
            if mySwitch.isOn {
                myView.layer.cornerRadius = myView.frame.width/2
                myView.clipsToBounds = true
            }
            else { myView.layer.cornerRadius = 10
            }
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard segue.identifier == "sendSegue" else { return }
            let WelcomeVC = segue.destination as! WelcomeViewController
            WelcomeVC.person = user
        }
        
               
        /* for color in colorMass {
         if colorArr.isEmpty {
         var currentColor = colorMass.first
         colorArr.append(currentColor!)
         var backColor = colorArr.e
         } else {
         colorArr.remove(at: 0)
         
         }
         }
         myView.backgroundColor =
         */
    }
                class MyView: UIView {
                    override init(frame: CGRect) {
                        super.init(frame: frame)
                    }
                    
                    required init?(coder: NSCoder) {
                        fatalError("init(coder:) has not been implemented")
                    }
                }
