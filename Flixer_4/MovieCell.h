//
//  MovieCell.h
//  Flixer_4
//
//  Created by Abel Kelbessa on 6/17/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MovieCell : UITableViewCell


// drag posterview, titlelabel, and synopsis label here
@property (weak, nonatomic) IBOutlet UIImageView *posterView;

@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

NS_ASSUME_NONNULL_END
