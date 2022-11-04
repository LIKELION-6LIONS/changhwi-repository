//
//  MapTabView.swift
//  WebMap
//
//  Created by 류창휘 on 2022/11/02.
//

import SwiftUI
import MapKit
//북 37.48473°, 동 126.95881°

struct MapTabView: View {
    @State private var region : MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2DMake(37.48473, 126.96881), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
    
    var body: some View {
        NavigationStack {
            Map(coordinateRegion: $region, annotationItems: pointsOfInterest) { item in
                MapMarker(coordinate: item.coordinate, tint: .purple)
            }
                .navigationTitle("우리집")
        }

    }
}

struct AnnotatedItem: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}
var pointsOfInterest = [
    AnnotatedItem(name: "123", coordinate: CLLocationCoordinate2D(latitude: 37.48473, longitude: 126.95881))
]
struct MapTabView_Previews: PreviewProvider {
    static var previews: some View {
        MapTabView()
    }
}
