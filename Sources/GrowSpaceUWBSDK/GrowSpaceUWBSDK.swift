// The Swift Programming Language
// https://docs.swift.org/swift-book

import GrowSpaceUWBPrivateSDK

@available(iOS 16.0, *)
public class GrowSpaceUWBSDK {
    private let spaceUwb: SpaceUWB?
    
    public init() {
        self.spaceUwb = SpaceUWB()
    }
    
    public func connect() {
        print("start Connect")
        self.spaceUwb?.spaceUWBHandler = {
            print("UWB 연결 결과 : \($0)")
        }
    }
    
    public func disconnect() {
    }
}
