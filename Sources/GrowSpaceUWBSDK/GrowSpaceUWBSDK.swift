// The Swift Programming Language
// https://docs.swift.org/swift-book

import GrowSpaceUWBPrivateSDK

public class GrowSpaceUWBSDK {
    private var spaceUwb: SpaceUWB
    
    init(spaceUwb: SpaceUWB) {
        self.spaceUwb = spaceUwb
    }
    
    func connect() {
        self.spaceUwb.spaceUWBHandler = {
            print("UWB 연결 결과 : \($0)")
        }
    }
}
