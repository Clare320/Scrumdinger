//
//  TestSwiftUIView.swift
//  Scrumdinger
//
//  Created by lingjie on 2020/12/25.
//

import SwiftUI

struct TestSwiftUIView: View {
    let textTuple = (Text("Hello, World!111"), Text("Test, SwiftUI"))
    
    var body: some View {
//       TupleView<(Text, Text)>(textTuple)
        Text("Hello, World!")
        Text("Test, SwiftUI")
        Text("Hello, World!")
        Text("Test, SwiftUI")
        Text("Hello, World!")
        Text("Test, SwiftUI")
        Text("Hello, World!")
        Text("Test, SwiftUI")
    }
}

struct TestSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
       TestSwiftUIView()
    }
}
