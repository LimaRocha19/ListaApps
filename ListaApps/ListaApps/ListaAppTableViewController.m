//
//  ListaAppTableViewController.m
//  ListaApps
//
//  Created by Isaías Lima on 25/02/15.
//  Copyright (c) 2015 Isaías Lima. All rights reserved.
//

#import "ListaAppTableViewController.h"
#import "ListaAppTableViewCell.h"

@interface ListaAppTableViewController ()

@end

@implementation ListaAppTableViewController
@synthesize nomeApps, categoriaApps, imagemApps;

- (void)viewDidLoad {
    [super viewDidLoad];
    nomeApps = [[NSMutableArray alloc]init];
    categoriaApps = [[NSMutableArray alloc]init];
    imagemApps = [[NSMutableArray alloc]init];
    
    [nomeApps addObject:@"Waze"];
    [nomeApps addObject:@"Google maps"];
    [nomeApps addObject:@"Facebook"];
    [nomeApps addObject:@"Whatsapp"];
    [nomeApps addObject:@"eBay"];
    [nomeApps addObject:@"Ingresso"];
    
    [categoriaApps addObject:@"Navegação"];
    [categoriaApps addObject:@"Navegação"];
    [categoriaApps addObject:@"Social"];
    [categoriaApps addObject:@"Social"];
    [categoriaApps addObject:@"Negócios"];
    [categoriaApps addObject:@"Negócios"];
    
    [imagemApps addObject:@"Waze"];
    [imagemApps addObject:@"Google_maps"];
    [imagemApps addObject:@"Facebook"];
    [imagemApps addObject:@"Whatsapp"];
    [imagemApps addObject:@"eBay"];
    [imagemApps addObject:@"Ingresso"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [nomeApps count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    ListaAppTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"appDetail" forIndexPath:indexPath];
    
    if(cell == nil){
        cell = [[ListaAppTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:@"appDetail"];
     }
    
    NSString *app = [nomeApps objectAtIndex:[indexPath row]];
    NSString *categoria = [categoriaApps objectAtIndex:[indexPath row]];
    NSString *imagem = [imagemApps objectAtIndex:[indexPath row]];


    
    [[cell nomeApp] setText:app];
    [[cell categoriaApp] setText:categoria];
    [[cell imageApp] setImage:[UIImage imageNamed:imagem]];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
