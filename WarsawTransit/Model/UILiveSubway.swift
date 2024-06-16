//
//  UILiveSubway.swift
//  WarsawTransit
//
//  Created by Jakub on 16.06.2024.
//

import Foundation
import SwiftUI

struct UILiveSubway: UILiveVehicle {
    let line: SubwayLine
    let systemImage = "tram.fill.tunnel"
    let fillColor: some ShapeStyle
    
    init(line: SubwayLine) {
        switch line {
        case .m1:
            self.fillColor = Color.subwayM1Route
        case .m2:
            self.fillColor = Color.subwayM2Route
        default:
            self.fillColor = Color.blue
        }
    }
}
