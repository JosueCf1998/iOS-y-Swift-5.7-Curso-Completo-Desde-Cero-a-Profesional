//
//  MapView.swift
//  SwiftUITutorial
//
//  Created by Maximo Josue Coronel Flores on 19/09/23.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: 40.140176, longitude: -8.212644)
        
        let span = MKCoordinateSpan(latitudeDelta: 15, longitudeDelta: 15)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
