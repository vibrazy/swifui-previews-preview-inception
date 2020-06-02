//
//  AnotherCoolThing.swift
//  SwiftUIPreviewsSourcery
//
//  Created by Daniel Tavares on 02/06/2020.
//  Copyright © 2020 Daniel Tavares. All rights reserved.
//

import SwiftUI

struct AnotherCoolThing: View {
	@State var animate = false

    var body: some View {
        Rectangle()
		.frame(width: 200, height: 200)
		.foregroundColor(Color.purple)
		.shadow(radius: 4)
		.rotation3DEffect(.degrees(self.animate ? 180 : 0), axis: (x: 0, y: 1, z: 0))
		.animation(Animation.default.repeatForever(autoreverses: true))
		.onAppear {
			self.animate.toggle()
		}
    }
}

struct AnotherCoolThing_Previews: PreviewProvider {
    static var previews: some View {
        AnotherCoolThing()
    }
}
