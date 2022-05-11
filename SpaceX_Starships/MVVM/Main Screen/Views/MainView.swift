//
//  MainView.swift
//  SpaceX_Starships
//
//  Created by Дмитрий Виноградов on 06.05.2022.
//

import SwiftUI

struct MainView: View {
    
    @State private var showModalView: Bool = true
    @ObservedObject var rocketsArray: MainViewNetworkManager
    @State private var showSettingsView: Bool = false
    @State private var name: String = "some name"
    
    var body: some View {
        
        TabView {
            
            ScrollView(.vertical, showsIndicators: false) {
                AsyncImage(url: URL(string: "https://imgur.com/DaCfMsj.jpg"), content: { image in
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
                            Text(name)
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
                        GridView(height: 0, diameter: 0, mass: 0, load: 0)
                        Spacer()
                        MainInformationView(firstLaunch: "100", country: "USA", launchCost: "500")
                        Spacer()
                        FirstStageView(enginesCount: 0, fuelCount: 0, burnTime: 0)
                        Spacer()
                        SecondStageView(enginesCount: 0, fuelCount: 0, burnTime: 0)
                        Spacer()
//                        NavigationLink {
//                            ModalView()
//                        } label: {
//                            ButtonView()
//                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(.top)
        }.tabViewStyle(.page(indexDisplayMode: .always))
            .ignoresSafeArea(.all, edges: [.top])
            .accentColor(Color.white)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(rocketsArray: MainViewNetworkManager())
            .preferredColorScheme(.dark)
    }
}
