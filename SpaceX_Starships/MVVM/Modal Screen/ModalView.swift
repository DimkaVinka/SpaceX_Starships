//
//  ModalView.swift
//  SpaceX_Starships
//
//  Created by Дмитрий Виноградов on 06.05.2022.
//

import SwiftUI

struct ModalView: View {
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .frame(width: .infinity, height: 120)
                .foregroundColor(.init(uiColor: .systemGray5))
            HStack {
                VStack(alignment: .leading) {
                    Text("FalconSat")
                        .font(.title2)
                    Text("2 февраля, 2022")
                        .foregroundColor(.gray)
                }.padding(.init(top: 0, leading: 30, bottom: 0, trailing: 0))
                Spacer()
                Image("success")
                    .resizable()
                    .frame(width: 45, height: 45)
                    .padding(.init(top: 0, leading: 0, bottom: 0, trailing: 30))
            }
        }.padding()
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
            .preferredColorScheme(.dark)
    }
}
