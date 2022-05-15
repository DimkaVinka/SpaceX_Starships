//
//  MainInformationView.swift
//  SpaceX_Starships
//
//  Created by Дмитрий Виноградов on 09.05.2022.
//

import SwiftUI

struct MainInformationView: View {
    
    @State var firstLaunch: String = "7 февраля, 2018"
    @State var country: String = "USA"
    @State var launchCost: String = "$90 млн"
    
    var body: some View {
        VStack {
            HStack {
                Text("Первый запуск")
                Spacer()
                Text(firstLaunch)
                    .bold()
            }.padding(.init(top: 20, leading: 0, bottom: 10, trailing: 0))
            HStack {
                Text("Страна")
                Spacer()
                Text(country)
                    .bold()
            }.padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
            HStack {
                Text("Стоимость запуска")
                Spacer()
                Text(launchCost)
                    .bold()
            }.padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
            
        }.padding(.horizontal)
    }
}

struct MainInformationView_Previews: PreviewProvider {
    static var previews: some View {
        MainInformationView()
    }
}
