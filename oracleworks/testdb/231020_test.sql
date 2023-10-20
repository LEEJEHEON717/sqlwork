�Ʒ��� ��ʸ� �а� ������ �߻��� ������ ã�� �� ������ �ذ��Ͻÿ�. (4�� ����)

1. ���
����� ������ ����� ���� �Ϲ� ����� ������ TEST �������� �����Ͽ� ������ SAMPLE ��й�ȣ�� 1234��
������ �����ϱ� ���� CREATE USER SAMPLE; �� �����ϴ� ���������� ������ ���� �ʾҴ�.

2. ���
������� �������� ��ġ�� GRANT CREATE SESSION TO SAMPLE; �� ���� ������ �ο��� ��
������ �ϰ� ���̺��� (CREATE ��) �����Ϸ��µ� ������ ���� �ʾҴ�.

3. ���
������� �������� ��ġ�� ������ �����Ͽ� ���̺��� �����ϰ� �����͸� ����(INSERT ��)�Ϸ��µ� ������ �߻��Ͽ���.

4. ���
�Ʒ� ���̺��� �ִٴ� �����Ͽ� ���� ���ǿ� �´� ����� ��ȸ�Ϸ��� SQL������ �ۼ��ߴµ�
����ε� ����� ��µ��� �ʾҴ�. SQL������ ���� ������ ã�� ���ο� �ۼ��ϰ� ����ε� SQL���� ��ġ���׿� �ۼ��Ͻÿ�.


�˻�����

DEPT_CODE�� D9 �̰ų� D6 �̰� SALARY �� 300���� �̻��� ����� EMP_NAME, EMP_NO, DEPT_CODE, SALARY �� ��ȸ
�ۼ��� ��������
SELECT EMP_NAME, EMP_NO, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE DEPT_CODE == "D9" || DEPT_CODE == "D6"
��ʸ� �����Ͽ� ���ΰ� ������ �ذ��ϱ� ���� ��ġ�� ���ΰ� ��ġ������� ���� ����Ͻÿ�.

==============================================================================================================

CREATE USER SAMPLE IDENTIFIED BY pw1234;

GRANT CREATE SESSION TO c##SAMPLE;

GRANT CREATE TABLE, RESOURCE TO c##SAMPLE;

GRANT CREATE, DBA TO c##SAMPLE;

����: CREATE USER SAMPLE; ������ ������ �� ��й�ȣ�� �������� ����
//CREATE USER SAMPLE IDENTIFIED BY 1234;

����: SAMPLE ����ڰ� CREATE ���� ������ �� �ִ� ������ ����
CREATE ���� �����Ϸ��� CREATE TABLE ������ �ʿ�
//GRANT CREATE TABLE, RESOURCE TO SAMPLE;

����: SAMPLE ����ڰ� ���̺��� �����Ϸ��� �� �� �ʿ��� ���̺����̽��� ���� ������ ���ų�, 
���̺� ���� ������ ����
/*SAMPLE ����ڿ��� �ʿ��� ���̺����̽��� ���� ������ �ο�,
���� �۾��� �Ϸ��� ���̺� ���� INSERT ������ SAMPLE ����ڿ��� �ο�*/


SELECT EMP_NAME, EMP_NO, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE DEPT_CODE = 'D9' OR DEPT_CODE = 'D6'
AND SALARY >= 3000000;




