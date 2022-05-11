//
//  MainModelView.swift
//  SpaceX_Starships
//
//  Created by Дмитрий Виноградов on 08.05.2022.
//

import SwiftUI

struct ButtonView: View {
    
    @State private var showRocketLaunchesView: Bool = false
    
    var body: some View {
        Button {
            self.showRocketLaunchesView.toggle()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(maxWidth: .infinity, maxHeight: 70)
                    .foregroundColor(Color.init(uiColor: .systemGray5))
                Text("Посмотреть запуски")
                    .font(.title2)
                    .bold()
            }.padding()
        }
        .frame(width: .infinity, height: 100)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
