-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.6.8-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- projectdb 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `projectdb` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci */;
USE `projectdb`;

-- 테이블 projectdb.adboard 구조 내보내기
CREATE TABLE IF NOT EXISTS `adboard` (
  `adboard_num` int(11) NOT NULL AUTO_INCREMENT,
  `adboard_title` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `adboard_content` varchar(2000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `imageFileName` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `adboard_category` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `writeDate` datetime NOT NULL DEFAULT current_timestamp(),
  `id` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `viewCnt` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`adboard_num`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- 테이블 데이터 projectdb.adboard:~9 rows (대략적) 내보내기
/*!40000 ALTER TABLE `adboard` DISABLE KEYS */;
REPLACE INTO `adboard` (`adboard_num`, `adboard_title`, `adboard_content`, `imageFileName`, `adboard_category`, `writeDate`, `id`, `viewCnt`) VALUES
	(1, '4월, 고객센터 운영 시간 안내', '안녕하세요. AA 입니다!<br><br>\r\n\r\n2023년 4월, 내부 일정에 따라 고객센터 운영 시간을 아래와 같이 조정합니다.<br><br>\r\n\r\n회원님의 너그러운 양해를 부탁드리며, 서비스 이용에 참고해 주시기 바랍니다.<br><br>\r\n\r\n고객센터 운영시간\r\n　◾ 평일 10:30 ~ 18:00 (점심시간 13:00 ~ 14:00)<br><br>\r\n\r\n 고객센터 미 운영시간<br><br>\r\n\r\n　◾ 4월 27일(목) 10:30 ~ 12:00<br><br>\r\n\r\n　◾ 4월 28일(금) 14:00 ~ 15:00<br><br>\r\n\r\n본격적인 봄 날씨가 느껴지는 4월입니다. \r\n달라진 날씨처럼 따뜻하게 웃을 일 만 가득한 한 달이 되시기를 바라겠습니다.<br><br>\r\n\r\nAA가 회원님의 비즈니스를 항상 응원하겠습니다.<br><br>\r\n\r\n감사합니다.', 'notice-CsCenter.PNG', '공지사항', '2023-04-12 11:16:41', 'admin', 24),
	(2, 'AA를 사칭하는 메시지, 조심하세요!', 'AA를 사칭하는 메시지, 조심하세요!<br><br><br>\r\n \r\n\r\n안녕하세요, AA입니다.<br><br>\r\n\r\n최근 \'AA\'을 사칭한 인물 및 업체로부터의 피해 사례가 발생하고 있습니다.<br><br>\r\n\r\n위와 같은 행위는 AA 서비스 이용에 혼란을 주고,<br>\r\n더불어 물질적인 피해를 야기할 수 있어 회원님들의 각별한 주의가 필요합니다.<br><br>\r\n\r\n아래의 안내를 참고하시어 안전하게 서비스를 이용하시기를 바랍니다.<br><br><br>\r\n\r\n \r\n-피해 사례와 예방 방법-<br>\r\n[사례 1] AA, 결제 기관 등을 사칭한 안내 문자 발송(링크 클릭, 회신 유도)<br><br>\r\n\r\n"국외발신: 고객님 0월 0일 1,000,000원 결제 완료, 본인 아닐 경우 신고 요망"<br>\r\n"상담센터/신고 번호: 000-123-4567" <br><br>\r\n\r\n-피해 예방 방법: 문자에 포함된 링크를 클릭하거나 연락처로 회신하지 않아야 합니다.<br><br><br>\r\n\r\n \r\n\r\n[사례 2] 개인정보 수집<br><br>\r\n\r\n“안녕하세요, 저희는 AA.com 이라는 마케팅 업체입니다.<br>\r\n이번에 서비스 홍보를 위해 무료로 나눔 이벤트를 진행 중입니다. 참여하시겠어요?“<br><br>\r\n\r\n“이벤트 참여를 위해 기본 정보(참여자 명 / 전화번호 / 상품 배송받으실 주소)를 작성해 주세요”<br><br>\r\n\r\n-주의사항<br>\r\nAA은 공식 계정 및 채널을 통해서만 서비스를 제공합니다.<br>\r\n이외 방식으로는 어떠한 영업·모집 행위도 하지 않으며, 회원님들께 개별적으로 연락을 취하거나 접촉하여 개인정보를 요구하지 않습니다.<br>\r\n위의 사례가 의심된다면, 꼭!! AA 고객센터로 문의하여 사실 확인을 해주세요. <br>', 'notice-phishing.png', '공지사항', '2023-04-12 11:44:31', 'admin', 31),
	(3, '4월 , Best 리뷰 이벤트', 'Best 리뷰자가 동점으로  다수일 경우엔 리뷰 숫자가 많은 사업자에게 소정의 상품을 드립니다.<br><br>\r\n\r\n가입시 주소를 입력해주셔야합니다. 이미 가입하신 이용자 중에 주소를 입력하지 않은 고객은<br>\r\n 마이페이지 -> 기본정보 관리에서 주소를입력해주세요.', 'slider_1.png', '이벤트', '2023-04-13 10:22:24', 'admin', 64),
	(4, '마켓 Prime이란 무엇인가요?', '구매한 의뢰인들의 평가와 AA의 기준에 따라 엄선한, 상위 2%의 우수한 서비스입니다.<br><br>\r\n\r\n-Prime 서비스 찾아보기<br><br>\r\n\r\n1)"Prime" 서비스 페이지로 접속합니다.<br><br>\r\n\r\n2)작업한 서비스를 선택하여 전문가에게 문의하거나 즉시 결제하여 거래를 시작합니다.', 'notice-prime.png', '사이트사용법', '2023-03-14 16:23:12', 'admin', 5),
	(5, 'AA 이용 가이드 : 의뢰인', '1/ 원하는 서비스는 어떻게 찾을 수 있나요?<br><br>\r\n\r\n구매하고자 하는 서비스와 관련된 \'키워드\'를 검색창에 입력하여 빠르게 탐색할 수 있습니다. <br><br><br>\r\n\r\n\r\n2/ 마켓, Prime은 어떻게 다른 건가요?<br><br>\r\n\r\n◾ 마켓: 구매하고자 하는 서비스를 회원이 직접 탐색하여 거래할 수 있는 서비스입니다. <br><br>\r\n\r\n◾ Prime: 구매한 의뢰인들의 평가와 AA의 기준을 토대로 엄선한 상위 2%의 우수 서비스입니다<br><br><br>\r\n\r\n\r\n3/ 결제는 어떻게 하면 되나요?<br><br>\r\n\r\n전문가와의 상담을 통해 구매 의사를 확정한 경우, 서비스 상세페이지 내 [구매하기] 기능을 통해 직접 결제할 수 있습니다.<br><br><br>\r\n\r\n\r\n4/ 작업물이 마음에 들지 않아요.<br><br>\r\n\r\n처음 합의된 작업 조건이 이행되지 않았거나, 작업물이 마음에 들지 않을 경우 \'작업물 수정을 요청\'할 수 있습니다. <br>\r\n단, 서비스에 설정된 기본 수정 횟수 또는 전문가와 합의한 수정 횟수를 초과한 경우, 추가 작업 비용이 발생할 수 있습니다.<br><br><br>\r\n\r\n\r\n5/ 구매 확정과 평가 작성은 어떻게 하나요?<br><br>\r\n\r\n사업자·서비스에 대한 평가는 해당 상품 리뷰에서 작성 할 수 있습니다', 'notice-line1.png', '사이트사용법', '2023-04-12 12:25:29', 'admin', 12),
	(6, '구매한 서비스는 어디에서 확인하나요?', 'AA에서 구매한 서비스는 아래 경로에서 확인하실 수 있습니다.<br><br>\r\n\r\n-일반서비스<br><br>\r\n\r\n1)로그인 후 마이페이지로 접속합니다.<br>\r\nPC버전: 메인 사이트 오른쪽 상단 \'마이페이지\' 클릭<br><br>\r\n\r\n2)페이지 왼쪽 사이드바에 주문 조회를 클릭하시면 구매 내역을 확인하실 수 있습니다.', 'jumoon.png', '사이트사용법', '2023-04-14 16:33:17', 'admin', 5),
	(7, '외국인도 회원가입 할 수 있나요?', '외국인 등록증에 명시된 외국인 등록번호를 주민등록번호에 입력하시고 가입하시면 됩니다.<br><br>\r\n\r\n-외국인 등록증이란-<br>\r\n1. 제 31조에 따라 지방출입국/외국인관서의 장은 대통령령으로 정하는 바에 따라 그 외국인에게 외국인 등록증을 발급하여야한다.<br>\r\n다만, 그 외국인이 17세 미만인 경우에는 발급하지 아니할 수 있다. \r\n2. 제1항 단서에 따라 외국인등록증을 발급받지 아니한 외국인이 17세가 된 때에는 90일 이내에 체류지 관할 지방출입국ㆍ외국인관서의 장에게 외국인등록증 발급신청을 하여야 한다.<br>\r\n3. 영주자격을 가진 외국인에게 발급하는 외국인등록증(이하 "영주증"이라 한다)의 유효기간은 10년으로 한다.<br>\r\n4. 영주증을 발급받은 사람은 유효기간이 끝나기 전까지 영주증을 재발급받아야 한다. <신설 2018. 3. 20.><br>\r\n5. 제4항에 따른 영주증의 재발급 절차 등에 필요한 사항은 대통령령으로 정한다. <신설 2018. 3. 20.><br>', 'notice-foreigner.PNG', '사이트사용법', '2023-04-14 16:34:09', 'admin', 11),
	(8, '아이디와 비밀번호는 어떻게 찾나요?', '-아이디/ 비밀번호 찾기<br><br>\r\n\r\n1)AA 사이트의 \'로그인\'페이지로 접속합니다 (메인 사이트 오른쪽 상단)<br><br>\r\n\r\n2)아이디 / 비밀번호 찾기 클릭<br><br>\r\n\r\n-아이디 찾기 :  <br>\r\n1) 가입시 입력한 이름과 전화번호 입력<br>\r\n2) 아이디 찾기 버튼 클릭<br><br>\r\n\r\n-비밀번호 찾기 : <br>\r\n1) 가입시 입력한 아이디와 이메일을 입력<br>\r\n2) 이메일로 인증번호 보내기 클릭 - 인증번호 입력 - 인증 버튼 클릭<br>\r\n3) 비밀번호 찾기 클릭', 'notice-Fid-Fpw.png', '사이트사용법', '2023-04-14 17:18:45', 'admin', 8),
	(9, '세미나/ 강연 라운지 지원!!', 'AA가 전문가님의 성공적인 비즈니스를 응원합니다!<br><br>\r\n\r\n전문가님께서 세미나/강연 장소를 정하시는 일거리를 덜어 드릴수 있도록, AA가 공간에 대한 고민을 덜어드릴게요.<br><br><br>\r\n\r\n \r\n제품사진, 인터뷰 등 촬영 공간을 찾고 계신 전문가님,<br><br>\r\n\r\n넓은 라운지, 회사 사무실 컨셉의 촬영이 필요하신가요? 해피라운지 공간을 배경으로 색다른 이미지를 창조해보세요.<br><br>\r\n\r\n전문가님을 위해 마련된 다양한 촬영 소품을 활용하실 수 있습니다.<br><br><br>\r\n\r\n\r\n강연, 세미나를 위한 쾌적한 공간이 필요하신 전문가님,<br><br>\r\n\r\n전문가님의 서비스를 AA와 함께 마음껏 홍보하실 수 있는 특별한 기회! 해피라운지에서 세미나 혹은 강연을 진행해보세요.<br><br>\r\n\r\nAA 라운지는 두 가지 용도로 이용하실 수 있어요!<br><br>\r\n\r\n▶ 제품 / 인터뷰 촬영<br><br>\r\n\r\n* 보유 장비<br>\r\n　Lux pad (LED 조명기) 3대, 크로마키 천, 흰색 배경 천<br><br>\r\n\r\n* 안내<br>\r\n    1. 이용을 신청하시기전에 프로필 정보를 최신 버전으로 업데이트 해주세요.<br>\r\n    2. 평일 오후 19시 ~ 22시 까지 이용하실 수 있습니다. <br>\r\n    3. 이용 희망일 기준 7일 전까지 예약해주세요.<br>\r\n    4. 촬영팀(출연자 포함)은 최대 10명까지 방문하실 수 있습니다.<br>\r\n　5. 조명 장비를 가져오실 경우, 최대 전력 7kw이하까지 사용하실 수 있습니다.<br>\r\n　6. 조명 카트 및 응향 카트는 반입하실 수 없습니다.<br><br>\r\n\r\n▶ 세미나 / 강연<br><br>\r\n\r\n* 보유장비<br>\r\n　5000 Ansi LCD 프로젝터, 200" Wide 스크린, 냉난방기, 수강자 착석공간(최대 80인 수용 가능)<br><br>\r\n\r\n* 안내<br>\r\n　1. 이용을 신청하시기전에 프로필 정보를 최신 버전으로 업데이트 해주세요.<br>\r\n  2. 평일 오후 19시 ~ 22시 까지 이용하실 수 있습니다. <br>\r\n  3. 이용 희망일 기준 2개월 전까지 예약해주세요. <br>\r\n　4. 최소 30명 ~ 최대 80명까지 수용할 수 있습니다. (초과 또는 미달 시 예약이 취소될 수 있음)<br>\r\n　5. 행사 참석 신청은 AA (www.AA.com)을 통해 진행하실 수 있습니다. (무료행사 진행 불가)<br>\r\n  6. 세미나/강연 진행 시에는 강연계획서 제출이 필요할 수 있습니다. <br><br>\r\n\r\n※ 주의사항<br><br>\r\n\r\n시설 및 소품 훼손 시 동일금액으로 배상하여야 합니다.<br>\r\n안전과 보안을 위해 CCTV가 설치 되어 있습니다.<br>\r\nAA라운지와 건물 내에서는 금연입니다.<br>\r\n주차는 유료입니다.<br>\r\n공간 내 기자재를 사용하실 수 있으나, 사용 후 제자리에 돌려 놓아주세요.<br>\r\n이용 중 발생하는 안전사고 등에 대한 일체의 책임은 이용자에게 있습니다.<br>\r\n예약한 시간 이외에 시간 연장은 불가합니다.<br>\r\n운영정책 위반 또는 건물 내 규정 위반 시 라운지 예약/이용이 취소될 수 있습니다.', 'event-lounge.jpg', '이벤트', '2023-04-18 09:32:09', 'admin', 43);
/*!40000 ALTER TABLE `adboard` ENABLE KEYS */;

-- 테이블 projectdb.board 구조 내보내기
CREATE TABLE IF NOT EXISTS `board` (
  `board_num` int(200) NOT NULL,
  `board_title` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `board_content` varchar(500) COLLATE utf8mb3_unicode_ci NOT NULL,
  `imageFileName` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `id` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `writeDate` datetime(1) NOT NULL DEFAULT curdate(),
  `viewCnt` int(200) unsigned NOT NULL,
  `status` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`board_num`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- 테이블 데이터 projectdb.board:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
REPLACE INTO `board` (`board_num`, `board_title`, `board_content`, `imageFileName`, `id`, `writeDate`, `viewCnt`, `status`) VALUES
	(1, '다채로운 로고 디자인 전문 업체 ', '나만의 로고를 만들어 드립니다 :) 저희 로고고 디자인을 이용해보세요!', 'logo3-1.png', 'design', '2023-04-14 00:00:00.0', 80, '사업자회원'),
	(5, '명함 디자인 업체 추천해주세요', 'AA사이트 이용 시작한지 며칠 안된 에린이 입니다. <br>\r\n개인 명함을 제작하고 싶은데 괜찮은 업체 추천해주세요.', '', 'ming', '2023-04-17 00:00:00.0', 2, '일반회원'),
	(7, '고소 관련 전문 변호사', '', 'law2.png', 'law1', '2023-04-17 00:00:00.0', 5, '사업자회원'),
	(9, '여러분 피싱 문자 조심하세요 ㅠ', '어제 저녁에 이런 문자가 왔는데 다른분들은 당하지 마세요!! ㅠㅠ <br>\r\nAA사이트에 문의 해보니 저런 이벤트는 없다고 하네요. 저는 모르고 개인정보 보냈어요:(', 'notice-phishing.jpg', '고바순', '2023-04-18 00:00:00.0', 22, '일반회원'),
	(10, '풍경 사진 추천해드림', '본인은 풍경사진을 좋아해서 이쪽 계열 업체들 여럿 이용해 봤는데<br>\r\n개인적인 취향 일수도 있지만 우film 한번 이용해보시길.. <br><br>\r\n난 요새 여기로 정착했음 ~ ', '', 'namLL', '2023-04-18 00:00:00.0', 11, '일반회원');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;

-- 테이블 projectdb.board_cmt 구조 내보내기
CREATE TABLE IF NOT EXISTS `board_cmt` (
  `id` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `cmt_number` int(11) NOT NULL DEFAULT 0,
  `cmt_content` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `cmt_mom_num` int(11) NOT NULL DEFAULT 0,
  `cmt_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `board_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- 테이블 데이터 projectdb.board_cmt:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `board_cmt` DISABLE KEYS */;
REPLACE INTO `board_cmt` (`id`, `cmt_number`, `cmt_content`, `cmt_mom_num`, `cmt_date`, `board_num`) VALUES
	('ming', 1, '밍', 0, '2023-04-14 13:19:27', 4),
	('ming', 2, 'ad', 0, '2023-04-14 13:56:21', 4),
	('khj', 3, 'dgdgdgdgd', 0, '2023-04-14 14:25:46', 4),
	('khj', 4, 'dd', 0, '2023-04-14 15:02:07', 4);
/*!40000 ALTER TABLE `board_cmt` ENABLE KEYS */;

-- 테이블 projectdb.company 구조 내보내기
CREATE TABLE IF NOT EXISTS `company` (
  `id` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `pwd` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `company_Number` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `capName` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `company_name` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `company_zipcode` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_roadAdd` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_jibunAdd` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_namujiAdd` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `company_phone` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `company_tel` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_grade` double DEFAULT NULL,
  `company_intro` varchar(200) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_totalprice` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT '사업체회원',
  `joinDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `emailsts_yn` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT 'n',
  `smssts_yn` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT 'n',
  `nickname` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `totalWork` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `company_name` (`company_name`),
  UNIQUE KEY `company_Number` (`company_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- 테이블 데이터 projectdb.company:~11 rows (대략적) 내보내기
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
REPLACE INTO `company` (`id`, `pwd`, `company_Number`, `capName`, `company_name`, `company_zipcode`, `company_roadAdd`, `company_jibunAdd`, `company_namujiAdd`, `email`, `company_phone`, `company_tel`, `company_grade`, `company_intro`, `company_totalprice`, `status`, `joinDate`, `emailsts_yn`, `smssts_yn`, `nickname`, `totalWork`) VALUES
	('design', '12345', '9898989898', '고희재', '로고고', '37443', '경북 청송군 부남면 대전안길 5', '용우동', ' (성남동)', 'design1@korea.com', '01020527878', NULL, NULL, '9년연속 한국소비자만족1위 & 브랜드만족1위 석권!\r\n\r\n\r\n로고. 광고디자인 랭킹 1위의 신뢰와 디자인 파워를 경험해 보시기 바랍니다.', NULL, '사업체회원', '2023-03-20 12:23:49', 'on', 'on', '로고고', 5),
	('design1', '1234', '123412341234', '우성태', '디자인마스터', NULL, NULL, NULL, NULL, 'design@korea.com', '01040728318', NULL, 4.8, '9년연속 한국소비자만족1위 & 브랜드만족1위 석권!\r\n로고. 광고디자인 랭키 1위의 신뢰와 디자인 파워를 경험해 보시기 바랍니다.', NULL, '사업체회원', '2023-04-05 12:36:29', 'n', 'n', '디자인킹', 54),
	('god1', '123', '1615161515', '점순이', '점순도령', NULL, NULL, NULL, NULL, 'god@naver.net', '01050641515', NULL, NULL, '사람의   앞날을   밝히는  신점을  봅니다.\r\n당신이  생각지도  못한  "진짜 문제"를\r\n쪽집게  점사와  원인을   풀어주는  조언으로  답을 드립니다.\r\n미래를  알면   인생이  바뀝니다.\r\n상담으로   인생을   바꿀수있습니다.\r\n꿈을  현실로   만드는   최고의  재능으로\r\n우리 같이  행복해집시다.', NULL, '사업체회원', '2023-04-05 14:18:57', 'n', 'n', '점순도령', 2),
	('graphic1', '123', '132313151', '우용현', '우film', NULL, NULL, NULL, NULL, 'film@korea.com', '01040470441', NULL, NULL, '20~30대의 젊은 영상을 제작하고 있으며\r\n영상경험으로 꽉 차있는 내공 있는 영상 제작 집단입니다.\r\n상황에 맞는 솔루션과 신선한 아이디어로 \r\n늘 스토리있는 영상을 제작하기 위해 고민합니다.', NULL, '사업체회원', '2023-04-05 13:59:34', 'n', 'n', 'GG FILM', 6),
	('graphic2', '123', '12223222', '새나라', '새나라영상', NULL, NULL, NULL, NULL, 'newnara@korea.com', '01055258879', NULL, NULL, '안녕하세요. 2D / 3D 모션그래픽 디자이너 새나라입니다.\r\n모든 영상에 최선을 다하여 높은 퀄리티의 영상을 제작해 드리겠습니다.', NULL, '사업체회원', '2023-04-05 14:03:23', 'n', 'n', '새나라영상', 5),
	('it1', '123', '123123123', '안용석', '용석디자인', NULL, NULL, NULL, NULL, 'ays@japan.com', '01040401458', NULL, NULL, '"고객만족의 시대는 끝났다. 만족을 넘어선 고객을 기절시켜라!"\r\n\r\n안녕하세요 용석디자인 입니다 ^ㅡ^\r\n\r\n저희는 업력 10년동안 홈페이지웹, 모바일웹, 반응형웹, 어플제작(어플개발), 앱개발(앱제작) 등을 제작하는 개발 전문회사 입니다.', NULL, '사업체회원', '2023-04-05 12:45:45', 'n', 'n', '용석디자인', 2),
	('it2', '123', '13231323', '최성현', 'BESTIT', NULL, NULL, NULL, NULL, 'itit@korea.com', '01042427575', NULL, NULL, '안녕하십니까? BEST IT 입니다.\r\n저희는 고객님의 성공적인 비즈니스를 돕고자 \r\n저렴하면서 강력한 반응형 타입의 홈페이지를 제공합니다.\r\n궁금하신 점은 문의주시면 성실히 답변 해드리겠습니다.', NULL, '사업체회원', '2023-04-05 12:50:38', 'n', 'n', 'BEST IT', 15),
	('law1', '123', '1323132', '고소미', '법무법인고소', NULL, NULL, NULL, NULL, 'goso@daum.net', '01052316464', NULL, NULL, '20년 연속 져본 적이 없습니다. 믿고 맡겨주세요 세상에 있는 모든 고소전문', NULL, '사업체회원', '2023-04-05 14:08:18', 'n', 'n', '법무법인고소', 1),
	('Njob1', '123', '457816254879', '고성석', '회사비법성석', NULL, NULL, NULL, NULL, 'njob@jobjob.com', '01054649876', NULL, NULL, '# 현재 네카라쿠배 개발자로, 스타트업~대기업까지 안 가 본 데 없는 개발자가 알려드립니다\r\n경험으로 알아낸 노하우를 가지고 스타트업부터 중소기업 중견기업 대기업까지 다 합격하여 다녀보았습니다.\r\n이런 경험을 바탕으로 회사 특징이라던지, 회사를 고르는 방법같은 노하우도 책에 녹였습니다.', NULL, '사업체회원', '2023-04-05 14:15:49', 'n', 'n', 'job킹', 2),
	('talk1', '123', '756345481736', '김번역', '토킹어바웃', NULL, NULL, NULL, NULL, 'talk@lala.net', '01032619487', NULL, NULL, '다국어 번역과 더빙을 주력하는 언어현지화 전문기업(주) 토킹어바웃 입니다. 크몽 번역 카테고리 1위 업체이며,  까다로운 테스트를 거쳐 실력이 검증된 각 분야 최고의 전문가들과 함께 최상의 결과를 제공합니다.', NULL, '사업체회원', '2023-04-05 14:13:17', 'n', 'n', '토킹어바웃', 2),
	('taro1', '123', '78947362872', '최용태', '엔젤타로', NULL, NULL, NULL, NULL, 'taro@naver.net', '01054548787', NULL, NULL, '\r\n안녕하세요 .엔젤타로 입니다. 지치고 힘들거나, 궁금한 여러분의 삶에  시원한 나침판이 되어주겠습니다. \r\n애정/사업/신년운세/ 재회', NULL, '사업체회원', '2023-04-05 14:20:29', 'n', 'n', '엔젤타로', 2);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;

-- 테이블 projectdb.company_schedule 구조 내보내기
CREATE TABLE IF NOT EXISTS `company_schedule` (
  `id` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `writeDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- 테이블 데이터 projectdb.company_schedule:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `company_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_schedule` ENABLE KEYS */;

-- 테이블 projectdb.cs 구조 내보내기
CREATE TABLE IF NOT EXISTS `cs` (
  `cs_num` int(11) NOT NULL AUTO_INCREMENT,
  `cs_title` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `cs_category` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `cs_content` varchar(5000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `id` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `imageFileName` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `viewCnt` int(11) NOT NULL,
  `writeDate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`cs_num`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- 테이블 데이터 projectdb.cs:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `cs` DISABLE KEYS */;
REPLACE INTO `cs` (`cs_num`, `cs_title`, `cs_category`, `cs_content`, `id`, `imageFileName`, `viewCnt`, `writeDate`) VALUES
	(1, '건의 사항', '상품/주문', '제가 단호하게 안된다고 말씀드리면 진짜 마지막이라고 계속 그러시는데...<br>\r\n그게 여러번 되니 너무 힘듭니다..<br>\r\nAA측에서 규정을 정해 페널티나 안할 수 있는 방법을 생각해주세요ㅠㅠ<br>\r\n돈 벌어 먹고 살기 힘드네요...<br>', 'design', '', 6, '2023-04-18 17:10:20'),
	(2, '상품이 너무 마음에 안들어요...', '상품/주문', '수정 1번만이라고 절대 안된다고 하네요....\r\nAA측에서 어떻게 조치가 안될까요....<br>\r\n그래도 70000원인데....<br>\r\n빠른 시일내로 답변주세요ㅠㅠ<br>\r\n스트레스로 머리가 다 빠졌습니다...<br>', 'ming', '', 0, '2023-04-18 17:15:20'),
	(3, '자유게시판 게시글 신고 기능좀 넣어주세요', '계정/보안', 'AA게시판 신고 기능 만들어주세요.\r\n딸아이와 함께 자유게시판 이용중이었는데<br>\r\n너무 부적절한 단어를 사용한 게시글이 많습니다.<br>\r\n비속어는 안보이게 하든지 게시를 못하게 하던지 해야할 것 같아요.<br>\r\n', 'khj', '', 8, '2023-04-18 17:17:51');
/*!40000 ALTER TABLE `cs` ENABLE KEYS */;

-- 이벤트 projectdb.delete_old_backups 구조 내보내기
DELIMITER //
CREATE EVENT `delete_old_backups` ON SCHEDULE EVERY 1 DAY STARTS '2023-03-30 16:37:49' ON COMPLETION NOT PRESERVE ENABLE DO DELETE FROM member_backup WHERE deleteDate < DATE_SUB(NOW(), INTERVAL 30 DAY)//
DELIMITER ;

-- 테이블 projectdb.event 구조 내보내기
CREATE TABLE IF NOT EXISTS `event` (
  `event_num` int(11) NOT NULL AUTO_INCREMENT,
  `event_title` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `event_img` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `event_content` varchar(500) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `event_date1` date DEFAULT NULL,
  `event_date2` date DEFAULT NULL,
  `id` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`event_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- 테이블 데이터 projectdb.event:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;

-- 테이블 projectdb.event_status 구조 내보내기
CREATE TABLE IF NOT EXISTS `event_status` (
  `event_title` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `id` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `win` int(11) DEFAULT NULL,
  `event_endDate` date NOT NULL DEFAULT curdate(),
  `event_joinDate` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

-- 테이블 데이터 projectdb.event_status:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `event_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_status` ENABLE KEYS */;

-- 테이블 projectdb.goods 구조 내보내기
CREATE TABLE IF NOT EXISTS `goods` (
  `goods_num` int(11) NOT NULL,
  `id` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `goods_title` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `goods_content` varchar(5000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `goods_point` int(11) DEFAULT NULL,
  `goods_intro` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `goods_status` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `goods_standardPrice` int(200) NOT NULL,
  `goods_deluxePrice` int(200) NOT NULL,
  `goods_premiumPrice` int(200) NOT NULL,
  `goods_credate` date DEFAULT curdate(),
  `goods_grade` double DEFAULT NULL,
  `goods_modify` varchar(2000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `goods_main_category` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `goods_middle_category` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `goods_sub_category` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `goods_standardContent` varchar(1000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `goods_deluxeContent` varchar(1000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `goods_premiumContent` varchar(1000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `totalSell` int(255) DEFAULT NULL,
  `goods_prime_yn` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT 'n',
  PRIMARY KEY (`goods_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- 테이블 데이터 projectdb.goods:~10 rows (대략적) 내보내기
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
REPLACE INTO `goods` (`goods_num`, `id`, `goods_title`, `goods_content`, `goods_point`, `goods_intro`, `goods_status`, `goods_standardPrice`, `goods_deluxePrice`, `goods_premiumPrice`, `goods_credate`, `goods_grade`, `goods_modify`, `goods_main_category`, `goods_middle_category`, `goods_sub_category`, `goods_standardContent`, `goods_deluxeContent`, `goods_premiumContent`, `totalSell`, `goods_prime_yn`) VALUES
	(1, 'design', '와...미친 미술천재가 브랜드에 어울리는 로고제작합니다', '유명한 광고회사, 크몽(마스터 등급)에서 인정받은 디자이너입니다.\r\n불만족시 100% 환불해 드리겠습니다.', NULL, '테스트', '활성', 99000, 149000, 299000, '2023-04-15', 3, '테스트입니다', '비즈니스', '디자인', '패키지/커버/로고', '스탠다드', '디럭스', '프리미엄', 99000, 'n'),
	(2, 'design', '아름다운 로고 제작해드립니다.', '유명한 광고회사, 크몽(마스터 등급)에서 인정받은 디자이너입니다.\r\n불만족시 100% 환불해 드리겠습니다.', NULL, '테스트', '활성', 100000, 150000, 300000, '2023-03-15', 3, '테스트입니다', '비즈니스', '디자인', '패키지/커버/로고', '텍스트형 로고 디자인 (그림X)\r\n(결제전 상담필수) 글자 로고 디자인 시안 1개 + 수정2회 + 로고제작 응용이미지 + 로고 ai 원본파일', '디럭스', '프리미엄', 150000, 'n'),
	(3, 'design1', '깔끔한 명함 제작 전문', '유명한 광고회사, 크몽(마스터 등급)에서 인정받은 디자이너입니다.\r\n불만족시 100% 환불해 드리겠습니다.', NULL, '테스트', '활성', 70000, 140000, 200000, '2023-03-18', 3, '테스트입니다', '비즈니스', '디자인', '인쇄/홍보물', '스탠다드', '디럭스', '프리미엄', 340000, 'y'),
	(4, 'design1', '전문가를 위한 감각적인 명함 디자인해 드립니다.', '비즈니스를 돋보이게 하는 맞춤형 명함을 만들어 드립니다.\r\n감각적인 디자인은 브랜드의 호감도를 높여주고, 나아가 매출에도 도움이 됩니다.\r\n구매자님께서 만족하실 수 있도록 진심을 담아 디자인합니다.\r\n', NULL, '테스트', '활성', 50000, 100000, 150000, '2023-03-16', 3, '테스트입니다', '비즈니스', '디자인', '인쇄/홍보물', '텍스트형 로고 디자인 (그림X)\r\n(결제전 상담필수) 글자 로고 디자인 시안 1개 + 수정2회 + 로고제작 응용이미지 + 로고 ai 원본파일', '디럭스', '프리미엄', 300000, 'y'),
	(5, 'graphic1', '원하는 풍경 또는 사물 사진을 고화질로!', '유명한 사진사, 크몽(마스터 등급)에서 인정받은 사진작가입입니다.\r\n불만족시 100% 환불해 드리겠습니다.', NULL, '테스트', '활성', 30000, 70000, 150000, '2023-04-05', 3, '테스트입니다', '비즈니스', '영상/사진/음향', '사진', '촬영된 전체 이미지 제공, 젠체 이미지 톤 리터칭 제공, 상세 리터칭 5장', '디럭스', '프리미엄', 150000, 'n'),
	(6, 'graphic1', '꽃 사진 전문가 ', '유명한 사진사, 크몽(마스터 등급)에서 인정받은 사진작가입입니다.\r\n불만족시 100% 환불해 드리겠습니다.', NULL, '테스트', '활성', 10000, 25000, 40000, '2023-03-16', 3, '테스트입니다', '비즈니스', '영상/사진/음향', '사진', '촬영된 전체 이미지 제공, 젠체 이미지 톤 리터칭 제공, 상세 리터칭 5장', '디럭스', '프리미엄', 80000, 'n'),
	(7, 'taro1', '서울에서 가까운 타로집', '유명한 사진사, 크몽(마스터 등급)에서 인정받은 사진작가입입니다.\r\n불만족시 100% 환불해 드리겠습니다.', NULL, '테스트', '활성', 15000, 30000, 50000, '2023-02-14', 3, '테스트입니다', '취미/생활', '취미/생활', '기타', '불만족시 100%환불', '디럭스', '프리미엄', 100000, 'n'),
	(8, 'taro1', '3연속 대선후보 맞춘 그 점집!', '유명한 사진사, 크몽(마스터 등급)에서 인정받은 사진작가입입니다.\r\n불만족시 100% 환불해 드리겠습니다.', NULL, '테스트', '활성', 100000, 500000, 1000000, '2023-02-15', 3, '테스트입니다', '취미/생활', '취미/생활', '기타', '불만족시 50%환불 ', '디럭스', '프리미엄', 500000, 'y'),
	(9, 'law1', '외국 유명 로펌 출신 변호사가 자문해드립니다.', '유명한 광고회사, 크몽(마스터 등급)에서 인정받은 디자이너입니다.\r\n불만족시 100% 환불해 드리겠습니다.', NULL, '테스트', '활성', 300000, 500000, 10000000, '2023-03-16', 3, '테스트입니다', '비즈니스', '세무/법무/노무', '법무', '텍스트형 로고 디자인 (그림X)\r\n(결제전 상담필수) 글자 로고 디자인 시안 1개 + 수정2회 + 로고제작 응용이미지 + 로고 ai 원본파일', '디럭스', '프리미엄', 300000, 'y'),
	(10, 'law1', '고소 전문 변호사', '유명한 광고회사, 크몽(마스터 등급)에서 인정받은 디자이너입니다.\r\n불만족시 100% 환불해 드리겠습니다.', NULL, '테스트', '활성', 1000000, 2000000, 5000000, '2023-03-20', 3, '테스트입니다', '비즈니스', '세무/법무/노무', '법무', '텍스트형 로고 디자인 (그림X)\r\n(결제전 상담필수) 글자 로고 디자인 시안 1개 + 수정2회 + 로고제작 응용이미지 + 로고 ai 원본파일', '디럭스', '프리미엄', 1000000, 'y');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;

-- 테이블 projectdb.goods_cart 구조 내보내기
CREATE TABLE IF NOT EXISTS `goods_cart` (
  `cart_num` int(11) DEFAULT NULL,
  `id` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `goods_num` int(11) NOT NULL,
  `goods_option` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `cart_goods_qty` int(11) DEFAULT NULL,
  `credate` datetime DEFAULT current_timestamp(),
  KEY `FK1_goods_num` (`goods_num`),
  CONSTRAINT `FK1_goods_num` FOREIGN KEY (`goods_num`) REFERENCES `goods` (`goods_num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- 테이블 데이터 projectdb.goods_cart:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `goods_cart` DISABLE KEYS */;
REPLACE INTO `goods_cart` (`cart_num`, `id`, `goods_num`, `goods_option`, `cart_goods_qty`, `credate`) VALUES
	(1, 'ming', 3, 'standardPrice', 1, NULL),
	(2, 'ming', 1, 'standardPrice', 1, NULL),
	(3, 'design', 10, 'standardPrice', 1, NULL);
/*!40000 ALTER TABLE `goods_cart` ENABLE KEYS */;

-- 테이블 projectdb.goods_cmt 구조 내보내기
CREATE TABLE IF NOT EXISTS `goods_cmt` (
  `id` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `nickname` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `status` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `goods_num` int(11) NOT NULL DEFAULT 0,
  `goods_content` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `goods_secret` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `goods_category` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `goods_grade` double NOT NULL DEFAULT 0,
  `creDate` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- 테이블 데이터 projectdb.goods_cmt:~6 rows (대략적) 내보내기
/*!40000 ALTER TABLE `goods_cmt` DISABLE KEYS */;
REPLACE INTO `goods_cmt` (`id`, `nickname`, `status`, `goods_num`, `goods_content`, `goods_secret`, `goods_category`, `goods_grade`, `creDate`) VALUES
	('aa', '', '', 1, 'asdfasdfsdfds', NULL, NULL, 3, '2023-03-28 15:10:40'),
	('dtdtdt', '', '', 1, '되야돼....', NULL, NULL, 4, '2023-03-29 14:40:59'),
	('khj', 'dddd', '일반회원', 2, '조아요', NULL, NULL, 5, '2023-04-06 14:14:49'),
	('mang', '', '', 1, '여기로 와.', NULL, NULL, 4, '2023-03-28 15:06:16'),
	('ming23', '', '', 1, '나와?', NULL, NULL, 4, '2023-03-28 15:57:36'),
	('ming33', '', '', 1, '여기오라고', NULL, NULL, 5, '2023-03-28 15:08:44');
/*!40000 ALTER TABLE `goods_cmt` ENABLE KEYS */;

-- 테이블 projectdb.goods_image 구조 내보내기
CREATE TABLE IF NOT EXISTS `goods_image` (
  `image_id` int(11) DEFAULT NULL,
  `goods_num` int(11) DEFAULT NULL,
  `fileName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fileType` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- 테이블 데이터 projectdb.goods_image:~14 rows (대략적) 내보내기
/*!40000 ALTER TABLE `goods_image` DISABLE KEYS */;
REPLACE INTO `goods_image` (`image_id`, `goods_num`, `fileName`, `reg_id`, `fileType`, `credate`) VALUES
	(1, 1, 'testP.jpg', 'design', 'main_image', '2023-03-15'),
	(2, 2, 'test2.jpg', 'design', 'main_image', '2023-04-06'),
	(3, 3, 'test3.png', 'design1', 'main_image', '2023-04-06'),
	(4, 4, 'test4.jpg', 'design1', 'main_image', '2023-04-06'),
	(6, 6, 'pic6.jpg', 'graphic1', 'main_image', '2023-03-15'),
	(5, 5, 'pic5.jpg', 'graphic1', 'main_image', '2023-03-15'),
	(7, 7, 'taro7.jpg', 'taro1', 'main_image', '2023-03-15'),
	(8, 8, 'taro8.jpg', 'taro1', 'main_image', '2023-03-15'),
	(9, 3, 'logo3-1.png', 'design1', 'detail_image1', '2023-04-06'),
	(10, 3, 'logo3-2.png', 'design1', 'detail_image2', '2023-04-06'),
	(11, 3, 'logo3-3.png', 'design1', 'detail_image3', '2023-04-06'),
	(12, 3, 'logo3-4.jpg', 'design1', 'detail_image4', '2023-04-06'),
	(13, 9, 'law1.jpg', 'law1', 'main_image', '2023-03-15'),
	(14, 10, 'law2.PNG', 'law1', 'main_image', '2023-03-15');
/*!40000 ALTER TABLE `goods_image` ENABLE KEYS */;

-- 테이블 projectdb.goods_order 구조 내보내기
CREATE TABLE IF NOT EXISTS `goods_order` (
  `order_num` int(11) DEFAULT NULL,
  `id` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT '',
  `orderer_name` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT '',
  `goods_num` int(11) DEFAULT 0,
  `goods_title` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `goods_resultPrice` int(11) DEFAULT 0,
  `order_price` int(11) DEFAULT 0,
  `cart_goods_qty` int(11) DEFAULT 0,
  `order_goods_qty` int(11) DEFAULT 0,
  `order_goods_option` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `goods_fileName` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `orderer_email` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_email` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_name` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `pay_method` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `card_com_name` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `card_pay_month` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `pay_order_time` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `order_status` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '결제완료',
  `order_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- 테이블 데이터 projectdb.goods_order:~6 rows (대략적) 내보내기
/*!40000 ALTER TABLE `goods_order` DISABLE KEYS */;
REPLACE INTO `goods_order` (`order_num`, `id`, `orderer_name`, `goods_num`, `goods_title`, `goods_resultPrice`, `order_price`, `cart_goods_qty`, `order_goods_qty`, `order_goods_option`, `goods_fileName`, `orderer_email`, `company_email`, `company_name`, `pay_method`, `card_com_name`, `card_pay_month`, `pay_order_time`, `order_status`, `order_date`) VALUES
	(13, '123', '123', 1, '와...미친 미술천재가 브랜드에 어울리는 로고제작합니다', 0, 99000, 0, 1, 'standard', 'testP.jpg', NULL, NULL, '로고고', '신용카드', '삼성', '일시불', NULL, '결제완료', '2023-04-06 12:50:15'),
	(14, 'ming', '최성현', 3, '깔끔한 명함 제작 전문', 0, 140000, 0, 1, 'deluxe', 'test3.png', NULL, NULL, '디자인마스터', '신용카드', '삼성', '일시불', NULL, '결제완료', '2023-04-06 12:50:15'),
	(17, 'ming', 'ddd', 1, '와...미친 미술천재가 브랜드에 어울리는 로고제작합니다', 0, 99000, 0, 1, 'standard', 'testP.jpg', NULL, NULL, '로고고', '신용카드', '삼성', '일시불', NULL, '결제완료', '2023-04-14 13:44:42'),
	(21, 'khj', '고희재', 7, '서울에서 가까운 타로집', 0, 15000, 0, 1, 'standard', 'taro7.jpg', NULL, NULL, '엔젤타로', '신용카드', '삼성', '일시불', NULL, '결제완료', '2023-04-14 14:20:49'),
	(22, 'test', '테스트', 7, '서울에서 가까운 타로집', 0, 15000, 0, 1, 'standard', 'taro7.jpg', NULL, NULL, '엔젤타로', '신용카드', '삼성', '일시불', NULL, '결제완료', '2023-04-18 10:36:51'),
	(23, 'ming', 'ddd', 3, '깔끔한 명함 제작 전문', 0, 70000, 0, 1, 'standard', 'test3.png', NULL, NULL, '디자인마스터', '신용카드', '삼성', '일시불', NULL, '결제완료', '2023-04-18 16:24:59');
/*!40000 ALTER TABLE `goods_order` ENABLE KEYS */;

-- 테이블 projectdb.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `id` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `pwd` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `gender` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `zipcode` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `roadAdd` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `jibunAdd` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `namujiAdd` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `jumin1` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `jumin2` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `emailsts_yn` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'n',
  `tel` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `smssts_yn` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'n',
  `point` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT '일반회원',
  `joinDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `nickname` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `del_yn` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- 테이블 데이터 projectdb.member:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
REPLACE INTO `member` (`id`, `pwd`, `gender`, `name`, `zipcode`, `roadAdd`, `jibunAdd`, `namujiAdd`, `jumin1`, `jumin2`, `email`, `emailsts_yn`, `tel`, `smssts_yn`, `point`, `status`, `joinDate`, `nickname`, `del_yn`) VALUES
	('admin', '1212', 'M', '고희재', NULL, '대전광역시', '', NULL, '920510-1111111', '', 'refailer@naver.com', 'n', '01068555550', 'n', NULL, '관리자', '2023-03-14 00:00:00', '관리자', 'y'),
	('khj', '1234', 'm', '고희재', NULL, NULL, NULL, NULL, '123456', '1234567', 'refailer@naver.com', 'true', '01012341234', 'n', NULL, '일반회원', '2023-03-31 09:48:03', 'dddd', 'n'),
	('ming', '1234', NULL, 'ddd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'n', '', 'n', NULL, '일반회원', '2023-04-06 14:12:07', 'ddd', 'n'),
	('namLL', '1234', NULL, '김순재', NULL, NULL, NULL, NULL, '123145', '4353455', 'kim@nate.com', 'n', '01045561243', 'n', NULL, '일반회원', '2023-04-18 11:36:33', '순재', NULL),
	('test', '1234', NULL, '테스트', NULL, NULL, NULL, NULL, '124134', '1234566', 'test@naver.com', 'n', '01012341234', 'n', NULL, '일반회원', '2023-04-18 10:36:16', '테스트', NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- 테이블 projectdb.member_backup 구조 내보내기
CREATE TABLE IF NOT EXISTS `member_backup` (
  `id` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `pwd` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `gender` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `zipcode` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `roadAdd` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `jibunAdd` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `namujiAdd` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `jumin1` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `jumin2` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `emailsts_yn` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'n',
  `tel` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `smssts_yn` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'n',
  `point` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT '일반회원',
  `joinDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `nickname` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `del_yn` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `deleteDate` date DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- 테이블 데이터 projectdb.member_backup:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `member_backup` DISABLE KEYS */;
REPLACE INTO `member_backup` (`id`, `pwd`, `gender`, `name`, `zipcode`, `roadAdd`, `jibunAdd`, `namujiAdd`, `jumin1`, `jumin2`, `email`, `emailsts_yn`, `tel`, `smssts_yn`, `point`, `status`, `joinDate`, `nickname`, `del_yn`, `deleteDate`) VALUES
	('ming', '12345', '최성현', 'm', '대전역', '벤치', NULL, NULL, NULL, NULL, 'ming@nasdvja.com', 'n', '12341234123', 'n', NULL, '일반회원', '2023-04-05 15:28:43', '최씨가문', NULL, '2023-04-06');
/*!40000 ALTER TABLE `member_backup` ENABLE KEYS */;

-- 테이블 projectdb.privacy 구조 내보내기
CREATE TABLE IF NOT EXISTS `privacy` (
  `privacy_num` int(11) NOT NULL AUTO_INCREMENT,
  `privacy_title` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `privacy_img` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `privacy_content` varchar(5000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `writeDate` date DEFAULT curdate(),
  `id` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`privacy_num`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

-- 테이블 데이터 projectdb.privacy:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `privacy` DISABLE KEYS */;
/*!40000 ALTER TABLE `privacy` ENABLE KEYS */;

-- 테이블 projectdb.report 구조 내보내기
CREATE TABLE IF NOT EXISTS `report` (
  `report_category` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `target_id` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `reporter_id` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `report_content` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `report_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- 테이블 데이터 projectdb.report:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;

-- 테이블 projectdb.terms 구조 내보내기
CREATE TABLE IF NOT EXISTS `terms` (
  `terms_num` int(11) NOT NULL AUTO_INCREMENT,
  `terms_title` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `terms_img` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `terms_content` varchar(5000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `writeDate` date DEFAULT curdate(),
  `id` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`terms_num`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

-- 테이블 데이터 projectdb.terms:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `terms` ENABLE KEYS */;

-- 트리거 projectdb.member_delete_trigger 구조 내보내기
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `member_delete_trigger` AFTER DELETE ON `member` FOR EACH ROW BEGIN
    INSERT INTO member_backup 
    VALUES (
        OLD.id, OLD.pwd, OLD.name, OLD.gender, OLD.zipcode, OLD.roadAdd, OLD.jibunAdd, OLD.namujiAdd, 
        OLD.jumin1, OLD.jumin2, OLD.email, OLD.emailsts_yn, OLD.tel, OLD.smssts_yn, OLD.point, 
        OLD.status, OLD.joinDate, OLD.nickname, OLD.del_yn, CURDATE()
    );
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
