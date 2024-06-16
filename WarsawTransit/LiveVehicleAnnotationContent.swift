//
//  LiveVehicleAnnotation.swift
//  WarsawTransit
//
//  Created by Jakub on 16.06.2024.
//

import SwiftUI
import MapKit

struct LiveVehicleAnnotationContent: View {
    @Binding var coordinate: CLLocationCoordinate2D
    let vehicle: UILiveVehicle
    let ETACapsuleLabel: LocalizedStringKey
    var body: some View {
        ZStack {
            Circle()
                .fill(vehicle.fillColor)
                .frame(width: 30, height: 30)
                .shadow(radius: 3)
            Image(systemName: vehicle.systemImage)
                .foregroundStyle(.white)
            ZStack {
                HStack(spacing: 6) {
                    Text(ETACapsuleLabel)
                        .font(.caption)
                        .foregroundStyle(.black)
                    Image(systemName: "dot.radiowaves.up.forward")
                        .foregroundStyle(.green)
                        .imageScale(.small)
                }
                .padding(.horizontal, 5)
                .padding(.vertical, 3)
                .background(.white)
                .clipShape(Capsule())
            }
            .padding(.leading, 72)
            .padding(.bottom, 42)
        }
        .onTapGesture {
            withAnimation {
                coordinate.latitude += 0.0001
                coordinate.longitude += 0.0001
            }
        }

    }
}

#Preview {
    LiveVehicleAnnotationContent(coordinate: .constant(CLLocationCoordinate2D(latitude: 52.214723, longitude: 20.97996)), vehicle: UILiveTram(), ETACapsuleLabel: "4min")
}
