/* ʹ��ID��Ϊ����������ID�ڽ������һ�� */
select * 
  from student join takes using (ID);

/* ʹ��ID��Ϊ����������ID�������� */
select * from 
  student join takes 
  on student.ID = takes.ID;

/* ͬon�ؼ��� */
select * 
  from student,takes
  where student.ID = takes.ID;

/* ͬUsing (ID) */
select *
  from student natural join takes;
  
/* ����û��ѡ���κογ̵�ѧ�� */
select *
  from student natural left outer join takes;

/* ��ѯû��ѡ���κογ̵�ѧ�� */
select ID,name,dept_name
  from student natural left outer join takes
  where COURSE_ID is null;

/* ����û��ѡ���κογ̵�ѧ�� */
select *
  from takes natural right outer join student;

/* �г�Comp.Sci.ϵ������ѧ�����Լ�������2009�괺����ѡ�޵Ŀγ�
   2009�괺�����п���Ŀγ̶���Ҫ�г�������û��Comp.Sci.ϵ��ѧ��ѡ�� */
select * from
  (select * 
    from student
    where dept_name = 'Comp.Sci.')
    natural full outer join
  (select *
    from takes
    where semester = 'Spring' and year = 2009
  );