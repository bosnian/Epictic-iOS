//
//  Epictic.swift
//  Pods
//
//  Created by Ammar Hadzic on 11/9/16.
//
//

import Alamofire

public class Epictic {
    let config: EpicticConfiguration
    
    var identifier = "demo@demo.com"
    var base = [String:Any]()
    
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
        payload["key"] = config.key
        payload["content"] = content
        
        Alamofire.request(config.url, method: .post, parameters: payload, encoding: JSONEncoding.default)
    }
    
    public func identify(name: String){
        self.identifier = name
    }
    
}
