//
// Created by Agathe Battestini on 2/23/14.
//

#import <Foundation/Foundation.h>
#import <ReactiveViewModel/RVMViewModel.h>

@class ABCellInfoDataObject;
@class RACSubject;

/**
* Base class for ViewModels that provide data for UICollectionView objects.
*/
@interface ABCollectionViewModel : RVMViewModel {
    NSArray *_results;
}

/**
* By default expects a 2 dimensions object such that results[section][row] is a ABCellInfoDataObject.
*/
@property (atomic, strong) NSArray *results;

- (NSInteger)numberOfSections;

- (NSInteger)numberOfItemsInSection:(NSInteger)section;

- (id)objectAtIndexPath:(NSIndexPath *)indexPath;

- (void)registerCollectionViewCellClasses:(UICollectionView *)collectionView;

- (CGSize)sizeForItemAtIndexPath:(NSIndexPath *)indexPath;

- (NSString *)cellIdentifierAtIndexPath:(NSIndexPath *)indexPath;

- (RACSubject *)dataSubjectForObjectAtIndexPath:(NSIndexPath *)indexPath;

- (NSString *)cellIdentifierForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath;

- (CGSize)heightForHeaderInSection:(NSUInteger)section;

- (void)configureSupplementaryElement:(UICollectionReusableView *)view ofKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath;

- (BOOL)shouldSelectItemAt:(NSIndexPath *)indexPath;

- (UIEdgeInsets)insetForSectionAtIndex:(NSInteger)section;
@end


@interface ABCollectionViewModel (){

}

//@property (nonatomic, strong, readwrite) NSArray *results;

- (ABCellInfoDataObject *)cellInfoDataObjectAtIndexPath:(NSIndexPath *)indexPath;

- (void)prepareData:(id)sender;

@end
