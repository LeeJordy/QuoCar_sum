menus
  MENU_ID    MENU_NAME   MENU_SEQ
  MENU01     JAVA        1
  MENU02     JSP         2 
  MENU03     HTML        3
  MENU04     SPRING      4

BOARD
  IDX      TITLE           MENU_ID
   3       SPRING 1        MENU03
   2       SPRING 소개     MENU03
   1       JAVA            MENU01 

--------------------------
-- menus table
--------------------------
CREATE  TABLE  MENUS (
      MENU_ID     VARCHAR2(6)     NOT  NULL  PRIMARY KEY       
    , MENU_NAME   VARCHAR2(120)   NOT  NULL
    , MENU_SEQ    NUMBER(5, 0)    DEFAULT  0
)    

INSERT INTO  MENUS ( MENU_ID, MENU_NAME, MENU_SEQ  )
 VALUES            ( 'MENU01', 'JAVA', 1);
COMMIT;

----------------------------------------------
--  board 게시판
----------------------------------------------
CREATE   TABLE   BOARD
(
      IDX            NUMBER(5, 0)        PRIMARY KEY
    , MENU_ID        VARCHAR2( 6 )       NOT NULL
        REFERENCES   MENUS ( MENU_ID  )
    , TITLE          VARCHAR2( 300  )    NOT NULL
    , CONT           VARCHAR2( 4000 )  
    , WRITER         VARCHAR2( 30 )
    , REGDATE        DATE                DEFAULT  SYSDATE 
    , READCOUNT      NUMBER( 6, 0 )      DEFAULT  0
    
    , BNUM           NUMBER( 5, 0 )      DEFAULT  0
    , LVL            NUMBER( 5, 0 )      DEFAULT  0
    , STEP           NUMBER( 5, 0 )      DEFAULT  0
    , NREF           NUMBER( 5, 0 )      DEFAULT  0
)

INSERT INTO BOARD (
    IDX,          MENU_ID,    TITLE,    CONT,    WRITER,    REGDATE,
    READCOUNT,    BNUM,       LVL,      STEP,    NREF
) VALUES (
    :V0,         :V1,         :V2,      :V3,    :V4,       :V5,
    :V6,         :V7,         :V8,      :V9,    :V10
);

-- Board table 에 delnum 칼럼 추가
ALTER  TABLE   BOARD
  ADD  DELNUM  NUMBER(1) DEFAULT 0; 

-- Board table 에 parent 칼럼 추가
ALTER  TABLE   BOARD
  ADD  PARENT  NUMBER(5) DEFAULT 0; 

-- PARENT 의 기존 DATA NULL 이므로 모두 0  으로 수정
UPDATE  BOARD
 SET    PARENT = 0

COMMIT; 

-------------------------------------
--  자료실을 위한 FILES 테이블 생성
-------------------------------------
CREATE TABLE    FILES
(
     FILE_NUM      NUMBER(6, 0)    NOT NULL    -- 파일 번호   
    , IDX          NUMBER(6, 0)    NOT NULL    -- 게시글 번호
    , FILENAME     VARCHAR2(300)   NOT NULL    -- 파일명
    , FILEEXT      VARCHAR2(300)   NOT NULL    -- 파일 확장자
    , SFILENAME    VARCHAR2(300)   NOT NULL    -- 자장된 실제 파일명
    
    , CONSTRAINT   FILES_PK    PRIMARY KEY    -- 기본키(복합키)
      (
          FILE_NUM,
          IDX
      )
      
    , CONSTRAINT   FK_BOARD_FILES_IDX
      FOREIGN KEY  (IDX) 
      REFERENCES   BOARD( IDX )
        ON DELETE  CASCADE  
);








