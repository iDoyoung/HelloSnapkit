//
//  ScrollViewController.swift
//  HelloSnapKit
//
//  Created by Doyoung on 2021/08/27.
//

import UIKit
import SnapKit

class ScrollViewController: UIViewController {

    //스크롤뷰 추가
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .black
        return scrollView
    }()
    
    //컨텐츠뷰 추가
    let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .brown
        return view
    }()
    
    //컨텐츄 child view
    let colorView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(scrollView)
        scrollView.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeArea.top)
            make.bottom.equalTo(self.view.safeArea.bottom)
            make.leading.equalTo(self.view.safeArea.leading)
            make.trailing.equalTo(self.view.safeArea.trailing)
        }
        
        self.scrollView.addSubview(contentView)
        contentView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(0)
            make.bottom.equalToSuperview().offset(0)
            make.leading.equalToSuperview().offset(0)
        }
        
        self.contentView.addSubview(colorView)
        colorView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.bottom.equalToSuperview().offset(20)
            make.width.equalTo(self.view.frame.width * 2)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview().offset(20)
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
