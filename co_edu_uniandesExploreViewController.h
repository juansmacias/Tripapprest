//
//  co_edu_uniandesExploreViewController.h
//  Tripapprest
//
//  Created by Macias on 17/07/13.
//  Copyright (c) 2013 Innovandes.co. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface co_edu_uniandesExploreViewController : UIViewController<MKMapViewDelegate>

@property (nonatomic,weak) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet MKMapView *mapa;
@property (strong,nonatomic) CLLocationManager *locationManager;


@end
