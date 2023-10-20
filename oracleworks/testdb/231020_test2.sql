���� �� ���� ���̺��� �����Ͽ� EMPNO, EMPNAME, DEPTNO, DEPTNAME �÷��� ANSI �������� ��ȸ�Ͽ��� �� ������ �߻��ߴ�. 
�Ʒ��� ����� ������Ȳ�� ����, 
1. ������ ����(10��) �� 
2. �ش� ������ �߻��� ����(20��) �� ���� ���� ����ϰ�
3. �ذ��� �� �ִ� ��ġ����(20��), 
4. ��ġ������ ����� ANSI ����(20��), 
5. ����Ŭ ���� �������� ����(30��) �Ͽ� ��ġ���� ���� ����Ͻÿ�.

-- ����� ���̺� ���� ����
CREATE TABLE DEPARTMENT(
DEPTCODE NUMBER,
DEPTNAME VARCHAR2(10)
);
CREATE TABLE EMPLOYEE(
EMPNO NUMBER,
EMPNAME VARCHAR2(10),
DEPTNO NUMBER
);

-- ������ ���� ����
SELECT EMPNO, 
       EMPNAME, 
       DEPTNO, 
       DEPTNAME
FROM EMPLOYEE JOIN DEPARTMENT 
USING (DEPTNO);

-- ���� ��Ȳ
ORA-00904: "DEPARTMENT"."DEPTNO": invalid identifier

-- ===========================================================
DROP TABLE DEPARTMENT;
DROP TABLE EMPLOYEE;

1. ������ ����(10��)
INNER JOIN (��������)?

2. �ش� ������ �߻��� ����(20��) �� ���� ���� ����ϰ�
?USING ���� ����Ͽ� �����Ϸ��� �� ���̺� ���̿��� �÷� �̸��� ��ġ���� �ʾƼ� �߻�
USING ���� �� ���̺� ���� �÷� �̸��� �����ؾ���
EMPLOYEE ���̺��� DEPTNO�� 
DEPARTMENT ���̺��� DEPTCODE�� 
��ġ���� �ʱ� ������ ������ �߻�?

3. �ذ��� �� �ִ� ��ġ����(20��)
USING ���� ����Ϸ��� �� ���̺��� ���� �÷� �̸��� ��ġ�ؾ� ��
���� �� ���̺��� �÷� �̸��� ��ġ��Ű�ų�, �ٸ� ���� ����� ����ؾ� �մϴ�.

4. ��ġ������ ����� ANSI ����(20��), 
SELECT b.EMPNO, 
       b.EMPNAME, 
       b.DEPTNO, 
       a.DEPTNAME
FROM DEPARTMENT a JOIN EMPLOYEE b
ON a.DEPTCODE = b.DEPTNO ;

5. ����Ŭ ���� �������� ����(30��) �Ͽ� ��ġ���� ���� ����Ͻÿ�.
SELECT b.EMPNO,
       b.EMPNAME, 
       DEPTNO, 
       b.DEPTNAME
FROM DEPARTMENT a JOIN EMPLOYEE b
USING (DEPTNO);











