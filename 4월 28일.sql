-- �˻�(R)
-- * : ALL COLUMN ( DEPTNO, DNAME, LOC )
--SELECT * FROM DEPT;
SELECT DEPTNO, DNAME, LOC FROM DEPT;
-- �� �÷��� ����( DEPTNO )
SELECT DEPTNO FROM DEPT;
-- �ٸ� �÷��鵵 �� ���� ����
SELECT DNAME FROM DEPT;
SELECT LOC FROM DEPT;

-- ���ǿ� �´� ������ ��������
-- WHERE [������]: ���� ����
-- DEPT ���̺� DNAME(�μ��̸�)�� 'SALES'�� �����͸� ����������
SELECT DNAME FROM DEPT WHERE DNAME = 'SALES';
-- DEPT ���̺� DEPTNO�� 10�� �����͸� �÷���(DEPTNO)����������
SELECT DEPTNO FROM DEPT WHERE DEPTNO = 10;

-- WHERE[���� �÷�] LIKE 'S%'
-- ���� �÷��� S�� ���۵Ǵ� ���ڿ��� ��� ��������
SELECT * FROM EMP WHERE ENAME LIKE 'S%';

-- EMP ���̺��� JOB�� J�� ���۵Ǵ� ���ڿ��� ���� �����ʹ� ��� ��������
-- SELECT�� ���� �÷��� ��ġ�� ���� ������ ��� ������ �ٲ�
SELECT JOB, ENAME FROM EMP WHERE JOB LIKE 'M%';

-- DB ���̺� �����ʹ� ��ҹ��ڸ� ������ ���ڿ��� �ν���(��ҹ��� ��Ȯ�ϰ� �ؾ� ��)
-- �ؿ� �̷������� �� ��
SELECT ENAME, JOB FROM EMP WHERE JOB = 'Manager';
SELECT ENAME, JOB FROM EMP WHERE JOB LIKE 'Ma%';
-- ���� �Լ�
-- UPPER(���ڿ�) = �빮�ڷ� �ٲ���
-- LOWER(���ڿ�) = �ҹ��ڷ� �ٲ���
SELECT ENAME, JOB FROM EMP WHERE JOB = UPPER('manager');

-- ���� : ��������
-- SELECT�� ���� ORDER BY[�÷� ��] ASC ���̸� �� 
-- DNAME(�μ���)�� ������������ �������ּ���
SELECT * FROM DEPT ORDER BY DNAME ASC;
-- ���������� ASC ���� ����
SELECT * FROM DEPT ORDER BY DNAME;

-- ���� : ��������
-- SELECT�� ���� ORDER BY[�÷� ��] DESC ���̸� �� 
-- DNAME(�μ���)�� ������������ �������ּ���
SELECT * FROM DEPT ORDER BY DNAME DESC;

-- �������� 
-- EMP ���̺��� JOB�� 'MANAGER'�� �ֵ��� �����͸� �̾Ƽ� 
-- ENAME(�����̸�)�� ������� ������������ �����غ���
SELECT * FROM EMP WHERE JOB LIKE 'MANAGER%' ORDER BY ENAME ASC;
SELECT * FROM EMP WHERE JOB = 'MANAGER' ORDER BY ENAME ASC;

-- �������� 
-- EMP ���̺��� JOB�� 'CLERK'�� �ֵ��� �����͸� �̾Ƽ�
-- ENAME(�����̸�)�� ������� ������������ �����غ���
SELECT * FROM EMP WHERE JOB LIKE 'CLERK%' ORDER BY ENAME DESC;
SELECT * FROM EMP WHERE JOB = 'CLERK' ORDER BY ENAME DESC;

-- ���� ����
-- EMP ���̺��� JOB�� 'CLERK'�� �ֵ��� �����͸� �̾Ƽ�
-- ENAME(�����̸�), EMPNO(���� ��ȣ) �� ���� ������� ������������ �������ּ���.
-- ù ��° ���ķ� �̹� ������ �ǰ�, �� ��° ������ ù ��° ���ķ� ���� �̸��� �ְų�
-- �� ��ư ����ϸ� �� ��° ���ķ� ��
SELECT * FROM EMP WHERE JOB = 'CLERK' ORDER BY ENAME DESC, EMPNO DESC;
-- �̷��� ��������, �������� ���°� �԰���
SELECT * FROM EMP WHERE JOB = 'CLERK' ORDER BY ENAME DESC, EMPNO;


