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
                        MainInformationView()
                        Spacer()
                        FirstAndSecondStagesView()
                        Spacer()
                        NavigationLink {
                            ModalView()
                        } label: {
                            ButtonView()
                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(.top)
        }.tabViewStyle(.page(indexDisplayMode: .always))
            .ignoresSafeArea(.all, edges: [.top])
            .accentColor(Color.white)
            .onAppear {
                
            }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(rocketsArray: MainViewNetworkManager())
            .preferredColorScheme(.dark)
    }
}
