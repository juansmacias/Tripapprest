//
//  co_edu_uniandesProfileViewController.h
//  Tripapprest
//
//  Created by Macias on 17/07/13.
//  Copyright (c) 2013 Innovandes.co. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface co_edu_uniandesProfileViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,UICollectionViewDataSource,UICollectionViewDelegate>
@property (strong, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionFamily;
@property (weak, nonatomic) IBOutlet UITableView *tablaPostP;

@end
