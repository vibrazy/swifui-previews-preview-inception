//
//  CoolCircleView.swift
//  SwiftUIPreviewsSourcery
//
//  Created by Daniel Tavares on 02/06/2020.
//  Copyright © 2020 Daniel Tavares. All rights reserved.
//

import SwiftUI

struct CoolCircleView: View {
    var body: some View {
		Circle()
			.frame(width: 200, height: 200)
			.foregroundColor(Color.red)
			.shadow(radius: 4)

    }
}

struct CoolCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CoolCircleView()
    }
}
