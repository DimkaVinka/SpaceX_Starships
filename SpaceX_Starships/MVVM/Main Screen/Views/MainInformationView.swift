//
//  MainInformationView.swift
//  SpaceX_Starships
//
//  Created by Дмитрий Виноградов on 09.05.2022.
//

import SwiftUI

struct MainInformationView: View {
    
    @State private var grid = [GridItem()]
    @State private var showSettingsView: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Falcon Heavy")
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
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: grid) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 125, height: 125)
                            .foregroundColor(Color.init(uiColor: .systemGray5))
                        VStack {
                            Text("229,6")
                                .font(.system(size: 20))
                                .bold()
                            Text("Высота, " + "ft")
                                .foregroundColor(Color.init(uiColor: .lightGray))
                        }
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 125, height: 125)
                            .foregroundColor(Color.init(uiColor: .systemGray5))
                        VStack {
                            Text("34")
                                .font(.system(size: 20))
                                .bold()
                            Text("Диаметр, " + "ft")
                                .foregroundColor(Color.init(uiColor: .lightGray))
                        }
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 125, height: 125)
                            .foregroundColor(Color.init(uiColor: .systemGray5))
                        VStack {
                            Text("3,125,735")
                                .font(.system(size: 20))
                                .bold()
                            Text("Масса, " + "lb")
                                .foregroundColor(Color.init(uiColor: .lightGray))
                        }
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 125, height: 125)
                            .foregroundColor(Color.init(uiColor: .systemGray5))
                        VStack {
                            Text("140,660")
                                .font(.system(size: 20))
                                .bold()
                            Text("Нагрузка, " + "lb")
                                .foregroundColor(Color.init(uiColor: .lightGray))
                        }
                    }
                }
            }.frame(maxWidth: .infinity, maxHeight: 125)
            
            Group {
                HStack {
                    Text("Первый запуск")
                    Spacer()
                    Text("7 февраля, 2018")
                        .bold()
                }.padding(.init(top: 20, leading: 0, bottom: 10, trailing: 0))
                HStack {
                    Text("Страна")
                    Spacer()
                    Text("США")
                        .bold()
                }.padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                HStack {
                    Text("Стоимость запуска")
                    Spacer()
                    Text("$90 млн")
                        .bold()
                }.padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
            }.padding(.horizontal)
        }
    }
}

struct MainInformationView_Previews: PreviewProvider {
    static var previews: some View {
        MainInformationView()
    }
}
