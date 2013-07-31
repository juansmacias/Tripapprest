//
//  co_edu_uniandesProfileViewController.m
//  Tripapprest
//
//  Created by Macias on 17/07/13.
//  Copyright (c) 2013 Innovandes.co. All rights reserved.
//

#import "co_edu_uniandesProfileViewController.h"
#import "SWRevealViewController.h"

@interface co_edu_uniandesProfileViewController ()

@property (strong, nonatomic) NSArray *listaP;
@property (strong, nonatomic) NSArray *listaF;

@end

@implementation co_edu_uniandesProfileViewController

@synthesize listaP =_listaP;
@synthesize listaF =_listaF;

- (void)viewDidLoad
{
    [super viewDidLoad];
    _sidebarButton.target =self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    self.tablaPostP.delegate = self;
    self.tablaPostP.dataSource = self;
    self.collectionFamily.delegate = self;
    self.collectionFamily.dataSource = self;
    self.listaP = @[@"photoP"];
    self.listaF = @[@"1F",@"2F",@"3F"];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.listaP count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellI = [self.listaP objectAtIndex:indexPath.row];
    UITableViewCell *cell = [self.tablaPostP dequeueReusableCellWithIdentifier:cellI forIndexPath:indexPath];
    
    return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 3;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellI = [self.listaF objectAtIndex:indexPath.row];
    UICollectionViewCell *cell = [self.collectionFamily dequeueReusableCellWithReuseIdentifier:cellI forIndexPath:indexPath];
    return cell;
}



@end
