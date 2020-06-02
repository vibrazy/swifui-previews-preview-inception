//
//  CoolRectangleView.swift
//  SwiftUIPreviewsSourcery
//
//  Created by Daniel Tavares on 02/06/2020.
//  Copyright © 2020 Daniel Tavares. All rights reserved.
//

import SwiftUI

struct CoolRectangleView: View {
    var body: some View {
        Rectangle()
		.frame(width: 200, height: 200)
		.foregroundColor(Color.blue)
		.shadow(radius: 4)
    }
}

struct CoolRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        CoolRectangleView()
    }
}
