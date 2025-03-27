// The Swift Programming Language
// https://docs.swift.org/swift-book

import GrowSpaceUWBPrivateSDK

public class GrowSpaceUWBSDK {
    private let spaceUwb: SpaceUWB?
    
    init() {
        self.spaceUwb = SpaceUWB()
    }
    
    func connect() {
        self.spaceUwb?.spaceUWBHandler = {
            print("UWB 연결 결과 : \($0)")
        }
    }
}
