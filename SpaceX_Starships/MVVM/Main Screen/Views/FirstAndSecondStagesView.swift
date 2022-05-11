//
//  FirstAndSecondStagesView.swift
//  SpaceX_Starships
//
//  Created by Дмитрий Виноградов on 09.05.2022.
//

import SwiftUI

struct FirstAndSecondStagesView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("ПЕРВАЯ СТУПЕНЬ").font(.system(size: 20)).bold()
                    .padding(.init(top: 20, leading: 0, bottom: 10, trailing: 0))
                HStack {
                    Text("Количество двигателей")
                    Spacer()
                    Text("27")
                        .bold()
                        .font(.title2)
                    Text("ton")
                        .bold()
                        .font(.title2)
                        .foregroundColor(Color.init(uiColor: .black))
                }.padding(.init(top: 0, leading: 0, bottom: 10, trailing: 0))
                HStack {
                    Text("Количество топлива")
                    Spacer()
                    Text("308,6")
                        .bold()
                        .font(.title2)
                    Text("ton")
                        .bold()
                        .font(.title2)
                        .foregroundColor(Color.init(uiColor: .systemGray2))
                }.padding(.init(top: 0, leading: 0, bottom: 10, trailing: 0))
                HStack {
                    Text("Время сгорания")
                    Spacer()
                    Text("593")
                        .bold()
                        .font(.title2)
                    Text("sec")
                        .bold()
                        .font(.title2)
                        .foregroundColor(Color.init(uiColor: .systemGray2))
                }.padding(.init(top: 0, leading: 0, bottom: 10, trailing: 0))
            }
            
            VStack(alignment: .leading) {
                Text("ВТОРАЯ СТУПЕНЬ").font(.system(size: 20)).bold()
                    .padding(.init(top: 20, leading: 0, bottom: 10, trailing: 0))
                HStack {
                    Text("Количество двигателей")
                    Spacer()
                    Text("1")
                        .bold()
                        .font(.title2)
                    Text("ton")
                        .bold()
                        .font(.title2)
                        .foregroundColor(Color.init(uiColor: .black))
                }.padding(.init(top: 0, leading: 0, bottom: 10, trailing: 0))
                HStack {
                    Text("Количество топлива")
                    Spacer()
                    Text("243,2")
                        .bold()
                        .font(.title2)
                    Text("ton")
                        .bold()
                        .font(.title2)
                        .foregroundColor(Color.init(uiColor: .systemGray2))
                }.padding(.init(top: 0, leading: 0, bottom: 10, trailing: 0))
                HStack {
                    Text("Время сгорания")
                    Spacer()
                    Text("397")
                        .bold()
                        .font(.title2)
                    Text("sec")
                        .bold()
                        .font(.title2)
                        .foregroundColor(Color.init(uiColor: .systemGray2))
                }.padding(.init(top: 0, leading: 0, bottom: 10, trailing: 0))
            }
        }.padding()
    }
}

struct FirstAndSecondStagesView_Previews: PreviewProvider {
    static var previews: some View {
        FirstAndSecondStagesView()
    }
}
