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
      case 'Рыба' || 'рыба':
        return 'FISH';
      case 'Мясо' || 'мясо':
        return 'MEAT';
      case 'Овощи' || 'овощи':
        return 'VEGETABLES';
      case 'Фрукты' || 'фрукты':
        return 'FRUITS';
      case 'Орехи' || 'орехи':
        return 'NUTS';
      case 'Грибы' || 'грибы':
        return 'MUSHROOMS';
      case 'Экзотика' || 'экзотика':
        return 'EXOTIC';
      default:
        return '';
    }
  }
}
