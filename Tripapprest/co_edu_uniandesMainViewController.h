//
//  co_edu_uniandesMainViewController.h
//  Tripapprest
//
//  Created by Macias on 16/07/13.
//  Copyright (c) 2013 Innovandes.co. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface co_edu_uniandesMainViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tablaPosts;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *sideBarButton;

@property (strong,nonatomic) NSArray *menuPost;
- (IBAction)agregarFamilia:(UIBarButtonItem *)sender;

 
@end
