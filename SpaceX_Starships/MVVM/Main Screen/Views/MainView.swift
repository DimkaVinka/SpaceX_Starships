//
//  MainView.swift
//  SpaceX_Starships
//
//  Created by Дмитрий Виноградов on 06.05.2022.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var firstNetworkManager: MainViewNetworkManager
    
    @State private var showModalView: Bool = true
    @State private var showSettingsView: Bool = false
    @State private var name: String = "some name"
    
    var body: some View {
        
        TabView {
            ForEach(firstNetworkManager.rocketsArray, id: \.id) { rocket in
                ScrollView(.vertical, showsIndicators: false) {
                    AsyncImage(url: URL(string: rocket.flickr_images[0]), content: { image in
                        image.resizable()
                            .scaledToFit()
                            .padding(.init(top: 0, leading: 0, bottom: -30, trailing: 0))
                    }, placeholder: {
                        ProgressView()
                    })
                    ZStack {
                        Color.black
                            .ignoresSafeArea()
                            .cornerRadius(20, corners: [.topLeft, .topRight])
                        VStack {
                            HStack {
                                Text(rocket.name)
                                    .font(.system(size: 30))
                                    .bold()
                                Spacer()
                                Button {
                                    self.showSettingsView.toggle()
                                } label: {
                                    Image(systemName: "gearshape")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                }.sheet(isPresented: $showSettingsView) {
                                    SettingsView()
                                }
                            }.padding()
                            Spacer()
                            GridView(height: rocket.height.meters,
                                     diameter: rocket.diameter.meters,
                                     mass: rocket.mass.kg,
                                     load: rocket.payload_weights[0].kg)
                            Spacer()
                            MainInformationView(firstLaunch: "\(rocket.first_flight)",
                                                country: "\(rocket.country)",
                                                launchCost: "\(rocket.cost_per_launch)")
                            Spacer()
                            FirstStageView(enginesCount: rocket.first_stage.engines,
                                           fuelCount: rocket.first_stage.fuel_amount_tons,
                                           burnTime: Int(rocket.first_stage.burn_time_sec ?? 0))
                            Spacer()
                            SecondStageView(enginesCount: rocket.second_stage.engines,
                                            fuelCount: rocket.second_stage.fuel_amount_tons,
                                            burnTime: Int(rocket.second_stage.burn_time_sec ?? 0))
                            Spacer()
    //                        NavigationLink {
    //                            ModalView()
    //                        } label: {
    //                            ButtonView()
    //                        }
                        }
                    }
                }
            }.edgesIgnoringSafeArea(.top)
        }.tabViewStyle(.page(indexDisplayMode: .always))
            .ignoresSafeArea(.all, edges: [.top])
            .accentColor(Color.white)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .preferredColorScheme(.dark)
    }
}
