//
//  GridView.swift
//  SpaceX_Starships
//
//  Created by Дмитрий Виноградов on 11.05.2022.
//

import SwiftUI

struct GridView: View {
    
    @State private var grid = [GridItem()]
    
    @State var height: Double = 0
    @State var diameter: Double = 0
    @State var mass: Double = 0
    @State var load: Double = 0
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: grid) {
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 120, height: 120)
                        .foregroundColor(Color.init(uiColor: .systemGray5))
                    VStack {
                        Text("\(String(format: "%.1f", height))")
                            .font(.system(size: 20))
                            .bold()
                        Text("Высота, " + "ft")
                            .foregroundColor(Color.init(uiColor: .lightGray))
                    }
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 120, height: 120)
                        .foregroundColor(Color.init(uiColor: .systemGray5))
                    VStack {
                        Text("\(String(format: "%.1f", diameter))")
                            .font(.system(size: 20))
                            .bold()
                        Text("Диаметр, " + "ft")
                            .foregroundColor(Color.init(uiColor: .lightGray))
                    }
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 120, height: 120)
                        .foregroundColor(Color.init(uiColor: .systemGray5))
                    VStack {
                        Text("\(String(format: "%.1f", mass))")
                            .font(.system(size: 20))
                            .bold()
                        Text("Масса, " + "lb")
                            .foregroundColor(Color.init(uiColor: .lightGray))
                    }
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 120, height: 120)
                        .foregroundColor(Color.init(uiColor: .systemGray5))
                    VStack {
                        Text("\(String(format: "%.1f", load))")
                            .font(.system(size: 20))
                            .bold()
                        Text("Нагрузка, " + "lb")
                            .foregroundColor(Color.init(uiColor: .lightGray))
                    }
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: 125)
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
