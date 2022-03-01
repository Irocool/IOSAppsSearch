//
//  SongDownloader.swift
//  iOSArchitecturesDemo
//
//  Created by Irina Kuligina on 01.03.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import Foundation

final class SongDownloader {
    public typealias CompletionSong = (URL) -> Void
    
    func downloadFromURL(_ url: URL, completion: @escaping CompletionSong) {
        var downloadTask: URLSessionDownloadTask
        downloadTask = URLSession.shared.downloadTask(with: url, completionHandler: { (localURL, response, error) in
            if let localURL = localURL {
                completion(localURL)
            }
        })
        
        downloadTask.resume()
    }
}

