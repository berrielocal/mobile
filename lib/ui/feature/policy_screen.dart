import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PolicyScreenWidget extends StatelessWidget {
  const PolicyScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Политика конфиденциальности',
          style: AppTypography.personalCardTitle,
        ),
        centerTitle: true,
        leading: IconButton(
          padding: EdgeInsets.zero,
          visualDensity: VisualDensity.comfortable,
          onPressed: context.router.pop,
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColor.black,
          ),
        ),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(16),
        child: ListView(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Добро пожаловать в BerrieLocal!',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Политика конфиденциальности',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Мы привержены защите вашей конфиденциальности и обеспечению безопасности вашей персональной информации. Эта политика конфиденциальности объясняет, как мы собираем, используем и разделяем вашу информацию при использовании нашего приложения.',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Информация, которую мы можем собирать',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Мы можем собирать следующие типы информации о вас:',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  '* Базовая информация о пользователе: это включает в себя ваше имя и адрес электронной почты, которые вы предоставляете при создании учетной записи.',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  '* Данные о использовании приложения: мы можем собирать данные о том, как вы используете наше приложение, такие как функции, которые вы используете, и страницы, которые вы посещаете. Эти данные помогают нам улучшить наше приложение и сделать его более актуальным для вас.',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Почему мы собираем это',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Мы собираем вашу информацию в следующих целях:',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  '* Персонализация вашего опыта: мы используем вашу информацию для персонализации вашего опыта с нашим приложением, например, путем рекомендации контента, который, по нашему мнению, может вас заинтересовать.',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  '* Улучшение наших услуг: мы используем вашу информацию для улучшения нашего приложения и делаем его более полезным для вас.',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Защита данных',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Мы серьезно относимся к вашей конфиденциальности и реализовали меры по защите вашей информации от несанкционированного доступа, использования, раскрытия, изменения или уничтожения. Эти меры включают в себя:',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  '* Шифрование: мы шифруем вашу информацию при ее передаче по Интернету.',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  '* Контроль доступа: мы ограничиваем доступ к вашей информации уполномоченным лицам.',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  '* Хранение данных: мы храним вашу информацию столько, сколько это необходимо для предоставления вам наших услуг.',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Обмен информацией с третьими лицами',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Мы не будем делиться вашей информацией с третьими лицами без вашего явного согласия, за исключением следующих ограниченных обстоятельств:',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  '* Для соблюдения закона: мы можем делиться вашей информацией, если этого требует закон или для соблюдения судебного решения.',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  '* Защита наших прав: мы можем делиться вашей информацией, если считаем, что это необходимо для защиты наших прав или собственности.',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Ваши возможности',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                Text(
                  'У вас есть следующие возможности в отношении вашей информации:',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  '* Вы можете получить доступ и обновить свою информацию: вы можете получить доступ и обновить свою информацию, войдя в свою учетную запись и посетив страницу "Профиль".',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  '* Вы можете удалить свою учетную запись: вы можете удалить свою учетную запись, войдя в свою учетную запись и посетив страницу "Профиль".',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Ответственность пользователя',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                Text(
                  '* На пользователе лежит ответственность за выкладываемый материал в приложение Berrielocal. В случае нарушения закона, недобросовестного использования мощностей сервера приложения, за выкладывание ненормативного, пропагандистского, порнографического и иного вида заприщенного контента, учетная запись пользователя подлежит удалению без права обжалования и оповещения об этом пользователя.',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Изменения в данной политике',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Мы можем периодически обновлять эту политику конфиденциальности. Если мы внесем существенные изменения, мы уведомим вас по электронной почте или путем размещения уведомления в нашем приложении.',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Свяжитесь с нами',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Если у вас есть вопросы по данной политике конфиденциальности, пожалуйста, свяжитесь с нами по адресу berrielocal@gmail.com',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Последнее обновление: 30.05.2023 г.',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
