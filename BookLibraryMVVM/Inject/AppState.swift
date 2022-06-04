//
//  AppState.swift
//  BookLibraryMVVM
//
//  Created by Solution888 on 6/4/22.
//

import Foundation

struct AppState: Equatable {
    var userData = UserData()
    var routing = ViewRouting()
    var system = System()
}

extension AppState {
    struct UserData: Equatable {
        
    }
}

extension AppState {
    struct ViewRouting: Equatable {
    }
}

extension AppState {
    struct System: Equatable {
    }
}

#if DEBUG
extension AppState {
    static var preview: AppState {
        var state = AppState()
        
        return state
    }
}
#endif
