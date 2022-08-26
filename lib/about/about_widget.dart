import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({Key key}) : super(key: key);

  @override
  _AboutWidgetState createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'about'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            logFirebaseEvent('ABOUT_PAGE_Icon_3o6utqlb_ON_TAP');
            logFirebaseEvent('Icon_Navigate-Back');
            context.pop();
          },
          child: Icon(
            Icons.chevron_left,
            color: Colors.white,
            size: 24,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 16, 0, 0),
                  child: Text(
                    'О приложении',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'Первая спортивная социальная сеть для всех кто хочет найти для себя партнера по любому виду спорта\n\nИнновационное мобильное приложение (ios,android)\n\nРаботаем по принципу найди партнера по спорту\n\nПринцип пользования:\n\n- пользователь формирует матч либо тренировку по определенному виду спорта \n- либо пользователь сам находит удобный для него по времени и места открытый матч и присоединяется к игре \n- платформа отправляет запрос с подтверждением на выбранную  спортивную локацию (спортзалы, корты, футбольные поля и т.д.)\n- спортивная локация подтверждает наличие свободного времени \n- созданный матч либо тренировка отображается для всех пользователей в ленте \n- второй пользователь подтверждает участие в матче либо тренировке\n\nпочему мы?\n- выводим ваш бизнес на новый формат бронирования спортивных локаций\n- увеличиваем продажи\n- предоставляем платформу для тренеров \n- новая площадка для проведения различного рода турниров \n- повышаем узнаваемость спортивной локации \n- уникальное привлечение новых клиентов\n- каждый пользователь имеет свой личный профиль, что для партнера дает дополнительный способ распространения собственной рекламы \n\n\nудобное мобильное приложение для партнеров\n\n- быстрое принятие заказов и броней\n- обратная связь с клиентом через чат либо моб телефон\n- выставление объявлений о свободном времени \n\n\nиндивидуальная поддержка вашего бизнеса\n\n- закрепленный акаунт менеджера\n- круглосуточная служба поддержки \n\n\nвам всегда поможет наша команда \n\n- обучение персонала по использованию админки \n- контроль роста заказов \n\nпочему пользователи выбирают нас?\n\n- первое и единственное в своем роде мобильное приложение для поиска партнеров для занятия спортом\n- удобное и простое в использовании \n- большой выбор спортивных локаций\n- большой выбор спортивных магазинов \n- активное социальное общение, заведение новых друзей\n- отсутствие других методов и способов по поиску партнера по спортивным играм\n\n\n\nудобное приложение для пользователей \n\n- выбираете спортивную локацию\n- устанавливаете дату и время \n- создаете матч либо тренировку\n- и ожидайте ответа вашего будущего партнера \n\n\nусловия партнерства \n\nРегистрация и первичное размещение на платформе – бесплатное, начиная со 2 го месяца действует ежемесячная абонентская плата за пользование услугами платформы 2PLAY \n\nПри оплате абонентской платы за 3 месяца и более получайте скидку.\n\nЕжемесячно 10 000\nЕжеквартально 27 000\nПолугодие 54 000\nГод 102 000\n\n\n\nЧто необходимо для заключения партнерства?\n- свидетельство ИП/справка о гос.регистрации юр.лица\n- удостоверение личности руководителя \n- доверенность на право первой подписи ( в случае, если договор подписывает доверенное лицо)\n- реквизиты \n- контактные данные руководителя, бухгалтера \n\n\nПопробуйте наш сервис в деле и вы не пожалеете!\n\nСвяжитесь с нами для получения более подробной информации !\n\n',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
