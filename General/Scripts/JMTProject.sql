SELECT * FROM BOARD;

SELECT * FROM REPORT_TYPE;
	
SELECT *
FROM "MEMBER"; -- 8~10 댓글!

	--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
	INSERT INTO "BOARD"
		VALUES(
		  SEQ_BOARD_NO.NEXTVAL,
			'김밥일번가',
			'제육소고기',
			DEFAULT, 
			'BOARD_IMG', 
			DEFAULT,
			1
		);

	SELECT SEQ_BOARD_NO.NEXTVAL
	FROM DUAL;
	
SELECT * 
FROM "COMMENT"
JOIN "MEMBER" USING (MEMBER_NO);
;

SELECT * FROM "COMMENT";

INSERT INTO "COMMENT"
VALUES(SEQ_COMMENT_NO.NEXTVAL, '1234', DEFAULT, NULL, 'N', 1, 86, NULL);

INSERT INTO "COMMENT"	
		VALUES(SEQ_COMMENT_NO.NEXTVAL,
				   'commentContent',
		       DEFAULT,
				   DEFAULT,
				   'N',
				   2,
				   86,
				   NULL);