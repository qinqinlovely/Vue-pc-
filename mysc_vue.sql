CREATE DATABASE IF NOT EXISTS mysc DEFAULT CHARACTER SET 'utf8';

USE mysc_vue;


-- ----------------------------
-- Table structure for `mysc_indexcarou`
-- ----------------------------
DROP TABLE IF EXISTS `mysc_indexcarou`;
CREATE TABLE `mysc_indexcarou` (
  `cid` int(11) NOT NULL auto_increment,
  `img` varchar(128) default NULL,
  `title` varchar(64) default NULL,
  `href` varchar(128) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mysc_indexcarou
-- ----------------------------
INSERT INTO `mysc_indexcarou` VALUES ('1', 'banner1.jpg', '轮播广告商品1', NULL);
INSERT INTO `mysc_indexcarou` VALUES ('2', 'banner2.jpg', '轮播广告商品2', NULL);
INSERT INTO `mysc_indexcarou` VALUES ('3', 'banner3.jpg', '轮播广告商品3', NULL);
INSERT INTO `mysc_indexcarou` VALUES ('4', 'banner4.jpg', '轮播广告商品4', NULL);
INSERT INTO `mysc_indexcarou` VALUES ('5', 'banner5.jpg', '轮播广告商品5', NULL);
INSERT INTO `mysc_indexcarou` VALUES ('6', 'banner6.jpg', '轮播广告商品6', NULL);




-- ----------------------------
-- Table structure for `mysc_detail`
-- ----------------------------
DROP TABLE IF EXISTS `mysc_detail`;
CREATE TABLE `mysc_detail` (
  `id` int(11) NOT NULL auto_increment,
  `family_id` int(11) NOT NULL,
  `title` varchar(64) default NULL,
  `pic_lg` varchar(128) default NULL,
  `pic_sm` varchar(128) default NULL,
  `now_price` decimal(10,2) default NULL,
  `was_price` decimal(10,2) default NULL,
  `price` numeric(18,2) default NULL,
  `count` decimal(10,2) default NULL,
  `intro` varchar(256) default NULL,
  `brand` varchar(64) default NULL,
  `brand_name` varchar(64) default NULL,
  `spec` varchar(32) default NULL,
  `category` varchar(64) default NULL,
  `shiyong` varchar(64) default NULL,
  `xiangdiao` varchar(64) default NULL,
  `qian` varchar(64) default NULL,
  `zhong` varchar(64) default NULL,
  `hou` varchar(64) default NULL,
  `features1` varchar(128) default NULL,
  `features2` varchar(128) default NULL,
  `features3` varchar(128) default NULL,
  `brand_history` varchar(256) default NULL,
  `detail-img1` varchar(128) default NULL,
  `detail-img2` varchar(128) default NULL,
  `detail-img3` varchar(128) default NULL,
  `detail-img4` varchar(128) default NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mysc_detail
-- ----------------------------
INSERT INTO `mysc_detail` VALUES ('1', '1', 'Jovan 祖梵 白麝香女士古龙水 Cologne 96ml','jovan-lg.jpg','jovan-sm.jpg','11.19', '21.00', '76.23', '5.3', 'Jovan 祖梵 白麝香女士古龙水，于1990年推出，这款性感的香水结合了茉莉花的芳香和浓郁的忍冬花，当你想要在聚光灯下展现你成熟的气场时，可展现你的女性魅力。前调的依兰依兰的味道透露出你热情的一面。丰富而朴实的琥珀香调让你的感官感到愉悦，而温暖的木质调散发温柔气息。', 'Jovan 祖梵', '女性古龙水', '96ml', 'Cologne\古龙水', '适合所有女士使用。', '花香调', '茉莉，依兰。', '忍冬，琥珀。', '木质香，麝香。', '携带使用简单、快捷，香氛宜人，轻松应付各种社交场合。', '麝香香味很自然融入你的身体，和你的身体产生化学变化，引出属于你个人的性感因子，异国辛辣香调于木质香调融合入性感的麝香后，造就了魅力十足的女人味。',' ','Jovan祖梵香水是COTY集团旗下品牌香水，COTY集团是全球美容业的领导者及全球最大的香水制造公司。这个拥有35年历史的香水在美国通俗品牌市场颇受好评，亲民的价格与舒爽的气息更是受到美国一般消费族群所喜爱，独特的香气更是许多香水入门者的选择。1972年，Jovan祖梵香水公司推出了旗下第一款以麝香为香调的香水，自此，这款香水在全球足足风靡了十年。到了20世纪以后，关于麝香香调已成为香水的“常调”，可见麝香的非凡魔力。Jovan祖梵香水公司在时隔29年后，又推出了全新的两款以麝香香调为主打的香氛——Black Musk for Women黑麝香女性香水和Black Musk for Men黑麝香男性香水。','','','','','');
INSERT INTO `mysc_detail` VALUES ('2', '1', 'GUERLAIN 娇兰 花草水语系列 依兰百香果 女士淡香水 EDT 125ml','jiaolan-lg.jpg','jiaolan-sm.jpg','48.99', '90.00', '333.72', '5.4', 'Guerlain 娇兰 花草水语系列百香果淡香水,在清新的早晨醒来,享受一下满载着阳光气息的百香果和依兰花甜美交织的花草水语淡香水（依兰百香果）,再跃入清澈湛蓝的湖中畅游。感受微风中水波温柔拍岸的清香活力,改善自我,一切都显得活力而清新。', 'Guerlain 娇兰', '女士香水', '125ml', 'EDT\淡香水', '适合所有女士使用。', '花香果香调', '香柠檬 柠檬 葡萄柚 橘子 醛。', '橙花 依兰 百香果 水 绿叶。', '麝香。', '携带使用简单、快捷，香氛宜人，轻松应付各种社交场合。', '纯粹配方带来不可思议的热烈和清新感, 介于简介和繁复之间。', '经检验,无添加任何人工色素、矿物油、防腐剂。','娇兰（Guerlain）成立于1828年，主营香水、化妆品及保养品。是酩悦·轩尼诗－路易·威登集团（Mo?t Hennessy - Louis Vuitton， LVMH Group）旗下的产品。娇兰品牌享有盛誉的国际品牌，自创办以来，推出的娇兰香水品种超过300多种。这个香氛王国一抹最骄艳的骄子，一百多年来，娇兰以她那特有的贵族气质与幽雅浪漫的品质保障，奠定了它在法国及世界上的品牌地位。2018年12月，世界品牌实验室发布《2018世界品牌500强》榜单，娇兰排名第411。','','','','','');
INSERT INTO `mysc_detail` VALUES ('3', '1', 'ACQUA DI PARMA 帕尔玛之水 蓝色地中海 柑橘汽水淡香水 EDT 75ml','paerma-lg.jpg','paerma-sm.jpg','50.39', '165.00', '343.26', '3.1', '', '', '', '', '', '', '', '', '', '', '', '', '','','p01.jpg','p02.jpg','p03.jpg','p04.jpg','');
INSERT INTO `mysc_detail` VALUES ('4', '1', 'BVLGARI 宝格丽 碧玺（晶欣）女士淡香水 EDT 40ml','baogeli-lg.jpg','baogeli-sm.jpg','23.79', '67.00', '162.06', '3.6', 'BVLGARI 宝格丽 碧玺（晶欣）女士淡香水，这款香水是2015年推出的，它让人想起漫长的夏日时光。香味伴随着一阵苦涩的橙子和百香果的香味。主调是诱人的西番莲和栀子花。诱人的尾调是香根草和可可豆荚创造一种香气，是强烈诱人的。', 'Bvlgari 宝格丽', '女士香水', '40ml', 'EDT\淡香水', '适合所有女士使用。', '花香果香调', '百香果，苦橙。', '西番莲，栀子花。', '香根草，可可果。', '以宝石为灵感，香水瓶外型犹如一颗昂贵的蓝绿宝石，极具珍藏价值。', '携带使用简单、快捷，香氛宜人，轻松应付各种社交场合。','经检验，无添加任何人工色素、矿物油、防腐剂。', 'BVLGARI(宝格丽)创立于 1884 年，总部设在意大利首都罗马。100 多年来，它创造了无数名闻遐迩的顶级珠宝，并以卓越的品质、新颖的造型和优质的服务著称，时至今日已成为全球知名的奢侈品品牌。BVLGARI(宝格丽)的创新设计充分体现在珠宝、腕表、配饰、香水、护肤品、酒店和度假村中。宝格丽大胆独特、尊贵古典。均衡也融合了古典与现代特色，突破传统学院派设计的严谨规条，以希腊式的典雅、意大利的文艺复兴及19世纪的冶金技术为灵感，创作出宝格丽的独特风格。','','','','','');
INSERT INTO `mysc_detail` VALUES ('5', '1', 'Narciso Rodriguez 纳茜素/纳西素罗德里格斯 诱人花卉女士香水 EDP 30ml','naxisu-lg.jpg','naxisu-sm.jpg','38.49', '97.00', '262.20', '4.0', 'Narciso Rodriguez 纳西索罗德里格斯 诱人花卉女士香水灵感来自独立自主且优雅抚媚的时代女性，细腻捕捉了不同女性的自由精神与抚媚姿态，以活泼鲜明的香氛风格纵情演绎女性与生俱来的性感气质，赋予诱人花卉女士香水全新的魅惑体验。粉色瓶身给人一种热情、妖冶的感觉。其个性独特而令人着迷，光芒四射、诱人百变，诠释当代女性自信性感本色。', 'arciso Rodriguez 纳西索罗德里格斯', '诱人花卉女士香水', '30ml', 'EDP/香水', '适合男士使用。', '木质花香调', '粉红胡椒。', '玫瑰、牡丹、麝香。', '广藿香、琥珀、紫罗兰。','粉色瓶身给人一种热情、妖冶的感觉。其个性独特而令人着迷，光芒四射、诱人百变，诠释当代女性自信性感本色。','携带使用简单、快捷，香氛宜人，轻松应付各种社交场合。', '经检验，无添加任何人工色素、矿物油、防腐剂。', '1961年拥有古巴血统的纳西索·罗德里格斯（Narciso Rodriguez）出生在美国新泽西州。1982年毕业于纽约市帕森斯设计学院，1997年成立了自己的工作室，被公认为极简主义的真正大师。他居住在纽约，在他看来这个城市充满着节奏感和生命力，具有冒险精神，是一个永恒的灵感来源。同时，作为一个男性设计师，他很懂得从生命中的女性身上汲取灵感，比女人更了解如何极致地展现女性魅力。2003年他将对现代女性永恒之美的追求注入到香水中并借香水传达出女性的柔美与独立、智慧与性感。','','','','','');
INSERT INTO `mysc_detail` VALUES ('6', '1', 'franck olivier 弗兰克奥利弗  白色触摸  女士淡香精香水 EDP 100ml','frank-lg.jpg','frank-sm.jpg','22.39', '45.00', '152.52', '5.0', 'franck olivier 弗兰克奥利弗白色触摸 女士香水，这是一款花香调香水，是在2009年推出的，它与franck olivier 弗兰克奥利弗蓝色触摸男士淡香水是一套情侣香水。独特的花香调让人心旷神怡，身心愉悦。', 'franck olivier 弗兰克奥利弗', '女士香水', '100ml', 'EDP\淡香水', '适合所有女士使用。', '花香调', '睡莲，黑加仑，香瓜，梨。', '茉莉，艾蒿，小苍兰，玫瑰，紫罗兰。', '麝香，檀香木。','该款香水为花香调，瓶身为白色设计，独特优雅。','携带使用简单、快捷，香氛宜人，轻松应付各种社交场合。', '', '品精致的法国FRANCK OLIVIER，是由Jennifer Lopez詹妮弗·洛佩兹的自创品牌。Franck Olivier的理念，情侣如此亲密，尝尽肌肤之亲，如果连香氛亦能一致，味觉的触感渗至内心，激起人的原始本能，就像一段关系再次升华。','','','','','');
INSERT INTO `mysc_detail` VALUES ('7', '2', 'Alfred Dunhill 登喜路  风俗  男士淡香水  EDT  100ml','dunhill-lg.jpg','dunhill-sm.jpg','21.69', '89.00', '147.75', '2.4', '只需喷一点定制的淡香水，就可以定义优雅和精致。这款由阿尔弗雷德登喜路设计公司设计的香水为你的一天注入了香料和木香，特别为优雅的男人设计。红苹果甜甜的开口超越了辣椒复杂的核心，在弗吉尼亚雪松和熏香的作用下，让你的感官处于亢进状态。这款香水于2011年推出，是日常佩戴的理想选择。', 'Alfred Dunhill 登喜路', '男香', '100ml', 'EDT\淡香水', '适合所有男士使用。', '辛辣木质调', '红苹果 ', '胡椒 ', '雪松 焚香','专为男人设计，展现男人的优雅与精致。','携带使用简单、快捷，香氛宜人，轻松应付各种社交场合。','', '全球知名时尚男装品牌Dunhill在2006年初夏推出新款男性香水Dunhill PURE 纯净能量男香 ，以水漾木质辛香调为主轴，银色外盒搭配天蓝色的瓶身，针对兼具传统与现代感双面向的男人及领导者所设计，展现都会男子有如蓝天般的宽广胸襟!Dunhill PURE 纯净能量男香呈现都会男子散发着愉悦的节奏，顷刻间找回自己的能量！Dunhill全新PURE 纯净能量男香特选清透的莲花叶、白胡椒、小豆蔻为前调，水鸢尾与广藿香为中调，并有着白雪松、麝香、琥珀为基调，清新而爽朗的香氛，壮阔而动感，让男人漾着真我的风采。','','','','','');
INSERT INTO `mysc_detail` VALUES ('8', '2', 'Sisley 希思黎 缘月女士香水 EDP 100ml','sisley-lg.jpg','sisley-sm.jpg','118.99', '278.00', '810.57', '4.5', 'Sisley 希思黎 缘月女士香水，感性，浓郁，温暖。一款独特香氛，其灵感源自亲密的艺术世界。本品是为爱表白的夜晚。独特芬芳流露出强烈个性，辛香和顺滑暖意令人联想起微带果香的花束。', 'Sisley 希思黎', '女士香水', '100ml', 'EDP\淡香精香水', '适合所有女士使用。', '花香甘苔调', '肉豆蔻，芫荽，橘子，胡椒，香柠檬，柠檬。 ', '含羞草，鸢尾花，玫瑰，桃子，茉莉，铃兰。 ', '广藿香，蜂蜜，檀香木，麝香，橡木苔。','携带使用简单、快捷，香氛宜人，轻松应付各种社交场合。','香调的精致、现代、浪漫。','','1976年，多纳诺伯爵夫妇创立了植物美容品牌Sisley希思黎，以“不计时间，不计成本”的研发理念，结合尖端保养科技与研发室强大的创新力， 成就了一款款“安全、有效、愉悦”的植萃奢护美容臻品，赢得全球无数明星、名媛的青睐与追捧。如今，希思黎全能乳液、希思黎全日呵护精华乳、希思黎抗皱修活焕颜面霜竞相成为中国消费者追捧的每日必备护肤经典。','','','','','');
INSERT INTO `mysc_detail` VALUES ('9', '2', 'Narciso Rodriguez 纳茜素/纳西素 粉麝香女士香水 EDP 90ml','narciso-lg.jpg','narciso-sm.jpg','68.59', '114.00', '467.24', '6.0', 'Narciso Rodriguez 纳西索 粉麝香女士香水，这种诱人的香味是每个女人都喜欢的。柔软的茉莉花，保加利亚玫瑰和橙花在前调创造了温柔花香。麝香主导着中调，留下了一个神秘的气息，尾调的木质元素来自雪松，香根草，香豆素和广藿香给香味，给予你难以想象的诱惑。', 'Narciso Rodriguez 纳西索', '女士香水', '90ml', 'EDP\淡香精香水', '适合所有女士使用。', '木质花香调', '玫瑰，茉莉，橙花。 ', '麝香。', '香根草，雪松，香豆素，广藿香。','携带使用简单、快捷，香氛宜人，轻松应付各种社交场合。','嫩粉色玻璃瓶身，展现女士温柔甜美气质。','','纳西索·罗德里格斯 (Narciso Rodriguez) 也是古巴血统美国设计师纳西索·罗德里格斯 (Narciso Rodriguez) 的同名高级女装品牌。纳西索·罗德里格斯 (Narciso Rodriguez) 为小肯尼迪的妻子卡洛琳·B·肯尼迪 (Carolyn Bessette Kennedy) 设计的婚纱，有如划破天空的流星一般，吸引所有媒体的视线并一举成名。1998年春夏，纳西索·罗德里格斯 (Narciso Rodriguez) 首度发表他个人品牌服装系列，实力倍受肯定，随即获得VH1设计师协会的 Perry Ellis Award 奖项，让以精良皮件闻名的西班牙品牌罗威 (Loewe)，盛情邀请纳西索·罗德里格斯 (Narciso Rodriguez) 担任全新女装系列之创意总监。','','','','','');
INSERT INTO `mysc_detail` VALUES ('10', '2', 'BVLGARI 宝格丽 华美鸢尾（明彩馨香）女士香水 EDP 100ml','bvlgari-lg.jpg','bvlgari-sm.jpg','69.99', '148.00', '476.78', '4.7', 'BVLGARI 宝格丽 华美鸢尾（明彩馨香）女士香水，是一款发布于2017年的女士香水。前调由绿叶,香柠檬开启,清新气息扑面而来,转而进入鸢尾花,含羞草的主调,带来迷人混合花香,最后以檀香木,零陵香豆,鸢尾根,香根草,紫罗兰叶收尾,在肌肤上留下怡人馨香。每天早上喷洒它，享受一个令人振奋的时刻，陶醉在它的极致女人气息。', 'BVLGARI 宝格丽', '女士香水', '100ml', 'EDP\香水', '适合所有女士使用。', '花香调', '绿叶,香柠檬。 ', '鸢尾花,含羞草。', '檀香木,零陵香豆,鸢尾根,香根草,紫罗兰叶。','携带使用简单、快捷，香氛宜人，轻松应付各种社交场合。','经检验，无添加任何人工色素、矿物油、防腐剂。','','BVLGARI(宝格丽)创立于 1884 年，总部设在意大利首都罗马。100 多年来，它创造了无数名闻遐迩的顶级珠宝，并以卓越的品质、新颖的造型和优质的服务著称，时至今日已成为全球知名的奢侈品品牌。BVLGARI(宝格丽)的创新设计充分体现在珠宝、腕表、配饰、香水、护肤品、酒店和度假村中。宝格丽大胆独特、尊贵古典。均衡也融合了古典与现代特色，突破传统学院派设计的严谨规条，以希腊式的典雅、意大利的文艺复兴及19世纪的冶金技术为灵感，创作出宝格丽的独特风格。','','','','','');
INSERT INTO `mysc_detail` VALUES ('11', '2', 'ST DUPONT 都彭 同名男士极致版 男士淡香水 EDT 50ml','dupont-lg.jpg','dupont-sm.jpg','18.19', '60.00', '123.91', '3.0', 'ST DUPONT 都彭 同名男士极致版 男士淡香水 EDT 50ml
ST DUPONT INTENSE是一组男女对香，这对香水象征着夜晚的优雅和无限的感性，能够带来夜生活的气息。', 'ST DUPONT 都彭', '男士香水', '50ml', 'EDT淡香水', '适合所有男士使用。', '木质东方调', '薰衣草 香柠檬 柠檬 ', '橙花 藏红花', '麝香 雪松 琥珀 安息香 零陵香豆 皮革','携带使用简单、快捷，香氛宜人，轻松应付各种社交场合。','温暖辛辣。','','都彭 (S.T.Dupont) 品牌由创始人Simon Tissot-Dupont建立于1872年。都彭 (S.T.Dupont) 最初主要生产高级旅行箱及配件，二战期间都彭 (S.T.Dupont) 将产品方向转向打火机，都彭 (S.T.Dupont) 打火机标志性的声响清脆悦耳，别具一格，很快就成为法国上流社会的尊贵化身。1981年，都彭 (S.T.Dupont) 又设计了一系列男士长方形腕表。1982年，都彭 (S.T.Dupont) 确定多元化发展方针，开始生产男士随身皮具配件，如钱包、记事册、地址簿等。1987年都彭 (S.T.Dupont) 推出高级男士成衣，并以优良的品质和高雅的设计风格享誉业界。经过100多年的打造，都彭 (S.T.Dupont) 已经以其隽逸、简约、时尚的形象，成为法国一个响亮的高端奢华品牌。','','','','','');
INSERT INTO `mysc_detail` VALUES ('12', '2', ' BURBERRY 博柏利 英伦风格女士淡香水 EDT 50ml 新包装','burberry-lg.jpg','burberry-sm.jpg','25.89', '99.00', '176.37', '2.6', 'BURBERRY 博柏利 风格女士淡香水，甜蜜和清新的色调的组合，这款香水制作于2004年，以清新的青杏仁、柠檬草、梨子和酸橙香气为前调。融合了杏仁、糖和牡丹的芳香，散发出甜美的异国风情，令人愉悦。舒适的香草，桃花心木，和芳香的琥珀融合在芳香的基础上，形成一种柔软的，诱人的香味。', 'BURBERRY 博柏利', '女士香水', '50ml', 'EDT/淡香水', '适合所有女士使用。', '花香果香调', '青柠，杏仁，梨。 ', '牡丹，糖，杏仁。', '桃花心木，琥珀，零陵香豆，香草。','呈现出纯正的大英伦敦风，方正的外型搭配经典格纹，优雅又抢眼。','携带使用简单、快捷，香氛宜人，轻松应付各种社交场合。','','Burberry（博柏利）拥有156年的历史，是具有浓厚英伦风情的著名品牌，长久以来成为奢华、品质、创新以及永恒经典的代名词，旗下的风衣作为品牌标识享誉全球。在Burberry（博柏利）首席创意总监克里斯托弗·贝利（Christopher Bailey）的创意理念领导下，该品牌不断与时俱进。在充满现代感和崇尚真我表达的同时，又承袭了最初的价值理念和1856年创立至今的品牌传统。博柏利的风衣和香水在世界有很高的知名度。博柏利带有一股英国传统的设计风格，以经典的格子图案、独特的布料、大方优雅为主。除传统服装外，博柏利也将设计触角延伸至其它领域，并将经典元素注入其中，推出香水、皮草、头巾、针织衫及鞋等相关商品。','','','','','');
-- --面板切换
-- 平价香水
INSERT INTO `mysc_detail` VALUES ('13', '3', ' Chopard 萧邦 愿望之光蓝钻女士香水 EDP 75ml','xiaobang-lg.jpg','xiaobang-sm.jpg','22.39', '69.00', '152.52', '3.2', 'Chopard 萧邦 愿望之光蓝钻女士香水（EDP） 运用了特殊的原料来丰富主题，随着透明纯净的克里门汀草、香味扑鼻的柚子，及苦中带甜的醋栗，传递出新鲜花香的最初诱惑。接续而来的野百合、娇嫩的樱草花，在辛辣味的粉红胡椒和香甜多汁的梨子突显下，更添清新芬芳，春意盎然。 后味鲜丽的薄荷花使得木质温润气息更加浓郁，而融入细腻滑润的香草使感觉更为愉悦畅快，就像流星画过午夜的天空，Wish香水留下耀眼的光芒。', 'Chopard 萧邦', '愿望之光蓝钻女士香水', '75ml', 'EDP/香水', '适合所有女士使用。', '东方美食调', '忍冬、草莓、洋槐、橙花、椰子、醋栗 、巴西红木、梨、黑加仑、樱草。 ', '蜂蜜、紫罗兰、兰花、牛奶、天芥菜、铃兰、茉莉、木兰、桂花。', '檀香木、琥珀、广藿香、香草、焦糖、焚香、零陵香豆、太妃糖。','浅蓝色的香氛在透明的玻璃瓶中，外盒则是恍如夜空般的深蓝，让Wish显得更为晶莹剔透。','携带使用简单、快捷，香氛宜人，轻松应付各种社交场合。','经检验，无添加任何人工色素、矿物油、防腐剂。','1860年，路易于利斯·萧邦在瑞士汝拉山松维裹埃小乡村创立了萧邦，萧邦专业生产怀表和精密时计。萧邦的钟表制作工艺超卓，在金质的怀表中享有杰出的声望。','','','','','1');
INSERT INTO `mysc_detail` VALUES ('14', '3', '【许凯/郑容和同款】HERMES 爱马仕 大地男士淡香水 EDT 12.5ml','aimashi-lg.jpg','aimashi-sm.jpg','14.69', '35.00', '100.07', '4.2', 'Hermes 爱马仕 大地男士淡香水，这款香水于2006年在巴黎的爱马仕(Hermes)推出，以活泼的橙子和葡萄柚香味开场，然后转向浓烈的胡椒味和天竺葵的柠檬芳香。这款淡香水的结尾以雪松为特色，为自然的芳香交响乐增添了一种柔和的木质香气。男人们在每个季节都在寻找一种可以使用的香水。', 'Hermes 爱马仕', '男性淡香水', '12.5ml', 'EDT\淡香水', '适合所有男士使用。', '辛辣木质调', ' 橙子,葡萄柚。 ', '胡椒,天竺葵。', '广藿香,雪松,香根草,安息香脂。','携带使用简单、快捷，香氛宜人，轻松应付各种社交场合。','','','爱马仕（Hermès）是世界著名的奢侈品品牌，1837年由Thierry Hermès创立于法国巴黎，早年以制造高级马具起家，迄今已有180多年的悠久历史。总店位于法国巴黎，分店遍布世界各地。截至2014年，爱马仕旗下共有十七种产品系列：皮具、丝巾、领带、男女时装、香水、腕表、文仪精品、鞋类、配饰、马具用品、家居生活系列、餐具及珠宝首饰。','','','','','1');
-- 高颜值
INSERT INTO `mysc_detail` VALUES ('15', '4', 'TOM FORD 汤姆福特 白日之水 女士淡香水 EDT 100ml','tf-lg.jpg','tf-sm.jpg','143.49', '180.00', '977.47', '8.0', 'TOM FORD 汤姆福特 白日之水香水，初闻能够感受到粉红胡椒带来的微弱粉质，柔和温暖。接下来迟到的就是颗坚果冰淇淋，像是在太阳下晒化了的开心果冰淇淋。紧接着这可化了的开心果冰淇淋以奶味作为牵引平滑过渡到了香醇的椰奶味，且越来越浓，仿佛打翻了一大车的椰浆。随即白花寻味而来，馥郁的晚香玉和娇俏的茉莉仿佛也醉在这一池椰奶中，忘乎所以地释放着乳白色的花香。', 'TOM FORD 汤姆福特', '女士香水', '100ml',' ','所有人群', '', ' 苦橙，香柠檬，苦橙叶，葛缕子，粉红胡椒，开心果，小豆蔻，香橼，橙花油。 ', '橙花，茉莉，晚香玉，依兰，白松香。', '椰子，琥珀，香草，零陵香豆，安息香脂。','','','','','','','','','2');
INSERT INTO `mysc_detail` VALUES ('16', '4', 'CHLOE 蔻依 爱情故事感性版女士香水 EDP 50ml','kouyi-lg.jpg','kouyi-sm.jpg','45.49', '105.00', '309.88', '4.3', ' CHLOE 蔻依 爱情故事感性版女士香水 EDP，「挂锁」如同是见证他们爱情的象征,他试着抓住属于她身上的香味,但枉然失落地依然留在那。纯金包覆的瓶口及透明的瓶盖,宛如戴上昂贵的珠宝皇冠;柔和的金色香氛透过玻璃瓶折射放大了精致的折摆设计随兴地将丝滑缎带系在挂锁的侧边,展现出女人若无其事的优雅韵味。', ' CHLOE 蔻依', '', '50ml', '', '适合所有女士使用。', '花调', '柠檬、日本柚子、梨、橙花', '西番莲、天芥菜', '雪松、琥珀、麝香、檀香木','橙花油的动人气息，让你自由典雅。','携带使用简单、快捷，香氛宜人，轻松应付各种社交场合。','','','','','','','2');
-- 面部护理
INSERT INTO `mysc_detail` VALUES ('17', '5', 'CLARINS 娇韵诗 黄金双萃赋活修护精华露 30ml','jiaoyunshi-lg.jpg','jiaoyunshi-sm.jpg','57.39', '89.00', '390.95', '6.4', 'Clarins 娇韵诗 黄金双萃赋活修护精华露融萃20种植物抗老精髓，水溶精华和油溶精华双管齐下，通过独特的水油黄金比例系统，将两种不同分子结构的亲油及亲水抗老活性因子萃炼于双瓶之中，黄金水油比例， 360°提升肌肤自我修护能力，逆转时光痕迹，回复青春容颜。提供细胞级抗老保养，修护细胞原生5大功能：再生、有氧、保护、滋养、保湿。细胞年轻，肌肤才年轻。', 'Clarins 娇韵诗', '', '30ml', '', '适合所有肤质使用。', '', '  ', '', '','融萃20种植物抗老精髓，水溶精华和油溶精华双管齐下，双瓶科技，水油精华合二为一。','亲肤易吸收，一滴释放双重年轻能量。','匠心萃取21种天然植萃，从源头激活细胞5大修护功能。','CLARINS娇韵诗，来自法国的植物护肤专业品牌，自1954年创立以来，一直是法国及欧洲植物护肤品市场的领导者。CLARINS娇韵诗以植物为灵感研发的抗老，美白，保湿，塑颜，纤体等产品系列口碑卓越，闻名全球。','','','','','3');
INSERT INTO `mysc_detail` VALUES ('18', '5', 'Jurlique 茱莉蔻 滋养卸妆油 200ml','Jurlique-lg.jpg','Jurlique-sm.jpg','31.49', '34.00', '214.93', '9.3', '', '', '', '', '', '', '', '  ', '', '','','','','','','','','','3');
-- 礼盒套装
INSERT INTO `mysc_detail` VALUES ('19', '6', 'Gucci 古驰 罪爱纯香女香水套装（香水喷雾90ml+迷你香水滚珠旅行装7.5ml） 1套','gucci-lg.jpg','gucci-sm.jpg','73.49', '105.00', '501.58', '7.0', '', '', '', '', '', '', '', '  ', '', '','','','','','','','','','4');
INSERT INTO `mysc_detail` VALUES ('20', '6', 'Elizabeth Arden 伊丽莎白雅顿 第五大道女士香氛护理套装（香水125ml+身体乳100ml+香水小样3.6ml） 1套','elishabai-lg.jpg','elishabai-sm.jpg','28.69', '72.00', '195.81', '4.0', '', '', '', '', '', '', '', '  ', '', '','','','','','','','','','4');
-- 人气美妆
INSERT INTO `mysc_detail` VALUES ('21', '5', 'CLARINS 娇韵诗 黄金双萃赋活修护精华露 30ml','jiaoyunshi-lg.jpg','jiaoyunshi-sm.jpg','57.39', '89.00', '390.95', '6.4', 'Clarins 娇韵诗 黄金双萃赋活修护精华露融萃20种植物抗老精髓，水溶精华和油溶精华双管齐下，通过独特的水油黄金比例系统，将两种不同分子结构的亲油及亲水抗老活性因子萃炼于双瓶之中，黄金水油比例， 360°提升肌肤自我修护能力，逆转时光痕迹，回复青春容颜。提供细胞级抗老保养，修护细胞原生5大功能：再生、有氧、保护、滋养、保湿。细胞年轻，肌肤才年轻。', 'Clarins 娇韵诗', '', '30ml', '', '适合所有肤质使用。', '', '  ', '', '','融萃20种植物抗老精髓，水溶精华和油溶精华双管齐下，双瓶科技，水油精华合二为一。','亲肤易吸收，一滴释放双重年轻能量。','匠心萃取21种天然植萃，从源头激活细胞5大修护功能。','CLARINS娇韵诗，来自法国的植物护肤专业品牌，自1954年创立以来，一直是法国及欧洲植物护肤品市场的领导者。CLARINS娇韵诗以植物为灵感研发的抗老，美白，保湿，塑颜，纤体等产品系列口碑卓越，闻名全球。','','','','','5');








-- ----------------------------
-- Table structure for `mysc_shoppingcart`
-- ----------------------------
DROP TABLE IF EXISTS `mysc_shoppingcart`;
CREATE TABLE `mysc_shoppingcart` (
  `cid` int(11) NOT NULL auto_increment,
  `title` varchar(64) default NULL,
  `pic_sm` varchar(128) default NULL,
  `now_price` decimal(10,2) default NULL,
  `was_price` decimal(10,2) default NULL,
  `num` varchar(32) default NULL,
  `spec` varchar(32) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mysc_shoppingcart
-- ----------------------------
INSERT INTO `mysc_shoppingcart` VALUES ('1','BURBERRY 博柏利 我的博柏利女士淡香水 EDT 90ml','burberry-sm.jpg','33.79', '105.00', '1','90ml');
-- INSERT INTO `mysc_shoppingcart` VALUES ('2', 'GUERLAIN 娇兰 一千零一夜女士香水 EDP 50ml（新旧版本随机发货）','Guerlain-sm.jpg','55.99', '88.00', '0','50ml');
-- INSERT INTO `mysc_shoppingcart` VALUES ('3', '【松本润同款】GIVENCHY 纪梵希 圆周率π派男士淡香水 EDT 100ml','Givenchy-sm.jpg','51.79', '94.00', '0','100ml');
-- INSERT INTO `mysc_shoppingcart` VALUES ('4', 'MIU MIU 滢蓝蓝色之水女士香氛香水 50ml','MIUMIU-sm.jpg','46.89', '80.00','0','50ml');
-- INSERT INTO `mysc_shoppingcart` VALUES ('5', 'TOUS 桃丝熊 淘气小熊宝宝（桃丝宝贝）古龙水 Cologne 100ml','tous-sm.jpg','25.19', '70.00', '0','100ml');








-- ----------------------------
-- Table structure for `mysc_user`
-- ----------------------------
DROP TABLE IF EXISTS `mysc_user`;
CREATE TABLE `mysc_user` (
  `uid` int(11) NOT NULL auto_increment,
  `uname` varchar(32) default NULL,
  `password` varchar(32) default NULL,
  `email` varchar(64) default NULL,
  `phone` varchar(16) default NULL,
  `avatar` varchar(128) default NULL,
  `user_name` varchar(32) default NULL,
  `gender` int(11) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mysc_user
-- ----------------------------
INSERT INTO `mysc_user` VALUES ('1', 'dingding', '123456111', 'ding@qq.com', '13511011000', 'img/avatar/default.png', '丁春秋', '0');
INSERT INTO `mysc_user` VALUES ('2', 'dangdang', '123456aaa', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '当当喵', '1');
INSERT INTO `mysc_user` VALUES ('3', 'doudou', '123456bbb', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1');
INSERT INTO `mysc_user` VALUES ('4', 'yaya', '123456ccc', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');
INSERT INTO `mysc_user` VALUES ('5', '1111', '111111aaa', '441977193@qq.com', '18357100796', null, null, null);
INSERT INTO `mysc_user` VALUES ('6', 'ABCD', '123456asdfg', '123@qq.com', '13538894495', null, null, null);
INSERT INTO `mysc_user` VALUES ('7', 'mohk', '123456qqqqwww', '11@qq.com', '13512312312', null, null, null);
INSERT INTO `mysc_user` VALUES ('8', '121123', 'w13945128995', '491000888@qq.com', '13213389258', null, null, null);
INSERT INTO `mysc_user` VALUES ('9', '555555', '5555555aaaaa', '55555555@163.com', '13400000000', null, null, null);
INSERT INTO `mysc_user` VALUES ('10', 'dongdong', '123456asd', '55555555@163.com', '13512345678', null, null, null);


