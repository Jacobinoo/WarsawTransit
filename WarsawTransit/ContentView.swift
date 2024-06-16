//
//  ContentView.swift
//  WarsawTransit
//
//  Created by Jakub on 08.06.2024.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var mapPos: MapCameraPosition = .region(.init(center: CLLocationCoordinate2D(latitude: 52.214723, longitude: 20.97996), latitudinalMeters: CLLocationDistance(100), longitudinalMeters: CLLocationDistance(100)))
    @State private var liveTramLocation: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 52.21472, longitude: 20.97996)
    var line9Shape: [CLLocationCoordinate2D] = [
        CLLocationCoordinate2D(latitude: 52.23541697, longitude: 20.97483694),
        CLLocationCoordinate2D(latitude: 52.23624814, longitude: 20.9782353),
        CLLocationCoordinate2D(latitude: 52.23648795, longitude: 20.97893268),
        CLLocationCoordinate2D(latitude: 52.23678855, longitude: 20.9796676),
        CLLocationCoordinate2D(latitude: 52.23700865, longitude: 20.98015576),
        CLLocationCoordinate2D(latitude: 52.23686411, longitude: 20.98024159),
        CLLocationCoordinate2D(latitude: 52.23656516, longitude: 20.98034352),
        CLLocationCoordinate2D(latitude: 52.23609866, longitude: 20.98048299),
        CLLocationCoordinate2D(latitude: 52.23569622, longitude: 20.98059833),
        CLLocationCoordinate2D(latitude: 52.23538905, longitude: 20.98071635),
        CLLocationCoordinate2D(latitude: 52.23519029, longitude: 20.98081022),
        CLLocationCoordinate2D(latitude: 52.23499153, longitude: 20.98093897),
        CLLocationCoordinate2D(latitude: 52.2340125, longitude: 20.98178923),
        CLLocationCoordinate2D(latitude: 52.23377759, longitude: 20.98191261),
        CLLocationCoordinate2D(latitude: 52.23357554, longitude: 20.98199844),
        CLLocationCoordinate2D(latitude: 52.23304494, longitude: 20.9822613),
        CLLocationCoordinate2D(latitude: 52.23279361, longitude: 20.98241418),
        CLLocationCoordinate2D(latitude: 52.23244863, longitude: 20.98264485),
        CLLocationCoordinate2D(latitude: 52.23207408, longitude: 20.98291844),
        CLLocationCoordinate2D(latitude: 52.23087814, longitude: 20.98395914),
        CLLocationCoordinate2D(latitude: 52.2273394, longitude: 20.98706513),
        CLLocationCoordinate2D(latitude: 52.22669537, longitude: 20.98759889),
        CLLocationCoordinate2D(latitude: 52.22600368, longitude: 20.98815411),
        CLLocationCoordinate2D(latitude: 52.22560032, longitude: 20.98846525),
        CLLocationCoordinate2D(latitude: 52.22506881, longitude: 20.98889172),
        CLLocationCoordinate2D(latitude: 52.22476321, longitude: 20.98915457),
        CLLocationCoordinate2D(latitude: 52.22495708, longitude: 20.98959446),
        CLLocationCoordinate2D(latitude: 52.2252594, longitude: 20.99038571),
        CLLocationCoordinate2D(latitude: 52.22536948, longitude: 20.99077463),
        CLLocationCoordinate2D(latitude: 52.2257523, longitude: 20.99261462),
        CLLocationCoordinate2D(latitude: 52.22630598, longitude: 20.99520296),
        CLLocationCoordinate2D(latitude: 52.22812965, longitude: 21.0037592),
        CLLocationCoordinate2D(latitude: 52.22964931, longitude: 21.0108751),
        CLLocationCoordinate2D(latitude: 52.23067115, longitude: 21.01568699),
        CLLocationCoordinate2D(latitude: 52.23157797, longitude: 21.01995975),
        CLLocationCoordinate2D(latitude: 52.23301537, longitude: 21.02678865),
        CLLocationCoordinate2D(latitude: 52.23342277, longitude: 21.02881908),
        CLLocationCoordinate2D(latitude: 52.23515908, longitude: 21.03726804),
        CLLocationCoordinate2D(latitude: 52.23765911, longitude: 21.04946136),
        CLLocationCoordinate2D(latitude: 52.23784308, longitude: 21.05022311),
        CLLocationCoordinate2D(latitude: 52.23799091, longitude: 21.05095803),
        CLLocationCoordinate2D(latitude: 52.23818144, longitude: 21.0517466),
        CLLocationCoordinate2D(latitude: 52.23834898, longitude: 21.05249226),
        CLLocationCoordinate2D(latitude: 52.23854608, longitude: 21.05373144),
        CLLocationCoordinate2D(latitude: 52.23901912, longitude: 21.05608642),
        CLLocationCoordinate2D(latitude: 52.24046779, longitude: 21.06313526),
        CLLocationCoordinate2D(latitude: 52.24234342, longitude: 21.07235133),
        CLLocationCoordinate2D(latitude: 52.2435719, longitude: 21.07837021),
        CLLocationCoordinate2D(latitude: 52.24464597, longitude: 21.08355224),
        CLLocationCoordinate2D(latitude: 52.24466568, longitude: 21.08388483),
        CLLocationCoordinate2D(latitude: 52.24460656, longitude: 21.08485579),
        CLLocationCoordinate2D(latitude: 52.24460984, longitude: 21.08517765),
        CLLocationCoordinate2D(latitude: 52.2447051, longitude: 21.08532249),
        CLLocationCoordinate2D(latitude: 52.24523063, longitude: 21.08542442),
        CLLocationCoordinate2D(latitude: 52.2451518, longitude: 21.0869801),
        CLLocationCoordinate2D(latitude: 52.24493666, longitude: 21.0905984),
        CLLocationCoordinate2D(latitude: 52.24467389, longitude: 21.09187782),
        CLLocationCoordinate2D(latitude: 52.24404161, longitude: 21.09484702),
        CLLocationCoordinate2D(latitude: 52.24386916, longitude: 21.09569192),
        CLLocationCoordinate2D(latitude: 52.24257171, longitude: 21.10179126),
        CLLocationCoordinate2D(latitude: 52.24138098, longitude: 21.10739171),
        CLLocationCoordinate2D(latitude: 52.23986172, longitude: 21.11459076),
        CLLocationCoordinate2D(latitude: 52.23975003, longitude: 21.11499041),
        CLLocationCoordinate2D(latitude: 52.23966626, longitude: 21.11520767),
        CLLocationCoordinate2D(latitude: 52.23944453, longitude: 21.1156851),
        CLLocationCoordinate2D(latitude: 52.23847709, longitude: 21.11787915),
        CLLocationCoordinate2D(latitude: 52.23823728, longitude: 21.11839682),
        CLLocationCoordinate2D(latitude: 52.23774452, longitude: 21.11955553),
        CLLocationCoordinate2D(latitude: 52.23766896, longitude: 21.11978888),
        CLLocationCoordinate2D(latitude: 52.23770017, longitude: 21.1200732),
        CLLocationCoordinate2D(latitude: 52.23777902, longitude: 21.12020999),
        CLLocationCoordinate2D(latitude: 52.23789728, longitude: 21.1202529),
        CLLocationCoordinate2D(latitude: 52.23802375, longitude: 21.12020999),
        CLLocationCoordinate2D(latitude: 52.23811902, longitude: 21.1200732),
        CLLocationCoordinate2D(latitude: 52.23818472, longitude: 21.11993104),
        CLLocationCoordinate2D(latitude: 52.23821922, longitude: 21.11969501),
        CLLocationCoordinate2D(latitude: 52.23818144, longitude: 21.11901104)
    ]
    
    var line9ShapeFromOkecie = [
        CLLocationCoordinate2D(latitude: 52.17602068, longitude: 20.94378769),
        CLLocationCoordinate2D(latitude: 52.17589732, longitude: 20.94375819),
        CLLocationCoordinate2D(latitude: 52.17576737, longitude: 20.94382792),
        CLLocationCoordinate2D(latitude: 52.17569829, longitude: 20.94394326),
        CLLocationCoordinate2D(latitude: 52.17563908, longitude: 20.94417393),
        CLLocationCoordinate2D(latitude: 52.17566046, longitude: 20.94434559),
        CLLocationCoordinate2D(latitude: 52.17575422, longitude: 20.94448238),
        CLLocationCoordinate2D(latitude: 52.17584962, longitude: 20.94451725),
        CLLocationCoordinate2D(latitude: 52.17633484, longitude: 20.9446299),
        CLLocationCoordinate2D(latitude: 52.17657827, longitude: 20.94469696),
        CLLocationCoordinate2D(latitude: 52.17692533, longitude: 20.94482839),
        CLLocationCoordinate2D(latitude: 52.17726745, longitude: 20.94514489),
        CLLocationCoordinate2D(latitude: 52.17769838, longitude: 20.94551503),
        CLLocationCoordinate2D(latitude: 52.17918851, longitude: 20.94712972),
        CLLocationCoordinate2D(latitude: 52.17950101, longitude: 20.94750255),
        CLLocationCoordinate2D(latitude: 52.18176077, longitude: 20.94995141),
        CLLocationCoordinate2D(latitude: 52.1833182, longitude: 20.95161169),
        CLLocationCoordinate2D(latitude: 52.18549226, longitude: 20.95396399),
        CLLocationCoordinate2D(latitude: 52.18653813, longitude: 20.95490277),
        CLLocationCoordinate2D(latitude: 52.18944377, longitude: 20.95747232),
        CLLocationCoordinate2D(latitude: 52.18984499, longitude: 20.95789075),
        CLLocationCoordinate2D(latitude: 52.19012452, longitude: 20.95819384),
        CLLocationCoordinate2D(latitude: 52.19033828, longitude: 20.95838159),
        CLLocationCoordinate2D(latitude: 52.19088747, longitude: 20.95876783),
        CLLocationCoordinate2D(latitude: 52.1929214, longitude: 20.96055686),
        CLLocationCoordinate2D(latitude: 52.19449159, longitude: 20.96194625),
        CLLocationCoordinate2D(latitude: 52.19558329, longitude: 20.96293062),
        CLLocationCoordinate2D(latitude: 52.19640205, longitude: 20.96368432),
        CLLocationCoordinate2D(latitude: 52.19751508, longitude: 20.96465796),
        CLLocationCoordinate2D(latitude: 52.20243541, longitude: 20.96901655),
        CLLocationCoordinate2D(latitude: 52.20558246, longitude: 20.97180873),
        CLLocationCoordinate2D(latitude: 52.20857971, longitude: 20.97443998),
        CLLocationCoordinate2D(latitude: 52.20986994, longitude: 20.97555577),
        CLLocationCoordinate2D(latitude: 52.21034986, longitude: 20.97587496),
        CLLocationCoordinate2D(latitude: 52.21069501, longitude: 20.97617805),
        CLLocationCoordinate2D(latitude: 52.21132284, longitude: 20.97676277),
        CLLocationCoordinate2D(latitude: 52.21197532, longitude: 20.97732335),
        CLLocationCoordinate2D(latitude: 52.21252096, longitude: 20.97778737),
        CLLocationCoordinate2D(latitude: 52.21410031, longitude: 20.9791848),
        CLLocationCoordinate2D(latitude: 52.21429259, longitude: 20.97936719),
        CLLocationCoordinate2D(latitude: 52.21452925, longitude: 20.97956568),
        CLLocationCoordinate2D(latitude: 52.2159935, longitude: 20.98086655),
        CLLocationCoordinate2D(latitude: 52.21658346, longitude: 20.98136812),
        CLLocationCoordinate2D(latitude: 52.21723093, longitude: 20.98193943),
        CLLocationCoordinate2D(latitude: 52.21803614, longitude: 20.98265826),
        CLLocationCoordinate2D(latitude: 52.2187127, longitude: 20.98329102),
        CLLocationCoordinate2D(latitude: 52.21945755, longitude: 20.98395914),
        CLLocationCoordinate2D(latitude: 52.21999981, longitude: 20.98439902),
        CLLocationCoordinate2D(latitude: 52.22245141, longitude: 20.98655015),
        CLLocationCoordinate2D(latitude: 52.22418814, longitude: 20.98807633),
        CLLocationCoordinate2D(latitude: 52.22440503, longitude: 20.98836064),
        CLLocationCoordinate2D(latitude: 52.22495708, longitude: 20.98959446),
        CLLocationCoordinate2D(latitude: 52.2252594, longitude: 20.99038571),
        CLLocationCoordinate2D(latitude: 52.22536948, longitude: 20.99077463),
        CLLocationCoordinate2D(latitude: 52.2257523, longitude: 20.99261462),
        CLLocationCoordinate2D(latitude: 52.22630598, longitude: 20.99520296),
        CLLocationCoordinate2D(latitude: 52.22812965, longitude: 21.0037592),
        CLLocationCoordinate2D(latitude: 52.22964931, longitude: 21.0108751),
        CLLocationCoordinate2D(latitude: 52.23067115, longitude: 21.01568699),
        CLLocationCoordinate2D(latitude: 52.23157797, longitude: 21.01995975),
        CLLocationCoordinate2D(latitude: 52.23301537, longitude: 21.02678865),
        CLLocationCoordinate2D(latitude: 52.23342277, longitude: 21.02881908),
        CLLocationCoordinate2D(latitude: 52.23515908, longitude: 21.03726804),
        CLLocationCoordinate2D(latitude: 52.23765911, longitude: 21.04946136),
        CLLocationCoordinate2D(latitude: 52.23784308, longitude: 21.05022311),
        CLLocationCoordinate2D(latitude: 52.23799091, longitude: 21.05095803),
        CLLocationCoordinate2D(latitude: 52.23818144, longitude: 21.0517466),
        CLLocationCoordinate2D(latitude: 52.23834898, longitude: 21.05249226),
        CLLocationCoordinate2D(latitude: 52.23854608, longitude: 21.05373144),
        CLLocationCoordinate2D(latitude: 52.23901912, longitude: 21.05608642),
        CLLocationCoordinate2D(latitude: 52.24046779, longitude: 21.06313526),
        CLLocationCoordinate2D(latitude: 52.24234342, longitude: 21.07235133),
        CLLocationCoordinate2D(latitude: 52.2435719, longitude: 21.07837021),
        CLLocationCoordinate2D(latitude: 52.24464597, longitude: 21.08355224),
        CLLocationCoordinate2D(latitude: 52.24466568, longitude: 21.08388483),
        CLLocationCoordinate2D(latitude: 52.24460656, longitude: 21.08485579),
        CLLocationCoordinate2D(latitude: 52.24460984, longitude: 21.08517765),
        CLLocationCoordinate2D(latitude: 52.2447051, longitude: 21.08532249),
        CLLocationCoordinate2D(latitude: 52.24523063, longitude: 21.08542442),
        CLLocationCoordinate2D(latitude: 52.2451518, longitude: 21.0869801),
        CLLocationCoordinate2D(latitude: 52.24493666, longitude: 21.0905984),
        CLLocationCoordinate2D(latitude: 52.24467389, longitude: 21.09187782),
        CLLocationCoordinate2D(latitude: 52.24404161, longitude: 21.09484702),
        CLLocationCoordinate2D(latitude: 52.24386916, longitude: 21.09569192),
        CLLocationCoordinate2D(latitude: 52.24257171, longitude: 21.10179126),
        CLLocationCoordinate2D(latitude: 52.24138098, longitude: 21.10739171),
        CLLocationCoordinate2D(latitude: 52.23986172, longitude: 21.11459076),
        CLLocationCoordinate2D(latitude: 52.23975003, longitude: 21.11499041),
        CLLocationCoordinate2D(latitude: 52.23966626, longitude: 21.11520767),
        CLLocationCoordinate2D(latitude: 52.23944453, longitude: 21.1156851),
        CLLocationCoordinate2D(latitude: 52.23847709, longitude: 21.11787915),
        CLLocationCoordinate2D(latitude: 52.23823728, longitude: 21.11839682),
        CLLocationCoordinate2D(latitude: 52.23774452, longitude: 21.11955553),
        CLLocationCoordinate2D(latitude: 52.23766896, longitude: 21.11978888),
        CLLocationCoordinate2D(latitude: 52.23770017, longitude: 21.1200732),
        CLLocationCoordinate2D(latitude: 52.23777902, longitude: 21.12020999),
        CLLocationCoordinate2D(latitude: 52.23789728, longitude: 21.1202529),
        CLLocationCoordinate2D(latitude: 52.23802375, longitude: 21.12020999),
        CLLocationCoordinate2D(latitude: 52.23811902, longitude: 21.1200732),
        CLLocationCoordinate2D(latitude: 52.23818472, longitude: 21.11993104),
        CLLocationCoordinate2D(latitude: 52.23821922, longitude: 21.11969501),
        CLLocationCoordinate2D(latitude: 52.23818144, longitude: 21.11901104)
    ]

    var body: some View {
        TabView {
            ZStack {
                Map(position: $mapPos) {
                    Annotation(coordinate: liveTramLocation) {
                        LiveVehicleAnnotationContent(coordinate: $liveTramLocation, vehicleType: .tram, ETACapsuleLabel: "2min")
                    } label: {}

                    Marker(coordinate: CLLocationCoordinate2D(latitude: 52.214304, longitude: 20.979401)) {
                        Text("OCH - Teatr 03")
                    }
                    Marker(coordinate: CLLocationCoordinate2D(latitude: 52.214603, longitude: 20.979609)) {
                        Text("OCH - Teatr 04")
                    }
                    MapPolyline(coordinates: line9ShapeFromOkecie)
                        .strokeStyle(style: .init(lineWidth: 4, lineJoin: .round))
                        .stroke(.blue)
                }
                VStack {
                    Text("currently selected tram")
                    Spacer()
                }
            }
            .tabItem {
                Label("Transit", systemImage: "lightrail")
            }

            VStack {
                Text("s")
            }
            .tabItem {
                Label("Favorites", systemImage: "star")
            }
        }
        .tabItem {
            Label("Tram", systemImage: "tram")
        }
    }
}

#Preview {
    ContentView()
}
