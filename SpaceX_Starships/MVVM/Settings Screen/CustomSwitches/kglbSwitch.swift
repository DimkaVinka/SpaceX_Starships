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
                    .frame(width: 115, height: 40)
                    .foregroundColor(Color.init(uiColor: .systemGray5))
                ZStack {
                    HStack {
                        if show {
                            Spacer()
                        }
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 56, height: 35)
                            .foregroundColor(.white)
                            .padding(.init(top: 3, leading: 3, bottom: 3, trailing: 3))
                            .onTapGesture {
                                self.show.toggle()
                            }
                        if !show {
                            Spacer()
                        }
                    }.frame(width: 115, height: 40)
                    HStack {
                        Text("kg")
                            .font(.system(size: 15))
                            .foregroundColor(show ? Color.init(uiColor: .lightGray) : Color.init(uiColor: .black))
                            .bold()
                        Spacer().frame(width: 40)
                        Text("lb")
                            .font(.system(size: 15))
                            .foregroundColor(show ? Color.init(uiColor: .black) : Color.init(uiColor: .lightGray))
                            .bold()
                    }.frame(width: 115, height: 40)
                }
                .animation(.spring())
            }
        }
    }
}
