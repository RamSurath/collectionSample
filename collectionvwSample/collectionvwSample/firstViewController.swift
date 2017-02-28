//
//  firstViewController.swift
//  collectionvwSample
//
//  Created by Albina on 27/02/17.
//  Copyright © 2017 Albina. All rights reserved.
//

import UIKit

class firstViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
   // var module = ["1","2","3","4","5"]
    var modul = ["1","2","3"]


    @IBOutlet weak var collectnvw: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        [collectnvw setFrame:CGRectMake(collectnw.frame.origin.x, collectnw.frame.origin.y, collectnw.frame.size.width,(60.0f*([modul count])))];

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        
       // return module.count
        return modul.count
 
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)as! firstCellViewCell
         cell.labl1.text = modul[indexPath.row]as?String
return cell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
