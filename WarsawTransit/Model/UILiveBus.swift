//
//  UILiveBus.swift
//  WarsawTransit
//
//  Created by Jakub on 16.06.2024.
//

import Foundation
import SwiftUI

struct UILiveBus: UILiveVehicle {
    let doesOperateAtNight: Bool
    let systemImage = "bus.fill"
    let fillColor: any ShapeStyle
    
    init(doesOperateAtNight: Bool = false) {
        self.doesOperateAtNight = doesOperateAtNight
        self.fillColor = doesOperateAtNight ? Color.busNightRoute : Color.busRoute
    }
}
