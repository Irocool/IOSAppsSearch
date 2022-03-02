//
//  SearchMusicInteractorInput.swift
//  iOSArchitecturesDemo
//
//  Created by Irina Kuligina on 01.03.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import Alamofire

protocol SearchMusicInteractorInput {
    func requestSongs(with querry: String, completion: @escaping (Result<[ITunesSong]>) -> Void)
}

class SearchMusicInteractor: SearchMusicInteractorInput {
    private let searchService = ITunesSearchService()
    
    func requestSongs(with querry: String, completion: @escaping (Result<[ITunesSong]>) -> Void) {
        searchService.getSongs(forQuery: querry, completion: completion)
    }
}
