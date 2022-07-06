//
//  PlanetDetailView.swift
//  SolarSystemSwiftUI
//
//  Created by Regina Paek on 7/6/22.
//

import SwiftUI

struct PlanetDetailView: View {
    @Binding var planet: Planet
    
    var body: some View {
        ZStack{
            Image("galaxy")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
        VStack(alignment: .leading, spacing: 30){
            Text(planet.planetName)
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Image(planet.imageName)
            VStack(alignment: .leading, spacing: 20) {
                Text("Distance from Sun: \(String(format: "%.1f", planet.millionKMsFromSun)) ^6km")
                .foregroundColor(.white)
                Text("Day Length: \(String(format: "%.1f",planet.dayLength)) days")
                .foregroundColor(.white)
            Text("Planet Diameter: \(planet.diameter) km")
                .foregroundColor(.white)
            }
          }
        }
    }
}

struct PlanetDetailView_Previews: PreviewProvider {
    static var previews: some View {
       
        PlanetDetailView(planet: .constant(Planet(planetName: "Earth", diameter: 1, dayLength: 10, millionKMsFromSun: 10, orderNumber: 1))
        )
    }
}
