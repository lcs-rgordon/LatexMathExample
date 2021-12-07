//
//  MathTextView.swift
//  LatexMathExample
//
//  Created by Russell Gordon on 2021-12-07.
//

import RichTextView
import SwiftUI

struct MathTextView : UIViewRepresentable {
    
    @Binding var string : String
    
    func makeUIView(context: Context) -> RichTextView {
        let richTextView = RichTextView(
            input: string,
            latexParser: LatexParser(),
            font: UIFont.systemFont(ofSize: UIFont.systemFontSize),
            textColor: UIColor.black,
            frame: CGRect.zero,
            completion: nil
        )
        
        return richTextView
        
    }

   func updateUIView(_ uiView: RichTextView, context: Context) {
        uiView.update(
            input: string,
            latexParser: LatexParser(),
            font: UIFont.systemFont(ofSize: UIFont.systemFontSize),
            textColor: UIColor.black,
            completion: nil
        )
   }
}


struct MathTextView_Previews: PreviewProvider {
    static var previews: some View {
        MathTextView(string: .constant("[math]a^2 + b^2 = c^2[/math]"))
    }
}


