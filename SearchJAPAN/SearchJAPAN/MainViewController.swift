//
//  MainViewController.swift
//  SearchJAPAN
//
//  Created by 渡辺　雄貴 on 2017/02/06.
//  Copyright © 2017年 渡辺　雄貴. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //DetailViewControllerのインスタンス
    let detailViewController: UIViewController = DetailViewController()
    // RequestAPIのインスタンス
    let requestAPI = RequestAPI()
    // PrefectureListのインスタンス
    let prefectureList = PrefectureList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //試しにAPIをGETで叩く
        requestAPI.getRequest()
        
        self.title = "都道府県一覧"
        
        // UITableView を作成
        let tableView = UITableView()
        
        // サイズと位置調整
        tableView.frame = CGRect(
            x: 0,
            y: 0,
            width: self.view.frame.width,
            height: self.view.frame.height
        )
        
        // Delegate設定
        tableView.delegate = self
        
        // DataSource設定
        tableView.dataSource = self
        
        // 画面に UITableView を追加
        self.view.addSubview(tableView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを作る
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.accessoryType = .detailButton
        cell.textLabel?.text = PrefectureList.prefList[indexPath.row]
        cell.detailTextLabel?.text = PrefectureList.prefList[indexPath.row] + "の説明"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // セルの数を設定
        return PrefectureList.prefList.count
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // セルがタップされた時の処理
        detailViewController.modalTransitionStyle = UIModalTransitionStyle.partialCurl
        self.navigationController?.pushViewController(detailViewController, animated: true)
        let backButtonItem = UIBarButtonItem(title: "戻る", style: .plain, target: nil, action: nil)
        self.navigationItem.backBarButtonItem = backButtonItem
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        // セルの高さを設定
        return 64
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        // アクセサリボタン（セルの右にあるボタン）がタップされた時の処理
        print("タップされたアクセサリがあるセルのindex番号: \(indexPath.row)")
    }
}
