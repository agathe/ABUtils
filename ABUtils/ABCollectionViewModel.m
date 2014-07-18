//
// Created by Agathe Battestini on 2/23/14.
//

#import "ABCollectionViewModel.h"
#import "ABCellInfoDataObject.h"


@implementation ABCollectionViewModel {

}


#pragma mark - Data

- (void)prepareData:(id)sender {
    NSAssert(NO, @"Override this method");
}

- (ABCellInfoDataObject *)cellInfoDataObjectAtIndexPath:(NSIndexPath *)indexPath
{
    NSAssert(indexPath, @"cannot be nil");
    return self.results[indexPath.section][indexPath.row];

}


#pragma mark - Collection view


- (id)objectAtIndexPath:(NSIndexPath *)indexPath
{
    ABCellInfoDataObject *cellInfoDataObject = [self cellInfoDataObjectAtIndexPath:indexPath];
    return cellInfoDataObject.object;
}

- (void)registerCollectionViewCellClasses:(UICollectionView *)collectionView {
    NSAssert(NO, @"Override this method");
}

- (NSInteger)numberOfSections {
    return self.results.count;
}

- (NSInteger)numberOfItemsInSection:(NSInteger)section {
    if(section < [self numberOfSections])
        return [((NSArray*)self.results[section]) count];
    return 0;
}

- (NSString *)cellIdentifierAtIndexPath:(NSIndexPath *)indexPath {
    ABCellInfoDataObject *cellInfoDataObject = [self cellInfoDataObjectAtIndexPath:indexPath];
    NSAssert(cellInfoDataObject, @"object is nil");
    return cellInfoDataObject.cellIdentifier;
}

- (NSString *)cellIdentifierForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

- (CGSize)sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    ABCellInfoDataObject *dataObject = [self cellInfoDataObjectAtIndexPath:indexPath];
    if (dataObject)
        return dataObject.cellSize;
    return CGSizeZero;
}

- (CGSize)heightForHeaderInSection:(NSUInteger)section {
    return CGSizeZero;
}

- (void)configureSupplementaryElement:(UICollectionReusableView *)view ofKind:(NSString *)kind
                          atIndexPath:(NSIndexPath *)indexPath {

}

- (BOOL)shouldSelectItemAt:(NSIndexPath *)indexPath {
    return NO;
}

- (UIEdgeInsets)insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsZero;
}

@end