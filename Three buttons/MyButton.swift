//
//  MyButton.swift
//  Three buttons
//
//  Created by on 06.11.2024.
//

import UIKit

class MyButton: UIButton {
    
    var title: String? {
        didSet {
            setTitle(title, for: .normal)
        }
    }
    
    var image: UIImage? {
        didSet {
            setImage(image, for: .normal)
            setImage(image, for: .highlighted)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        semanticContentAttribute = .forceRightToLeft
        
        var configuration = UIButton.Configuration.filled()
        configuration.titlePadding = 8
        configuration.imagePadding = 8
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 14, bottom: 10, trailing: 14)

        self.configuration = configuration
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func tintColorDidChange() {
        super.tintColorDidChange()
        
        if
            tintAdjustmentMode == .dimmed
        {
            backgroundColor = .systemGray2
            titleLabel?.textColor = . systemGray3
            imageView?.tintColor = .systemGray3
        }
        else {
            backgroundColor = .systemBlue
        }
    }
}
