import 'package:learn_flutter_together/00_layout/model/idol.dart';

class IdolDataSource {
  List<Idol> getIdols() {
    return [
      const Idol(
        id: 1,
        imageUrl:
            'https://i.namu.wiki/i/BN1Z3IbM4VoVibKa-QU_sVlmYeBGddpnfQHOlW1InGTFxPLuQqZ397HpsPvgI4ZS-nlvOFGVjOF9z6g3RVn1_A.webp',
        title: '아이유',
        subTitle: '는 아이가 아이에요',
        description: '''대한민국의 싱어송라이터이자 배우.

2008년 9월 18일, 중학교 3학년이던 만 15세의 나이에 가수로 데뷔했다. 예명인 '아이유'는 '너와 내가 음악으로 하나가 된다'라는 뜻을 가지고 있다.[54] 매력적인 음색과 뛰어난 작사ㆍ작곡 능력을 바탕으로 솔로 아이돌이자 아티스트로서 십수 년째 사랑 받고 있을 뿐 아니라[55] 2012년 이래로 매년 국내 및 아시아의 주요 도시에서 대규모 콘서트를 진행하며 공연자로서도 활발히 활동 중이다.[56]

이 외에도 각종 예능 프로그램에 출연했으며,[57] 데뷔 이래 80편이 넘는 광고를 진행했을 정도로 다수의 광고 모델로도 활약 중이다.[58] 2011년에 연기자로 데뷔한 후에는 다양한 드라마와 영화에서 연기 활동도 활발하게 펼치고 있다.[59] 연예계에서는 그야말로 모든 분야에서 올라운더로 인정받는 만능 엔터테이너 로써 남녀불문 수많은 아이돌들의 롤모델로 꾸준히 꼽히고 있으며, 동시에 수많은 대중들의 인기를 한몸에 받고있는 연예인이다.''',
      ),
      const Idol(
        id: 2,
        imageUrl:
            'https://m.segye.com/content/image/2023/01/18/20230118515790.jpg',
        title: '채원',
        subTitle: '르세라핌',
        description: '빰빠빱',
      ),
      const Idol(
        id: 3,
        imageUrl:
            'https://cdn.mhnse.com/news/photo/202211/156009_150445_4429.jpg',
        title: '윈터',
        subTitle: '에스파',
        description: '노래 몰라',
      ),
    ];
  }
}
