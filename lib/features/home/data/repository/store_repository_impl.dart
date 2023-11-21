import 'package:quickcart/features/categories/domain/entities.dart';
import '../../domain/entities/store.dart';
import '../../domain/repository/store_repository.dart';

class StoreRepositoryImpl implements StoreRepository {
  @override
  List<Store> loadAllStores(Categories categories) {
    const List<Store> stores = [
      Store(
        id: '#1',
        storeImage:
            'https://images.squarespace-cdn.com/content/v1/570b9bd42fe131a6e20717c2/1518675367965-8KGBBZAWZYCR5WF57AHW/EasyDay_Retail+Design_Elephant+Design%2C+Pune%2C+Singapore_5.jpg?format=1500w',
        storeAddress: 'Samarpally, Kestopur',
        storeName: 'Easy Day',
        storeRating: 4.8,
        storeType: 'Supermarket',
        categories: [
          Categories.bakery,
          Categories.beverages,
          Categories.cleaners,
          Categories.frozenFoods,
          Categories.snacks,
          Categories.foodGrains,
          Categories.dairy,
          Categories.cannedGoods,
          Categories.vegetables,
          Categories.fruits,
          Categories.personalCare,
        ],
      ),
      Store(
        id: '#2',
        storeImage:
            'https://sp-ao.shortpixel.ai/client/q_lossless,ret_img,w_628/https://baazarkolkata.com/old(12.08.2020)/wp-content/uploads/2018/06/kanla-1.jpg',
        storeAddress: 'College More',
        storeName: 'Baazar Kolkata',
        storeRating: 4.8,
        storeType: 'Supermarket',
        categories: [
          Categories.bakery,
          Categories.beverages,
          Categories.meats,
          Categories.frozenFoods,
          Categories.snacks,
          Categories.dairy,
        ],
      ),
      Store(
        id: '#3',
        storeImage:
        'https://i.pinimg.com/564x/3f/89/f6/3f89f64442362ae09314c4e78d4176c3.jpg',
        storeAddress: 'Dum-Dum',
        storeName: 'Debagnik Vegetables',
        storeRating: 2.1,
        storeType: 'Store',
        categories: [
          Categories.bakery,
          Categories.beverages,
          Categories.cleaners,
          Categories.frozenFoods,
          Categories.snacks,
          Categories.foodGrains,
          Categories.dairy,
          Categories.cannedGoods,
          Categories.vegetables,
          Categories.fruits,
          Categories.personalCare,
        ],
      ),
      Store(
        id: '#4',
        storeImage:
            'https://indian-retailer.s3.ap-south-1.amazonaws.com/s3fs-public/2020-07/kirana.jpg',
        storeAddress: 'Nayapatty, Kolkata',
        storeName: 'Maity Kirana Shop',
        storeRating: 4.5,
        storeType: 'Store',
        categories: [
          Categories.bakery,
          Categories.beverages,
          Categories.cleaners,
          Categories.frozenFoods,
          Categories.snacks,
          Categories.foodGrains,
          Categories.dairy,
          Categories.cannedGoods,
          Categories.vegetables,
          Categories.fruits,
          Categories.personalCare,
        ],
      ),
      Store(
        id: '#5',
        storeImage:
            'https://content.jdmagicbox.com/comp/raipur-chhattisgarh/t8/9999px771.x771.160425130118.f9t8/catalogue/vikram-provison-store-pandri-raipur-chhattisgarh-grocery-stores-apdfvyi.jpg',
        storeAddress: 'Mahisbhatan',
        storeName: 'Vikram Provision Store',
        storeRating: 4.5,
        storeType: 'Store',
        categories: [
          Categories.bakery,
          Categories.beverages,
          Categories.cleaners,
          Categories.frozenFoods,
          Categories.snacks,
          Categories.foodGrains,
          Categories.dairy,
          Categories.cannedGoods,
          Categories.vegetables,
          Categories.fruits,
          Categories.personalCare,
        ],
      ),
      Store(
        id: '#6',
        storeImage:
            'https://content.jdmagicbox.com/comp/bangalore/k6/080pxx80.xx80.170130110436.k7k6/catalogue/krishna-provision-store-kalkere-bangalore-provision-stores-3gfc0bb.jpg',
        storeAddress: 'Karunamayee',
        storeName: 'Das Essential Store',
        storeRating: 1.5,
        storeType: 'Store',
        categories: [
          Categories.bakery,
          Categories.beverages,
          Categories.cleaners,
          Categories.frozenFoods,
          Categories.snacks,
          Categories.foodGrains,
          Categories.dairy,
          Categories.cannedGoods,
          Categories.vegetables,
          Categories.fruits,
          Categories.personalCare,
        ],
      ),
      Store(
        id: '#7',
        storeImage:
            'https://static.wikia.nocookie.net/taarakmehta/images/6/6a/B7392B26-E97E-4E19-A833-26D487AD4560.jpeg/revision/latest?cb=20200624190915',
        storeAddress: 'GD, Sector 3',
        storeName: 'Mondal Store',
        storeRating: 2.0,
        storeType: 'Store',
        categories: [
          Categories.bakery,
          Categories.beverages,
          Categories.cleaners,
          Categories.frozenFoods,
          Categories.snacks,
          Categories.foodGrains,
          Categories.dairy,
          Categories.cannedGoods,
          Categories.vegetables,
          Categories.fruits,
          Categories.personalCare,
        ],
      ),
      Store(
        id: '#8',
        storeImage:
            'https://content.jdmagicbox.com/comp/rewa/c2/9999p7662.7662.161021155321.c3c2/catalogue/yash-kirana-and-general-store-nh-7-satna-road-rewa-general-kirana-provision-stores-ehvgxyy.jpg',
        storeAddress: 'SDF',
        storeName: 'Yash General Store',
        storeRating: 4.0,
        storeType: 'Store',
        categories: [
          Categories.bakery,
          Categories.beverages,
          Categories.cleaners,
          Categories.frozenFoods,
          Categories.snacks,
          Categories.foodGrains,
          Categories.dairy,
          Categories.cannedGoods,
          Categories.vegetables,
          Categories.fruits,
          Categories.personalCare,
        ],
      ),
    ];
    if (categories == Categories.all) {
      return stores;
    } else {
      return stores
          .where((store) => store.categories.contains(categories))
          .toList();
    }
  }
}
