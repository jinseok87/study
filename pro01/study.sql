-- 보드테이블 생성
create table board(
seq int primary key not null,
parent_seq int,
depth int default 0,
title varchar2(200) not null,
content varchar2(2000) not null,
nickname varchar2(50) not null,
regDate date default sysdate,
modDate date default sysdate,
visited int default 0,
delflag varchar2(1) default 'N'
);
commit;
--테이블 삭제
drop table board;
drop sequence seq_board;
--컬럼명 변경  visitest -> visited
alter table board rename column visitest to visited;
-- 시퀀스 생성
create sequence seq_board start with 1 increment by 1;

-- 목록
select seq,parent_seq,depth,title,nickname,regDate,modDate,visited,delflag from board where delflag ='N' order by seq desc ;
-- 읽기/불러오기
select seq,parent_seq,depth,title,content,nickname,regDate,modDate,visited,delflag from board where  seq =1;
-- 추가/쓰기
insert into board (seq,parent_seq,depth,title,content,nickname)values(seq_board.nextval,0,0,'제목','내용','작성자');
-- 수정
update board set title='제목수정', content='내용수정', nickname='작성자수정', modDate=sysdate where seq = 2;
-- 삭제
update board set delflag = 'Y' where seq =4;

-- 조회수 업데이트
update board set visited = (select visited from board where seq =1)+1 where seq =1;