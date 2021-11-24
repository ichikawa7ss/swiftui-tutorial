//
//  MapView.swift
//  Landmark
//
//  Created by ichikawa on 2021/11/10.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegiion(coordinate)
            }
    }
    
    private func setRegiion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(
                latitudeDelta: 0.2,
                longitudeDelta: 0.2
            )
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate:
                    .init(
                        latitude:  34.011_286,
                        longitude:  -116.166_868
                    )
        )
    }
}
