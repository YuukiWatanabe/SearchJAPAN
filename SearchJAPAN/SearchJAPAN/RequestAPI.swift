//
//  RequestAPI.swift
//  SearchJAPAN
//
//  Created by 渡辺　雄貴 on 2017/02/06.
//  Copyright © 2017年 渡辺　雄貴. All rights reserved.
//

import Foundation

public class RequestAPI {
    func getRequest() {
        // APIへ接続するための設定
        let apiUrl = URL(string: "http://geoapi.heartrails.com/api/json?method=getPrefectures")!
        var request = URLRequest(url: apiUrl)
        request.addValue("application/json", forHTTPHeaderField: "Content-type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        request.httpMethod = "GET"
        
        // APIに接続
        let task = URLSession.shared.dataTask(with: request) {data, response, err in
            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! NSDictionary
                let res = json["response"] as! NSDictionary
                let pref = res["prefecture"] as! NSArray
                print(pref[0])
            } catch {
                print("error")
            }
        }
        task.resume()
    }
}
