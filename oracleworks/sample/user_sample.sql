-- user sample
DROP USER c##sample CASCADE;

-- user �� ��й�ȣ ���� - (user ���� : sample, ��� pw1234)
CREATE USER c##sample IDENTIFIED BY pw1234;

-- user ��й�ȣ ����
ALTER USER c##sample IDENTIFIED BY pw12345;

-- SESSION ����(�α���-����) �ο�
GRANT CREATE SESSION TO c##sample;

-- DB�� ���̺� ���� ���� �ο�
GRANT CREATE TABLE, RESOURCE TO c##sample;

-- ������ ������ ��� ���� �ο� - DML(����,��ȸ,����,����)
GRANT CONNECT, DBA TO c##sample;