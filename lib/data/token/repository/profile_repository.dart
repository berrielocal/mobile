import 'package:berrielocal/data/token/repository/auth_repository.dart';
import 'package:berrielocal/data/token/repository/token_repository.dart';
import 'package:berrielocal/domain/shop/shop_all_info_response.dart';
import 'package:rxdart/rxdart.dart';

class ProfileRepository {
  final TokenRepository repository;
  final AuthRepository authRepository;
  final BehaviorSubject<ShopAllInfoResponse?> profile = BehaviorSubject();

  ProfileRepository(this.repository, this.authRepository);

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

  Future<void> loadProfile() async {
    // final result = await authRepository.getUser();
    // profile.add(result);
  }
}
