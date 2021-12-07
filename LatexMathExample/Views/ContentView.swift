//
//  ContentView.swift
//  LatexMathExample
//
//  Created by Russell Gordon on 2021-12-07.
//

import RichTextView
import SwiftUI

struct ContentView: View {
    
    @State var string : String = "In physics, the mass-energy equivalence is stated by the equation [math]$E=mc^2$[/math], discovered in 1905 by Albert Einstein."
    
    var body : some View {
        VStack {
            TextField("Test", text: $string)
                .padding(.vertical, 32)
                .border(Color.red)
            
            MathTextView(string: $string)
                .padding(.horizontal, 16)
                .font(.largeTitle)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
