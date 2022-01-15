//
//  DataManager.swift
//  AnimationApp
//
//  Created by admin on 15.01.2022.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
