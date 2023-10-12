-- �ǽ�����
-- ���� ������ �� ���̺��� �˻��Ͻÿ�

-- 1. ��� ���� �̸��� �ּҸ� �˻��Ͻÿ�
SELECT NAME, address FROM customer;

-- 2. ��� ���� �̸�, �ּ�, ��ȭ��ȣ�� �˻��Ͻÿ�
SELECT NAME, address, phone FROM customer;

-- 3. �ּҰ� '����'�� ���� �˻��Ͻÿ�
SELECT * FROM customer
WHERE address LIKE '%����%';

-- 4.1 ���� �̸��� '�迬��' Ȥ�� '�Ȼ�'�� ���� �˻��Ͻÿ�
SELECT * FROM customer
WHERE name in ('�迬��', '�Ȼ�');

-- 4.2 ���� �̸��� '�迬��' Ȥ�� '�Ȼ�'�� ���� �˻��Ͻÿ�
SELECT * FROM customer
WHERE name = '�迬��' or name = '�Ȼ�';

-- 5. �ּҰ� '���ѹα�'�� �ƴ� ���� �˻��Ͻÿ�
SELECT * FROM customer
WHERE address NOT LIKE '���ѹα�%';

-- 6.1 ��ȭ��ȣ�� ���� ���� �˻��Ͻÿ�
SELECT * FROM customer
WHERE phone is NULL;

-- 6.2 ��ȭ��ȣ�� �ִ� ���� �˻��Ͻÿ�
SELECT * FROM customer
WHERE phone is NOT NULL;

-- 7. ���� �̸������� �����Ͻÿ�(��������)
SELECT * FROM customer
ORDER BY name asc; --asc ����������

-- 8. ���� �� �ο����� ���Ͻÿ�
SELECT COUNT(*) AS ���ο���
FROM customer;