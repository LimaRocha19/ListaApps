//
//  ListaAppTableViewController.h
//  ListaApps
//
//  Created by Isaías Lima on 25/02/15.
//  Copyright (c) 2015 Isaías Lima. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListaAppTableViewController : UITableViewController <UITableViewDataSource>

@property NSMutableArray *nomeApps;
@property NSMutableArray *categoriaApps;
@property NSMutableArray *imagemApps;


@end
