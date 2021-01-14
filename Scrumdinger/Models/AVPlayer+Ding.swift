//
//  AVPlayer+Ding.swift
//  Scrumdinger
//
//  Created by lingjie on 2020/12/20.
//

import Foundation
import AVFoundation

extension AVPlayer {
    static let sharedDingPlayer: AVPlayer = {
        guard let url = Bundle.main.url(forResource: "ding", withExtension: "wav") else {
            fatalError("no source file")
        }
        return AVPlayer(url: url)
    }()
}
