//
//  SettingsRouter.swift
//  Twitimer
//
//  Created by Brais Moure on 25/8/21.
//

import Foundation

final class SettingsRouter {
    
    static func view(onClose: (() -> Void)?) -> SettingsView {
        
        let router = SettingsRouter()
        let viewModel = SettingsViewModel(router: router, onClose: onClose)
        let view = SettingsView(viewModel: viewModel)

        return view
    }
    
    func infoView() -> InfoView {
        return InfoRouter.view(type: .streamer)
    }
    
}
