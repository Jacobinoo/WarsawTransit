//
//  UILiveTram.swift
//  WarsawTransit
//
//  Created by Jakub on 16.06.2024.
//

import Foundation
import SwiftUI

struct UILiveTram: UILiveVehicle {
    let systemImage = "lightrail.fill"
    let fillColor = LinearGradient(colors: [.red, .pink], startPoint: .bottom, endPoint: .top)
}
