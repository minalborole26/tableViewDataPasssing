//
//  ViewController.swift
//  tableViewWithDataParsing
//
//  Created by minal borole on 26/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    var array1 = ["AAAA","BBBB","CCCC","DDDD","FFFF","EEEE"]
    var array2 = ["aaaa","bbbb","cccc","dddd","ffff","eeee"]
    var imgArray: [UIImage] = [#imageLiteral(resourceName: "boy"), #imageLiteral(resourceName: "girl"), #imageLiteral(resourceName: "cake"), #imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "cake"), #imageLiteral(resourceName: "girl")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! myTableViewCell
        cell.firstLable.text = array1[indexPath.row]
        cell.secondLable.text = array2[indexPath.row]
        cell.myImg.image = imgArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 169.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(identifier: "detailedViewController") as! detailedViewController
        vc.strLbl1 = array1[indexPath.row]
        vc.strLbl2 = array2[indexPath.row]
        vc.strImg = imgArray[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            array1.remove(at: indexPath.row)
            array2.remove(at: indexPath.row)
            imgArray.remove(at: indexPath.row)
            myTableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let editAction = UIContextualAction(style: .normal, title: "Edit") { (editAct, view, nil) in
            let alert = UIAlertController(title: "Edit", message: "Are you edit row", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { act in
                
            }))
            alert.addAction(UIAlertAction(title: "No", style: .destructive, handler: { act in
                
            }))
            
            self.present(alert, animated: true, completion: nil)
            
        }
        return UISwipeActionsConfiguration(actions: [editAction])
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0 //cell initial
        
        let transform = CATransform3DTranslate(CATransform3DIdentity, -250, 20, 0)
        cell.layer.transform = transform
        UIView.animate(withDuration: 1.0) {
            cell.alpha = 1.0
            
            cell.layer.transform = CATransform3DIdentity
        }
}
