index.html->로그인전 메인 화면입니다.
mainPage.jsp->로그인 후 메인 화면입니다.
dusatatest.jsp, feedAdd.jsp, feedAddTest.jsp, userList.jsp, userList.jsp->테스트(공부용) 파일입니다.+추가 더미 파일이 나오면 삭제하시지 말고 readme에 업데이트해주세요
myPage.jsp->미완성
withDraw.jsp->미완성

sql 폴더에 기본적인 db 테이블은 작성해놨습니다. 참고하시면 되겠습니다.
각 서비스마다 db가 하나씩 작성되는것이 좋을거 같습니다.(ex. dusatafeed)

2024/07/30<팀장 작성>
->두사타페이지+메인페이지에 로그인세션 없을시 index.html로 넘어가게 수정되었습니다.(앞으로 만드실 페이지에 상단에 있는 코드 추가하시면됩니다)
->몇몇 페이지의 확장자가 바뀌었습니다.-index.jsp가 html로(처음에는 혹시 몰라서 전부 jsp로 만들었는데 파일이 많아져서 좀 보기가 힘들어서 바꿨습니다. +html로 바꿔도 되겠다 싶으신게 있으시면 저한테 말하고 바꿔주세용)
->파일 업로드가 가능하게 바뀌었습니다. apache common lib사용했습니다. ->사진 업로드가 가능합니다.


2024/08/01<팀장 작성>
*아무래도 제가 두사타 페이지랑 기타 기본 페이지(메인 화면, 로그인, 기타등등)을  혼자 하다 보니 작업량이 많아서 제가 다 기억을 못할수도있습니다. 업데이트 사항에 대해서는 기억나는데로 바로 업데이트 하겠습니다.*
->javaresource/dao패키지에 두사타 관련 dao파일 두개를 추가하였습니다(혹시 dao사용하시게 되면 담당한 페이지에 맞게 레퍼런스 파일(FeedDAO)보고 수정하셔서 사용하시면 되겠습니다.)
->저희가 처음에 전부 jsp로 했다 보니 어느 정도 파일 정리를 위해 몇몇 파일들을 html로 변경하는 작업 중에 있습니다. (feedAdd~.html이 추가 되었습니다.)
->기존에 하나만 있던 두사타 피드 페이지를 남여로 나누었습니다.+db도 남여 피드관련 테이블로 수정 및 추가하였습니다.(이름만 다르고 속성은 같습니다.)
->두사타 피드에 글을 쓸때 처리하는 과정인 feedAdd.jsp를 두개로 feedAdd_dumale(남),feedAdd_dufemale(여)로 수정하여 별도 처리하게 만들었습니다.
->header.jsp관련 변경 사항입니다.-> header.jsp는 로그인 전 화면에서 사용이 되는 헤더입니다.header2.jsp도 마찬가지 입니다.+header_login.jsp는 로그인 후에 나올 화면의 헤더입니다. 파일이 많아져서 복잡해졌지만 잘 구분 해주시기 바랍니다.
->두사타쪽은 피드는 70%완성이 되었기에 소켓 통신(실시간 채팅)관련 공부를 해서 기능을 추가할 예정입니다.(진도가 빠르게 나가서 여유로우신 분들은 관련 정보 공유 부탁드려용)
