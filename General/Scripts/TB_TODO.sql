
CREATE TABLE TB_TODO(
	TODO_NO				NUMBER CONSTRAINT TODO_NO_PK PRIMARY KEY,	
	TODO_TITLE    VARCHAR2(40) NOT NULL,
	TODO_DETAIL   VARCHAR2(2000) NOT NULL,
	TODO_COMPLETE CHAR(1) NOT NULL,
	TODO_TIME		  DATE DEFAULT CURRENT_DATE
);

COMMENT ON COLUMN TB_TODO.TODO_NO     IS '할일번호';
COMMENT ON COLUMN TB_TODO.TODO_TITLE     IS '할일제목';
COMMENT ON COLUMN TB_TODO.TODO_DETAIL     IS '상세내용';
COMMENT ON COLUMN TB_TODO.TODO_COMPLETE     IS '할일완료여부';
COMMENT ON COLUMN TB_TODO.TODO_TIME     IS '완료시간';

-- TB_TODO 컬럼에 삽입될 시퀀스 생성 
CREATE SEQUENCE SEQ_TODO_NO NOCACHE;

-- 샘플 데이터 INSERT
INSERT INTO TB_TODO
VALUES( SEQ_TODO_NO.NEXTVAL, '강아지산책시키기', '산책시키면서 배변시키고 잘하면 간식주기', 'Y', DEFAULT );
INSERT INTO TB_TODO 
VALUES( SEQ_TODO_NO.NEXTVAL, '배드민턴 스매싱연습하기', '팔의각도를 적절히 해서 강력한 파워로 내리꽂기', 
'N', DEFAULT );

SELECT * FROM TB_TODO; 

COMMIT;
