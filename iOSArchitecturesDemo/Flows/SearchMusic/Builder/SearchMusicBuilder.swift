//
//  SearchMusicBuilder.swift
//  iOSArchitecturesDemo
//
//  Created by Irina Kuligina on 24.02.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import UIKit

class SearchMusicBuilder {
    static func build() -> (UIViewController & SearchMusicViewInput) {
        let interactor = SearchMusicInteractor()
        let router = SearchMusicRouter()
        
        let presenter = SearchMusicPresenter(interactor: interactor, router: router)
        
        let viewController = SearchMusicViewController(presenter: presenter)
        presenter.viewInput = viewController
        router.viewController = viewController
        
        return viewController
    }
}
