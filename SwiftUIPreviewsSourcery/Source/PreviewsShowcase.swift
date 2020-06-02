//
//  PreviewViews.swift
//  SwiftUIPreviewsSourcery
//
//  Created by Daniel Tavares on 02/06/2020.
//  Copyright © 2020 Daniel Tavares. All rights reserved.
//

import SwiftUI

struct PreviewsShowcaseViewAll: View {
	let previews: [Preview]

	var body: some View {
		VStack {
			ScrollView(.vertical) {
				ForEach(0..<previews.count) { idx in
					self.previews[idx].fixedSize(horizontal: false, vertical: true)
				}
			}
		}
	}
}

extension PreviewShowcaseListView {
	enum ShowcaseType {
		case preview(Preview)
		case viewAll([Preview])

		var name: String {
			switch self {
			case .preview(let preview):
				return preview.name
			case .viewAll:
				return "View All"
			}
		}

		func destination() -> some View {
			switch self {
			case .preview(let preview):
				return preview.anyView
			case .viewAll(let previews):
				return PreviewsShowcaseViewAll(previews: previews).anyView
			}
		}
	}
}

struct PreviewShowcaseListView: View {
	var body: some View {
		NavigationView {
			List(0..<previews.count) { idx in
				NavigationLink(
				  self.previews[idx].name,
				  destination: self.previews[idx].destination()
				)
			}.navigationBarTitle("Previews Inception")
		}
	}
}

// MARK: - Preview

struct PreviewsShowcase_Previews: PreviewProvider {
	static var previews: some View {
		PreviewShowcaseListView()
	}
}
