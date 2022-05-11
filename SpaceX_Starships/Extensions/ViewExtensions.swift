//
//  ViewExtensions.swift
//  SpaceX_Starships
//
//  Created by Дмитрий Виноградов on 11.05.2022.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(ViewExtensions(radius: radius, corners: corners))
    }
}

struct ViewExtensions: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct ViewExtensions_Previews: PreviewProvider {
    static var previews: some View {
        ViewExtensions(radius: 200, corners: [.bottomLeft, .topRight])
            .padding()
            .frame(width: 400, height: 200)
    }
}
