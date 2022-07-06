//
//  PlanetListView.swift
//  SolarSystemSwiftUI
//
//  Created by Regina Paek on 7/6/22.
//

import SwiftUI

struct PlanetListView: View {
    var body: some View {
        
        NavigationView{
            ZStack{
                Image("galaxy")
                    .resizable()
                    .ignoresSafeArea()
                    .blur(radius: 10)
            List{
                ForEach(PlanetDataStore.planets) { planet in
                    NavigationLink {
                        PlanetDetailView(planet: .constant(planet))
                    } label: {
                        VStack{
                            HStack{
                                Image(planet.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 50)
                                VStack(alignment: .leading, spacing: 10){
                        Text(planet.planetName)
                                        .foregroundColor(.white)
                        Text("\(planet.orderNumber)")
                        }
                            }
                        } .padding(8)
                    }
                    .listRowBackground(Color.clear)
                    }
                }
            }
            .padding(10)
            .listStyle(.plain)
            .navigationTitle("Solar System")
            .preferredColorScheme(.dark)
        }
    }
}

struct PlanetListView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetListView()
            .preferredColorScheme(.dark)
    }
}
