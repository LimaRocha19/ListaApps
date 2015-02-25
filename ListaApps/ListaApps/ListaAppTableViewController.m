//
//  ListaAppTableViewController.m
//  ListaApps
//
//  Created by Isaías Lima on 25/02/15.
//  Copyright (c) 2015 Isaías Lima. All rights reserved.
//

#import "ListaAppTableViewController.h"
#import "ListaAppTableViewCell.h"
#import "AppsData.h"

@interface ListaAppTableViewController (){
    AppsData *dados;
}

@end

@implementation ListaAppTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dados = [AppsData instance];
    
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
    return [dados.nomeApps count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    ListaAppTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"appDetail" forIndexPath:indexPath];
    
    if(cell == nil){
        cell = [[ListaAppTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:@"appDetail"];
     }
    
    NSString *app = [dados.nomeApps objectAtIndex:[indexPath row]];
    NSString *categoria = [dados.categoriaApps objectAtIndex:[indexPath row]];
    NSString *imagem = [dados.imagemApps objectAtIndex:[indexPath row]];


    
    [[cell nomeApp] setText:app];
    [[cell categoriaApp] setText:categoria];
    [[cell imageApp] setImage:[UIImage imageNamed:imagem]];
    
    return cell;
}



// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [dados.nomeApps removeObjectAtIndex:[indexPath row]];
        [dados.categoriaApps removeObjectAtIndex:[indexPath row]];
        [dados.imagemApps removeObjectAtIndex:[indexPath row]];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

//
//// Override to support conditional rearranging of the table view.
//- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
//    // Return NO if you do not want the item to be re-orderable.
//    
//    return YES;
//}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
