create procedure test02
as
begin
    create table  #table1 (a int)
    begin tran t11
    insert into #table1 values (1)
    commit tran t11
end