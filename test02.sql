create procedure test02
as
begin
    create table  #table1 (a int)
    create table  #table1 (a int, b varchar(10)
    --create table with 10 columns  
    create table  #table1 
    (a int, 
    b varchar(10), 
    c int, d varchar(10), e int, f varchar(10), g int, h varchar(10), i int, j varchar(10))
    begin tran t11
    insert into #table1 values (1)
    commit tran t11
    --get min of a from #table1
    select min(a) from #table1
    --join tavble1 with table2  on a = a
    select * from #table1, table2 where #table1.a = table2.a
    --find all rows in table1 where a not present in table2 
    select * from #table1 where a not in (select a from table2)
    --create a temp customer similar to customer table as in customer.sql in the same folder
    create table #customer
    (customer_id int,
    customer_name varchar(20),
    customer_address varchar(20),
    customer_city varchar(20),
    customer_state varchar(20),
    customer_zipcode varchar(20),
    customer_phone varchar(20),
    customer_email varchar(20))

    --insert realistic 5 rows into #customer
    insert into #customer values (1, 'John', '123 Main St', 'San Jose', 'CA', '95112', '408-123-4567', 'test@aa.com')
    insert into #customer values (2, 'Mary', '234 Main St', 'San Jose', 'CA', '95112', '408-123-4567', 'john@al.com')
    insert into #customer values (3, 'Tom', '345 Main St', 'San Jose', 'CA', '95112', '408-123-4567', 'oo@lla.com')
    insert into #customer values (4, 'Jerry', '456 Main St', 'San Jose', 'CA', '95112', '408-123-4567', 'test@ttwe.com')
    insert into #customer values (5, 'Peter', '567 Main St', 'San Jose', 'CA', '95112', '408-123-4567', 'asas@asdal.co')
    
    --insert into customer table from #customer table
    insert into customer select * from #customer

    --drop the temp table
    drop table #customer
    --create #customer same as before with createddate column
    create table #customer
    (customer_id int,
    customer_name varchar(20),
    customer_address varchar(20),
    customer_city varchar(20),
    customer_state varchar(20),
    customer_zipcode varchar(20),
    customer_phone varchar(20),
    customer_email varchar(20),
    createddate datetime)
    )
    --create an index on customer_id
    create index idx_customer_id on #customer(customer_id)
    

    
end