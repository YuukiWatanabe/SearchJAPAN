//
//  DetailTableViewCell.swift
//  SearchJAPAN
//
//  Created by 渡辺　雄貴 on 2017/02/08.
//  Copyright © 2017年 渡辺　雄貴. All rights reserved.
//

import Foundation
import UIKit

class DetailTableViewCell: UITableViewCell {
    
    let priceLabel = UILabel()
    let rankLabel = UILabel()
    let appTitleLabel = UILabel()
    let contentLabel = UILabel()
    let rateLabel = UILabel()
    let reviewCountLabel = UILabel()
    let versionLabel = UILabel()
    let iconImageView = UIImageView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        //First Call Super
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        priceLabel.frame = CGRect(x:15, y:5, width:80, height:20)
        priceLabel.font = UIFont.systemFont(ofSize: 15)
        priceLabel.textColor = UIColor.gray
        self.addSubview(priceLabel)
        
        rankLabel.frame = CGRect(x:15, y:30, width:80, height:20)
        rankLabel.font = UIFont.systemFont(ofSize: 15)
        rankLabel.textColor = UIColor.gray
        self.addSubview(rankLabel)
        
        appTitleLabel.frame = CGRect(x:130, y:5, width:150, height:20)
        appTitleLabel.font = UIFont.systemFont(ofSize: 12, weight: UIFontWeightBold)
        self.addSubview(appTitleLabel)
        
        contentLabel.frame = CGRect(x:130, y:20, width:150, height:20)
        contentLabel.font = UIFont.systemFont(ofSize: 12)
        contentLabel.textColor = UIColor.gray
        self.addSubview(contentLabel)
        
        rateLabel.frame = CGRect(x:130, y:35, width:70, height:20)
        rateLabel.font = UIFont.systemFont(ofSize: 12)
        rateLabel.textColor = UIColor.orange
        self.addSubview(rateLabel)
        
        reviewCountLabel.frame = CGRect(x:200, y:35, width:150, height:20)
        reviewCountLabel.font = UIFont.systemFont(ofSize: 12)
        reviewCountLabel.textColor = UIColor.gray
        self.addSubview(reviewCountLabel)
        
        //デバイスの横幅に合わせた対応
        let deviceWidth = UIScreen.main.bounds.size.width
        versionLabel.frame = CGRect(x:deviceWidth - 80, y:5, width:60, height:20)
        versionLabel.font = UIFont.systemFont(ofSize: 12)
        versionLabel.textColor = UIColor.gray
        self.addSubview(versionLabel)
        
        iconImageView.layer.cornerRadius = 10
        iconImageView.layer.masksToBounds = true
        iconImageView.frame = CGRect(x:60, y:5, width:50, height:50)
        self.addSubview(iconImageView)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
}
