//
//  ViewController.swift
//  HelloSnapKit
//
//  Created by Doyoung on 2021/08/15.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    lazy var sampleTableView: UITableView = {
        let tableView = UITableView()
        
        return tableView
    }()
    
    lazy var sampleCollectionView: UICollectionView = {
        let collectionView = UICollectionView()
        
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sampleCollectionView.delegate = self
        self.sampleCollectionView.dataSource = self
        self.view.addSubview(sampleTableView)
        sampleTableView.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeArea.top)
            make.bottom.equalTo(self.view.safeArea.bottom)
            make.width.equalTo(self.view)
        }
    }


}

extension UIView {
    var safeArea: ConstraintLayoutGuideDSL {
        return safeAreaLayoutGuide.snp
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}

class CollectionCell: UICollectionViewCell {
    
}
