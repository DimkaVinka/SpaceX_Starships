//
//  kglbSwitch.swift
//  SpaceX_Starships
//
//  Created by Дмитрий Виноградов on 08.05.2022.
//

import SwiftUI

struct kglbSwitch: View {
    
    @Binding var show: Bool
    
    var body: some View {

        withAnimation(.spring()) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 140, height: 50)
                    .foregroundColor(Color.init(uiColor: .systemGray5))
                ZStack {
                    HStack {
                        if show {
                            Spacer()
                        }
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 70, height: 45)
                            .foregroundColor(.white)
                            .padding(.init(top: 0, leading: 2.5, bottom: 0, trailing: 2.5))
                            .onTapGesture {
                                self.show.toggle()
                            }
                        if !show {
                            Spacer()
                        }
                    }.frame(width: 140, height: 50)
                    HStack {
                        Text("kg")
                            .font(.system(size: 20))
                            .foregroundColor(show ? Color.init(uiColor: .lightGray) : Color.init(uiColor: .black))
                            .bold()
                        Spacer().frame(width: 50)
                        Text("lb")
                            .font(.system(size: 20))
                            .foregroundColor(show ? Color.init(uiColor: .black) : Color.init(uiColor: .lightGray))
                            .bold()
                    }.frame(width: 140, height: 50)
                }
                .animation(.spring())
            }
        }
    }
}
