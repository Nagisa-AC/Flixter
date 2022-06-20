//
//  DetailsViewController.m
//  Flixer_4
//
//  Created by Abel Kelbessa on 6/18/22.
//

#import "DetailsViewController.h"
#import "UIImageView+AFNetworking.h"

@interface DetailsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *bigPoster;
@property (weak, nonatomic) IBOutlet UIImageView *smallPoster;
@property (weak, nonatomic) IBOutlet UILabel *detailsMovie;
@property (weak, nonatomic) IBOutlet UILabel *titleMovie;

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@", self.detailDict);
    self.titleMovie.text = self.detailDict[@"title"];
    self.detailsMovie.text = self.detailDict[@"overview"];
    
    NSString *baseURLString = @"https://image.tmdb.org/t/p/w500";
    NSString *posterURLString = self.detailDict[@"poster_path"];
    NSString *fullPosterURLString = [baseURLString stringByAppendingString:posterURLString];
    
    NSURL *posterURL = [NSURL URLWithString:fullPosterURLString];
    self.bigPoster.image = nil;
    [self.bigPoster setImageWithURL:posterURL];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
