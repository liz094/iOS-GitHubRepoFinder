//
//  InfoCell.swift
//  GithubDemo
//
//  Created by Lin Zhou on 2/16/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class InfoCell: UITableViewCell {

    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var forkImageView: UIImageView!
    @IBOutlet weak var starImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    var repo: GithubRepo!{
        didSet{
            nameLabel.text = repo.name
            ownerLabel.text = repo.ownerHandle
            descriptionLabel.text = repo.repoDescription
            let urlString = repo.ownerAvatarURL
            let url = URL(string: urlString!)
            
            self.avatarImageView.setImageWith(url!)
            forkLabel.text = "\(repo.forks!)"
            starLabel.text = "\(repo.stars!)"
            
            
            
            
            
            //avatarImageView.setImageWith(repo.ownerAvatarURL!)
            //forkImageView.setImageWith(repo.)
            
        }
        }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
