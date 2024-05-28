import 'package:berrielocal/data/repository/auth_repository.dart';
import 'package:berrielocal/data/repository/shop_repository.dart';
import 'package:berrielocal/data/repository/token_repository.dart';
import 'package:berrielocal/domain/shop/shop_all_info_response.dart';
import 'package:rxdart/rxdart.dart';

class ProfileRepository {
  final TokenRepository repository;
  final AuthRepository authRepository;
  final BehaviorSubject<ShopAllInfoResponse?> profile = BehaviorSubject();

  ProfileRepository(
    this.repository,
    this.authRepository,
  );

  void dispose() {
    repository.removeListener(_listenTokenStatus);
    profile.close();
  }

  void init() {
    repository.addListener(_listenTokenStatus);
  }

  void _listenTokenStatus() {
    if (profile.valueOrNull != null && !repository.auth) {
      profile.add(null);
    } else {
      loadProfile();
    }
  }

  Future<void> logout() async {
    await repository.deleteTokens();
    profile.add(null);
  }

  Future<ShopAllInfoResponse?> loadProfile() async {
    final id = await authRepository.getUserById();
    final result = await authRepository.getShopById(
      id.shopId!,
    );
    profile.add(result);
    return result;
  }
}
