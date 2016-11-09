//
//  Epictic.swift
//  Pods
//
//  Created by Ammar Hadzic on 11/9/16.
//
//

import Alamofire

public class Epictic {
    
    public static let sharedInstance : Epictic = {
        let instance = Epictic()
        return instance
    }()
    
    private var config: EpicticConfiguration?
    private var identifier = UUID().uuidString.lowercased()
    private var base = [String:Any]()
    
    public init(){ }
    
    public init(config: EpicticConfiguration) {
        self.config = config
    }
    
    public func track(eventName: String, props: [String:Any]){
        
        var content = EpicticRecordContent()
        content.identifier = identifier
        content.name = eventName
        content.properties = props
        content.base = base
        
        var payload = [String:Any]()
        payload["key"] = config!.key
        payload["content"] = content.getDict()
        
        Alamofire.request(config!.url, method: .post, parameters: payload, encoding: JSONEncoding.default)
    }
    
    public func identify(name: String){
        self.identifier = name
    }
    
    public func register(props: [String:Any]){
        for (key,value) in props {
            self.base[key] = value
        }
    }
    
    public func configure(config: EpicticConfiguration){
        self.config = config
    }
}
