//
//  Previewable.swift
//  SwiftUIPreviewsSourcery
//
//  Created by Daniel Tavares on 02/06/2020.
//  Copyright © 2020 Daniel Tavares. All rights reserved.
//

import SwiftUI

public extension View {
    @inlinable
    var anyView: AnyView {
        AnyView(self)
    }
}

protocol Previewable {
	var anyView: AnyView { get }
	var name: String { get }
}

extension Previewable where Self: PreviewProvider {
	var anyView: AnyView {
		return AnyView(Self.previews)
	}

	var name: String {
		return String(describing: type(of: self))
			.replacingOccurrences(of: "_Previews", with: "")
	}

	var asPreview: Preview {
		return .init(preview: self)
	}
}

struct Preview: View {
	private let preview: Previewable

	init<P>(preview: P) where P: Previewable, P: PreviewProvider {
		self.preview = preview
	}

	var name: String { preview.name }
	var anyView: AnyView { preview.anyView }
	var body: some View {
		anyView
	}
}
