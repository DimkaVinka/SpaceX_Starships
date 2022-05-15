//
//  ModalView.swift
//  SpaceX_Starships
//
//  Created by Дмитрий Виноградов on 06.05.2022.
//

import SwiftUI

struct ModalView: View {
    
    @State var success: Bool = false
    @State var name: String = "FalconSat"
    @State var date: String = "2 февраля, 2022"
    
    @State var ricketID: String = "id"
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ZStack {
                    Color.black.ignoresSafeArea()
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: .infinity, height: 120)
                            .foregroundColor(.init(uiColor: .systemGray5))
                        HStack {
                            VStack(alignment: .leading) {
                                Text(name)
                                    .font(.title2)
                                Text(date)
                                    .foregroundColor(.gray)
                            }.padding(.init(top: 0, leading: 30, bottom: 0, trailing: 0))
                            Spacer()
                            Image(success ? "success" : "failure")
                                .resizable()
                                .frame(width: 45, height: 45)
                                .padding(.init(top: 0, leading: 0, bottom: 0, trailing: 30))
                        }
                    }.padding()
                }
            }
            .navigationTitle(Text("Falcon Heavy"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
            .preferredColorScheme(.dark)
    }
}
