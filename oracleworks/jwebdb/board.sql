-- board ���̺� ����
CREATE TABLE board(
    bno         NUMBER PRIMARY KEY,
    title       VARCHAR2(100) NOT NULL,
    content     CLOB NOT NULL,
    creaatdate  TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifydate  TIMESTAMP,
    hit         NUMBER DEFAULT 0,
    filename    VARCHAR2(50),
    id          VARCHAR2(20) NOT NULL,
    FOREIGN KEY(id) REFERENCES member(id) ON DELETE CASCADE
);
CREATE SEQUENCE seq_bno NOCACHE;

INSERT INTO board (bno, title, content, id)
VALUES (seq_bno.NEXTVAL, '������', '�۳����Դϴ�.', 'khit');

ALTER TABLE board RENAME COLUMN creaatdate TO createdate;

COMMIT;
SELECT * FROM board ORDER BY createdate DESC;

-- ��ȣ�� 1���� �Խñ� ������ '�������� ����', ������ '�������� �����Դϴ�.'
UPDATE board SET title = '�������� ����', content = '�������� �����Դϴ�.'
WHERE bno = 1;

-- �Խñ� 5�� ����
DELETE FROM board WHERE bno = 5;

-- ��ȣ�� 7���� �Խñ��� ��õ���� 1����(����)
UPDATE board SET hit = hit + 1
WHERE bno = 7;

