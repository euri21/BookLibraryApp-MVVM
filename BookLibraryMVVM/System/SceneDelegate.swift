//
//  SceneDelegate.swift
//  BookLibraryMVVM
//
//  Created by q on 6/4/22.
//

import Foundation
import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        let environment = AppEnvironment.bootstrap()
        
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(
                rootView: ContentView(
                    viewModel: ContentView.ViewModel(container: environment.container)
                )
            )
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
