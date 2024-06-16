//
//  UILiveVehicle.swift
//  WarsawTransit
//
//  Created by Jakub on 16.06.2024.
//

import Foundation
import SwiftUI

protocol UILiveVehicle {
    var systemImage: String { get }
    associatedtype ShapeStyle: any ShapeStyle
    var fillColor: <#AssocType#> { get }
}
