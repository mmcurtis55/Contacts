//
//  TableViewCell.swift
//  ContactsTest
//
//  Created by Matthew Curtis on 7/14/15.
//  Copyright (c) 2015 Matthew Curtis. All rights reserved.
//

import Foundation
import UIKit

class TableViewCell: UITableViewCell {
    let padding: CGFloat = 5
    var background: UIView!
    var typeLabel: UILabel!
    var nameLabel: UILabel!
    var priceLabel: UILabel!
    
    var stock: Stock? {
        didSet {
            if let s = stock {
                background.backgroundColor = s.backgroundColor
                priceLabel.text = s.price
                priceLabel.backgroundColor = s.priceLabelColor
                typeLabel.text = s.action
                typeLabel.backgroundColor = s.typeColor
                nameLabel.text = s.name
                setNeedsLayout()
            }
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = UIColor.clearColor()
        selectionStyle = .None
        
        background = UIView(frame: CGRectZero)
        background.alpha = 0.6
        contentView.addSubview(background)
        
        nameLabel = UILabel(frame: CGRectZero)
        nameLabel.textAlignment = .Left
        nameLabel.textColor = UIColor.blackColor()
        contentView.addSubview(nameLabel)
        
        typeLabel = UILabel(frame: CGRectZero)
        typeLabel.textAlignment = .Center
        typeLabel.textColor = UIColor.whiteColor()
        contentView.addSubview(typeLabel)
        
        priceLabel = UILabel(frame: CGRectZero)
        priceLabel.textAlignment = .Center
        priceLabel.textColor = UIColor.whiteColor()
        contentView.addSubview(priceLabel)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        background.frame = CGRectMake(0, padding, frame.width, frame.height - 2 * padding)
        typeLabel.frame = CGRectMake(padding, (frame.height - 25)/2, 40, 25)
        priceLabel.frame = CGRectMake(frame.width - 100, padding, 100, frame.height - 2 * padding)
        nameLabel.frame = CGRectMake(CGRectGetMaxX(typeLabel.frame) + 10, 0, frame.width - priceLabel.frame.width - (CGRectGetMaxX(typeLabel.frame) + 10), frame.height)
    }
}
}
