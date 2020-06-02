//
//  AnotherCoolView.swift
//  SwiftUIPreviewsSourcery
//
//  Created by Daniel Tavares on 02/06/2020.
//  Copyright © 2020 Daniel Tavares. All rights reserved.
//

import SwiftUI

struct AnotherCoolView: View {
	@State var animate = false
	
    var body: some View {
		Text("This is a cool view")
		.font(.largeTitle)
		.fixedSize()
		.rotation3DEffect(.degrees(self.animate ? 180 : 0), axis: (x: 1, y: 0, z: 0))
		.animation(Animation.default.repeatForever(autoreverses: true))
		.onAppear {
			self.animate.toggle()
		}
    }
}

struct AnotherCoolView_Previews: PreviewProvider {
	var name: String = "Custom name"
    static var previews: some View {
        AnotherCoolView()
    }
}
