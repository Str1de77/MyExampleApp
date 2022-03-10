//
//  Extension + Animation.swift
//  MyExampleApp
//
//  Created by Str1de on 10.03.2022.
//

import Foundation
import UIKit

extension UIButton {
    func buttonAnim() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.3
        pulse.fromValue = 0.8
        pulse.toValue = 1
        pulse.autoreverses = false
        pulse.repeatCount = 1
        
        layer.add(pulse, forKey: nil)
    }
}
