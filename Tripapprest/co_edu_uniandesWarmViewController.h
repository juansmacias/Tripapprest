//
//  co_edu_uniandesWarmViewController.h
//  Tripapprest
//
//  Created by Macias on 18/07/13.
//  Copyright (c) 2013 Innovandes.co. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface co_edu_uniandesWarmViewController : UITableViewController

@property (nonatomic,weak) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UITableView *tablaCiudad;
@property (nonatomic, weak) NSArray *menuCiudad;

@end
