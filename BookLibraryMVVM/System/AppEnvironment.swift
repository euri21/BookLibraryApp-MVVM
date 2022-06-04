//
//  AppEnvironment.swift
//  BookLibraryMVVM
//
//  Created by Solution888 on 6/4/22.
//

import Foundation

struct AppEnvironment {
    let container: DIContainer
}

extension AppEnvironment {
    
    static func bootstrap() -> AppEnvironment {
        let appState = Store<AppState>(AppState())
        
        let session = configuredURLSession()
        let services = configuredServices(appState: appState)
        let diContainer = DIContainer(appState: appState, services: services)
        return AppEnvironment(container: diContainer)
    }
    
    private static func configuredURLSession() -> URLSession {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 60
        configuration.timeoutIntervalForResource = 120
        configuration.waitsForConnectivity = true
        configuration.httpMaximumConnectionsPerHost = 5
        configuration.requestCachePolicy = .returnCacheDataElseLoad
        configuration.urlCache = .shared
        return URLSession(configuration: configuration)
    }
    
    private static func configuredServices(appState: Store<AppState>) -> DIContainer.Services {
        return .init()
    }
}
