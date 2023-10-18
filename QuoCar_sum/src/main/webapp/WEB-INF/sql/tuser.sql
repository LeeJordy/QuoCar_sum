Windows PowerShell
PS C:\Users\Administrator>  sqlplus /nolog
SQL> conn /as sysdba
Connected.

SQL> create user spring identified by 1234;
User created.

SQL> grant CONNECT, RESOURCE to spring;
Grant succeeded.

-----------------------------------------------
CREATE TABLE TUSER (
     USERID     VARCHAR2(12)  PRIMARY KEY 
   , PASSWD     VARCHAR2(12)  NOT NULL 
   , USERNAME   VARCHAR2(30)  NOT NULL
   , EMAIL      VARCHAR2(320)
   , INDATE     DATE          DEFAULT SYSDATE  	
);

INSERT INTO   TUSER ( USERID, PASSWD, USERNAME, EMAIL  )
 VALUES (  'admin', '1234', '관리자', 'admin.green.com'  );
 commit;
 
 













