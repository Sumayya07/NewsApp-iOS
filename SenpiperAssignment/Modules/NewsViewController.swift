//
//  NewsViewController.swift
//  SenpiperAssignment
//
//  Created by Sumayya Siddiqui on 14/06/23.
//

import UIKit
import MBProgressHUD
import Reachability

class NewsViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var reachability: Reachability?
    var news: News?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getNewsApi()
        
    }
}
    
extension NewsViewController: UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return (self.news?.articles.count) ?? 0
            
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell") as? NewsTableViewCell else { return UITableViewCell() }
            let item = news?.articles[indexPath.row]
            cell.lblAuthorName.text = item?.author
            cell.lblTitle.text = item?.title
            cell.lblDescription.text = item?.description
            cell.lblPublishedTime.text = item?.publishedAt.description
            cell.imgPoster?.imageFromUrl(urlString: item?.urlToImage)

            return cell
            
        }
    }
    
    extension NewsViewController {
        func getNewsApi() {
            do {
                self.reachability = try Reachability.init()
            } catch {
                print("Unable tp start notifier")
            }
            if ((reachability?.connection) != .unavailable) {
                MBProgressHUD.showAdded(to: self.view, animated: true)
                
                guard let url = URL(string: APIManager.shared.newsApi) else { return }
                var request = URLRequest(url: url)
                request.httpMethod = "GET"
                request.addValue("application/json", forHTTPHeaderField: "Content-Type")
                
                APIManager.shared.load(urlRequest: request, type: News.self) { result in
                    DispatchQueue.main.async {
                        MBProgressHUD.hide(for: self.view, animated: true)
                    }
                    switch result {
                    case .success(let response):
                        self.news = response
                        self.tableView.reloadData()
                        
                    case .failure(let error):
                        print("error >>>>", error.localizedDescription)
                    }
                }
            }
        }
    }
