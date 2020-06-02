// Generated using Sourcery 0.18.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - Sourcery Magic 2

extension PreviewShowcaseListView {
	var previews: [ShowcaseType] {
		[
            .viewAll([
                AnotherCoolThing_Previews().asPreview,                
                AnotherCoolView_Previews().asPreview,                
                ContentView_Previews().asPreview,                
                CoolCircleView_Previews().asPreview,                
                CoolRectangleView_Previews().asPreview,                
                NewView_Previews().asPreview,                
                PreviewsShowcase_Previews().asPreview,                
			]),
            .preview(AnotherCoolThing_Previews().asPreview),                
            .preview(AnotherCoolView_Previews().asPreview),                
            .preview(ContentView_Previews().asPreview),                
            .preview(CoolCircleView_Previews().asPreview),                
            .preview(CoolRectangleView_Previews().asPreview),                
            .preview(NewView_Previews().asPreview),                
            .preview(PreviewsShowcase_Previews().asPreview),                
		]
	}
}