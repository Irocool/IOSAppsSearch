//
//  SearchMusicRouter.swift
//  iOSArchitecturesDemo
//
//  Created by Irina Kuligina on 01.03.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import UIKit

protocol SearchMusicRouterInput {
    func openSongPlayer(with song: ITunesSong)
    func openSongInITunes(song: ITunesSong)
    func moveToAppSearch()
}

class SearchMusicRouter: SearchMusicRouterInput {
    weak var viewController: UIViewController?
    
    func openSongPlayer(with song: ITunesSong) {
        let playerViewController = SongPlayerViewController(song: song)
        viewController?.present(playerViewController, animated: true, completion: nil)
    }
    
    func openSongInITunes(song: ITunesSong) {
        guard let urlString = song.trackUrl,
              let URL = URL(string: urlString) else { return }
        
        UIApplication.shared.open(URL, options: [:], completionHandler: nil)
    }
    
    func moveToAppSearch() {
        AppStartManager.shared.start()
        //AppStartManager.shared.openAppSearch()
    }
}

