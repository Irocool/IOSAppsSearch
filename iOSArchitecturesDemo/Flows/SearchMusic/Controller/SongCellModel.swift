//
//  SongCellModel.swift
//  iOSArchitecturesDemo
//
//  Created by Irina Kuligina on 24.02.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import Foundation

struct SongCellModel {
    let trackName: String?
    let artistName: String?
    let artworkURL: String?
}

final class SongCellModelFactory {
    static func cellModel(from model: ITunesSong) -> SongCellModel {
        return SongCellModel(
            trackName: model.trackName,
            artistName: model.artistName,
            artworkURL: model.artwork
        )
    }
}
