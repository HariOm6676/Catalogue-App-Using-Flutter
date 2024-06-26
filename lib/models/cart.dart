import 'package:test_app/core/store.dart';
import 'package:test_app/models/catalogue.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel{
  // static final cartModel=CartModel._internal();
  // CartModel._internal();
  // factory CartModel()=>cartModel;
  late CatalogModel _catalog;
  final List<int> _itemIds=[];
  CatalogModel get catalog=> _catalog;
  set catalog(CatalogModel newcatalog){
_catalog=newcatalog;
  }
  List<Item> get item => _itemIds.map((id)=> _catalog.getById(id)).toList();
  num get totalPrice => item.fold(0, (previousValue, element) => previousValue+element.price);
 
}
class AddMutations extends VxMutation<MyStore>{
  final Item item;

  AddMutations(this.item);

  @override
  perform() {
    // TODO: implement perform
   store?.cart._itemIds.add(item.id);
  }

}
class RemoveMutations extends VxMutation<MyStore>{
  final Item item;

  RemoveMutations(this.item);

  @override
  perform() {
    // TODO: implement perform
   store?.cart._itemIds.remove(item.id);
  }

}