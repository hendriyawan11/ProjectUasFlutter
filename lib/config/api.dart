class Api {
  static const _host = 'http://192.168.100.5/api_ecommerce_sparepart';
  static const _hostCart = '$_host / cart';
  static const _hostOrder = '$_host/order';
  static const _hostSparepart = '$_host/sparepart';
  static const _hostUser = '$_host/user';
  static const _hostWishlist = '$_host/whishlist';

// cart
  static const addCart = '$_hostCart/add.php';
  static const deleteCart = '$_hostCart /delete.php';
  static const getCart = '$_hostCart /get.php';
  static const updateCart = '$_hostCart/update.php';

// order
  static const addOrder = '$_hostOrder/add.php';
  static const deleteOrder = '$_hostOrder /delete.php';
  static const getHistory = '$_hostOrder /get_history.php';
  static const getOrder = '$_hostOrder/get_order.php';
  static const setArrived = '$_hostOrder/set_arrived.php';

  // Sparepart
  static const searchSparepart = '$_hostSparepart/search.php';
  static const getAllSparepart = '$_hostSparepart /get_all.php';
  static const getPopularSparepart = '$_hostSparepart /get_popular.php';

  // User
  static const checkEmail = '$_hostUser/check_email.php';
  static const login = '$_hostUser /login.php';
  static const register = '$_hostUser /register.php';

  // whistlist
  static const addWishlist = '$_hostWishlist/add.php';
  static const checkWishlist = '$_hostWishlist /check.php';
  static const deleteWishlist = '$_hostWishlist /register.php';
  static const getWishlist = '$_hostWishlist /get.php';
}
