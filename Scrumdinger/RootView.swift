//
//  RootView.swift
//  Scrumdinger
//
//  Created by lingjie on 2020/12/19.
//

import SwiftUI

struct RootView: View {
    @State private var scrums = DailyScrum.data
    var body: some View {
        NavigationView {
            ScrumsView(scrums: $scrums)
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
