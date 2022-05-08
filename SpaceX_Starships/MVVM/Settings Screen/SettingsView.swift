//
//  SettingsView.swift
//  SpaceX_Starships
//
//  Created by Дмитрий Виноградов on 06.05.2022.
//

import SwiftUI

struct SettingsView: View {
    
    // if false = metric
    // if true = imperic
    @Environment(\.presentationMode) var presentationMode
    
    @State var heightToggle: Bool = false
    @State var diameterToggle: Bool = false
    @State var massToggle: Bool = false
    @State var payloadToggle: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Высота")
                        .font(.system(size: 15))
                    Spacer()
                    mftSwitch(show: $heightToggle)
                }.padding(.init(top: 10, leading: 20, bottom: 10, trailing: 20))
                HStack {
                    Text("Диаметр")
                        .font(.system(size: 15))
                    Spacer()
                    mftSwitch(show: $diameterToggle)
                }.padding(.init(top: 10, leading: 20, bottom: 10, trailing: 20))
                HStack {
                    Text("Масса")
                        .font(.system(size: 15))
                    Spacer()
                    kglbSwitch(show: $massToggle)
                }.padding(.init(top: 10, leading: 20, bottom: 10, trailing: 20))
                HStack {
                    Text("Полезная нагрузка")
                        .font(.system(size: 15))
                    Spacer()
                    kglbSwitch(show: $payloadToggle)
                }.padding(.init(top: 10, leading: 20, bottom: 10, trailing: 20))
                Spacer()
            }.padding(.init(top: 50, leading: 0, bottom: 0, trailing: 0))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Text("Закрыть")
                            .font(.system(size: 20))
                            .bold()
                    }
                }
            }
        }
        .accentColor(.white)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
