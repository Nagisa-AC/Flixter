//
//  CollectionCell.h
//  Flixer_4
//
//  Created by Abel Kelbessa on 6/19/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CollectionCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIView *cellVIew;

@property (weak, nonatomic) IBOutlet UIImageView *movieImageView;


@end

NS_ASSUME_NONNULL_END
