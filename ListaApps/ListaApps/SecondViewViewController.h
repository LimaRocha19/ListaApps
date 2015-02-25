//
//  SecondViewViewController.h
//  ListaApps
//
//  Created by Gustavo Tiago on 25/02/15.
//  Copyright (c) 2015 Isaías Lima. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewViewController : UIViewController

@property (strong, nonatomic) NSArray *appsDetail;
@property IBOutlet UILabel *nome;
@property IBOutlet UILabel *categoria;
@property IBOutlet UIImageView *imagem;
@property IBOutlet UILabel *descricao;
- (IBAction)voltar:(id)sender;

@end
