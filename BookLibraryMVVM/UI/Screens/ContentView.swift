//
//  ContentView.swift
//  BookLibraryMVVM
//
//  Created by q on 6/4/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private(set) var viewModel: ViewModel
    
    var body: some View {
        Text("Hello, world!")
    }
}

extension ContentView {
    class ViewModel: ObservableObject {
        
        let container: DIContainer
        
        init(container: DIContainer) {
            self.container = container
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentView.ViewModel(container: .preview))
    }
}
