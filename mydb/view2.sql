-- JOB_INFO ���̺� ����
-- SALARY�� $(�޷�) ������
CREATE TABLE JOB_INFO(
    JOB_ID      VARCHAR(10),  -- ���� ���̵�
    MIN_SALARY  NUMBER,       -- �����޿�
    MAX_SALARY  NUMBER        -- �ְ��޿�
);

INSERT INTO JOB_INFO VALUES('AD_PRES', 20000,40000);
INSERT INTO JOB_INFO VALUES('AD_VP', 15000,30000);
INSERT INTO JOB_INFO VALUES('AD_ASST', 3000,6000);
INSERT INTO JOB_INFO VALUES('FI_MGR', 8000,16000);
INSERT INTO JOB_INFO VALUES('FI_ACCOUNT', 4000,9000);
INSERT INTO JOB_INFO VALUES('AC_MGR', 8000,16000);
INSERT INTO JOB_INFO VALUES('AC_ACCOUNT', 4000,9000);

COMMIT;

SELECT * FROM JOB_INFO;

-- �����޿�, �ְ��޿��� ����� ���Ͻÿ�
SELECT ROUND(AVG(MIN_SALARY), -1) �����޿����,
        AVG(MAX_SALARY) �ְ��޿����
FROM JOB_INFO;

-- ���� �޿��� 5000�޷� �̻��� ���� ���̵� �˻��Ͻÿ�
/* �������
   1. FROM ��
   2. SELECT ��
   3. WHERE ��
   4. ORDER ��
*/
SELECT JOB_ID, MIN_SALARY MIN_SAL
FROM JOB_INFO
WHERE MIN_SALARY >= 5000;
   -- MIN_SAL >= 5000;

-- ���� �޿��� 5000�޷� �̻��� ������ �˻��� �� ����
CREATE VIEW V_JOB_INFO
AS SELECT *
    FROM JOB_INFO
    WHERE MIN_SALARY >= 5000;
    
SELECT * FROM V_JOB_INFO;

-- �ְ� �޿��� ���� �޿��� ���� 10000�޷� �̻��� ���� ���̵� ���Ͻÿ�
SELECT JOB_ID
FROM V_JOB_INFO
WHERE MAX_SALARY - MIN_SALARY >= 10000;

-- ���� ���̵��� �̸��� F1�� �����ϴ� �ڷḦ �˻��Ͻÿ�
SELECT *
FROM V_JOB_INFO
WHERE JOB_ID LIKE 'F1%';

-- MAX_SALARY�� �ְ��� ���� ���̵� �˻��Ͻÿ�


SELECT * FROM V_JOB_INFO;

DROP VIEW V_JOB_INFO;

-- ���̺� ����(DROP)
DROP TABLE JOB_INFO;