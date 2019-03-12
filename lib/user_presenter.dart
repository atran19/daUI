import 'storeusers.dart';


abstract class UserListViewContract {
  void setPresenter(UserListPresenter presenter);
  void onLoadRecipesComplete(List<User> user);
  void onLoadRecipesError();
}

abstract class UserListPresenterContract {
  void loadUsers();
}

class UserListPresenter implements UserListPresenterContract {

  UserListViewContract _view;
  UserRepository _repository;

  UserListPresenter(this._view) {
  //  _repository = new Injector().recipeRepository;
    _view.setPresenter(this);
  }

  @override
  void loadUsers() {
    assert(_view != null); // Check that view is not null

    _repository.fetch()
        .then((recipes) => _view.onLoadRecipesComplete(recipes))
        .catchError((onError) {
      print(onError);
      _view.onLoadRecipesError();
    });
  }

}