//
//  ManagementListViewController.swift
//  ProgressManagement
//
//  Created by 松本直也 on 2020/10/12.
//

import UIKit

class ManagementListViewController: UIViewController {
    
    let screenSize: CGSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    
    var managementListView: ManagementListView = ManagementListView()

    //MARK: - LifeCycle
    
    override func loadView() {
        view = managementListView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "進捗管理"
        
        managementListView.collectionView.dataSource = self
        managementListView.collectionView.delegate = self
        
    }
    


}


extension ManagementListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
        cell.backgroundColor = .gray
        return cell
        
    }
}


extension ManagementListViewController: UICollectionViewDelegate {
    
}


extension ManagementListViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        //ここでは画面の横サイズの半分の大きさのcellサイズを指定
        return CGSize(width: screenSize.width / 2.0 - 20, height: screenSize.width / 2.0 - 20)
    }
}
