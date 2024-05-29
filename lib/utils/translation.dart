extension StringTranslation on String {
  String translateEnRu() {
    switch (this) {
      case 'FISH':
        return 'Рыба';
      case 'MEAT':
        return 'Мясо';
      case 'VEGETABLES':
        return 'Овощи';
      case 'FRUITS':
        return 'Фрукты';
      case 'NUTS':
        return 'Орехи';
      case 'MUSHROOMS':
        return 'Грибы';
      case 'EXOTIC':
        return 'Экзотика';
      default:
        return 'Категория';
    }
  }

  String translateRuEn() {
    switch (this) {
      case 'Рыба':
        return 'FISH';
      case 'Мясо':
        return 'MEAT';
      case 'Овощи':
        return 'VEGETABLES';
      case 'Фрукты':
        return 'FRUITS';
      case 'Орехи':
        return 'NUTS';
      case 'Грибы':
        return 'MUSHROOMS';
      case 'Экзотика':
        return 'EXOTIC';
      default:
        return 'CATEGORY';
    }
  }
}
