create table member(
    num number(5) primary key,          -- ȸ�� ������ȣ
    userid varchar2(15),                -- ȸ�� ���̵�
    pwd varchar2(20),                   -- ȸ�� ��й�ȣ
    name varchar2(10),                  -- ȸ�� �̸�
    sex number(1) default 0,            -- ����
    tel varchar2(13),                   -- ����ȭ(�ʼ����� �ƴ�)
    phone varchar2(13),                 -- �޴���ȭ��ȣ(�ʼ�)
    email varchar2(20),                 -- �̸����ּ�
    address varchar2(100)               -- ���ּ�
);
alter table member modify num not null;

desc member;
select * from member;
create sequence member_seq start with 1 increment by 1;
insert into member values(member_seq.nextval,'admin','1234','���',1,'02-123-4567','010-1004-1004','scuba@scuba.com','���� ��Ǽ�����');
commit; 

create table board1(                     -- ����� ������û
    num number(5) primary key,           -- �Խñ� ������ȣ
    title varchar2(50),                  -- �Խñ� ����
    pass varchar2(50),                   -- �ۼ��� ��й�ȣ
    name varchar2(30),                   -- �ۼ��� �̸�
    phone varchar2(13),                  -- �ۼ��� ����ó
    space number(2),                     -- �������� ���
    subject number(2),                   -- ����ϴ� ��������
    pack number(2),                      -- ��Ű��
    time number(2),                      -- �����ޱ⸦ ����ϴ� �ð�
    readcount number(4) default 0,       --��ȸ��
    writedate date default sysdate       --�ۼ�����
);
desc board1;
create sequence board1_seq start with 1 increment by 1;

create table board2(                     -- �������̺� ������û
    num number(5) primary key,           -- �Խñ� ������ȣ
    title varchar2(50),                  -- �Խñ� ����
    pass varchar2(50),                   -- �ۼ��� ��й�ȣ
    name varchar2(30),                   -- �ۼ��� �̸�
    phone varchar2(13),                  -- �ۼ��� ����ó
    space number(2),                     -- �������� ���
    subject number(2),                   -- ����ϴ� ��������
    time number(2),                      -- �����ޱ⸦ ����ϴ� �ð�
    readcount number(4) default 0, --��ȸ��
    writedate date default sysdate --�ۼ�����
);
create sequence board2_seq start with 1 increment by 1;

create table board3(           --������ �ı�
    num number(5) primary key, --�Խ��� ������ȣ, �⺻Ű�� ����
    name varchar2(30),         --�ۼ��� �̸�(ȸ�� �������� ������)
    pass varchar2(30),         --�Խñ� ��й�ȣ(ȸ�� ��й�ȣ�� �����ؾ���)
    title varchar2(50),        --�Խñ� ����
    content varchar2(1000),    --�Խñ� ����
    readcount number(4) default 0, --��ȸ��
    writedate date default sysdate --�ۼ�����
);
select * from board3;

create sequence board3_seq start with 1 increment by 1;

insert into board3(num,name,pass,title,content)
values(board3_seq.nextval,'���','1234','�׽�Ʈ','�����׽�Ʈ');

commit;
rollback;


create table board4(           --�������� �ı�
    num number(5) primary key, --�Խ��� ������ȣ, �⺻Ű�� ����
    name varchar2(30),         --�ۼ��� �̸�(ȸ�� �������� ������)
    pass varchar2(30),         --�Խñ� ��й�ȣ(ȸ�� ��й�ȣ�� �����ؾ���)
    title varchar2(50),        --�Խñ� ����
    content varchar2(1000),    --�Խñ� ����
    readcount number(4) default 0, --��ȸ��
    writedate date default sysdate --�ۼ�����
);
select * from board4;
create sequence board4_seq start with 1 increment by 1;

create table board5(           --�ؿ����� �ı�
    num number(5) primary key, --�Խ��� ������ȣ, �⺻Ű�� ����
    name varchar2(30),         --�ۼ��� �̸�(ȸ�� �������� ������)
    pass varchar2(30),         --�Խñ� ��й�ȣ(ȸ�� ��й�ȣ�� �����ؾ���)
    title varchar2(50),        --�Խñ� ����
    content varchar2(1000),    --�Խñ� ����
    readcount number(4) default 0, --��ȸ��
    writedate date default sysdate --�ۼ�����
);
select * from board5;
desc board5;
create sequence board5_seq start with 1 increment by 1;

create table board6(           --�������� �Խ���
    num number(5) primary key, --�Խ��� ������ȣ, �⺻Ű�� ����
    name varchar2(30),         --�ۼ��� �̸�(ȸ�� �������� ������)
    pass varchar2(30),         --�Խñ� ��й�ȣ(ȸ�� ��й�ȣ�� �����ؾ���)
    title varchar2(50),        --�Խñ� ����
    content varchar2(1000),    --�Խñ� ����
    readcount number(4) default 0, --��ȸ��
    writedate date default sysdate --�ۼ�����
);
select * from board6;
create sequence board6_seq start with 1 increment by 1;
    
create table board7(           --�̺�Ʈ �Խ���
    num number(5) primary key, --�Խ��� ������ȣ, �⺻Ű�� ����
    name varchar2(30),         --�ۼ��� �̸�(ȸ�� �������� ������)
    pass varchar2(30),         --�Խñ� ��й�ȣ(ȸ�� ��й�ȣ�� �����ؾ���)
    title varchar2(50),        --�Խñ� ����
    content varchar2(1000),    --�Խñ� ����
    readcount number(4) default 0, --��ȸ��
    writedate date default sysdate --�ۼ�����
);
select * from board7;
create sequence board7_seq start with 1 increment by 1;

create table board8(           --����� ����Ǹ� �Խ���
    num number(5) primary key not null, --�Խ��� ������ȣ, �⺻Ű�� ����
    name varchar2(30),         --�ۼ��� �̸�(ȸ�� �������� ������)
    pass varchar2(30),         --�Խñ� ��й�ȣ(ȸ�� ��й�ȣ�� �����ؾ���)
    title varchar2(50),        --�Խñ� ����
    content varchar2(1000),    --�Խñ� ����
    readcount number(4) default 0, --��ȸ��
    writedate date default sysdate --�ۼ�����
);
select * from board8;
create sequence board8_seq start with 1 increment by 1;