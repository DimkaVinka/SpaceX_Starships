//
//  FirstAndSecondStagesView.swift
//  SpaceX_Starships
//
//  Created by Дмитрий Виноградов on 09.05.2022.
//

import SwiftUI

struct FirstStageView: View {
    
    @State var enginesCount: Int = 27
    @State var fuelCount: Double = 308.6
    @State var burnTime: Int = 593
    
    var body: some View {
            VStack(alignment: .leading) {
                Text("ПЕРВАЯ СТУПЕНЬ").font(.system(size: 20)).bold()
                    .padding(.init(top: 20, leading: 0, bottom: 10, trailing: 0))
                HStack {
                    Text("Количество двигателей")
                    Spacer()
                    Text("\(enginesCount)")
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
                    Text("\(String(format: "%.1f", fuelCount))")
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
                    Text("\(burnTime)")
                        .bold()
                        .font(.title2)
                    Text("sec")
                        .bold()
                        .font(.title2)
                        .foregroundColor(Color.init(uiColor: .systemGray2))
                }.padding(.init(top: 0, leading: 0, bottom: 10, trailing: 0))
            }
        .padding()
    }
}

struct FirstStageView_Previews: PreviewProvider {
    static var previews: some View {
        FirstStageView()
    }
}
