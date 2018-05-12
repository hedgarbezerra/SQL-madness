
/* Create the schema for our tables */
create table Movie(mID number(3), title char(30), year number(4), director char(30));
create table Reviewer(rID number(3), name char(30));
create table Rating(rID number(3), mID number(3), stars number(3), ratingDate date default sysdate);
/
/* Populate the tables with our data */
insert into Movie values(101, 'Gone with the Wind', 1939, 'Victor Fleming');
insert into Movie values(102, 'Star Wars', 1977, 'George Lucas');
insert into Movie values(103, 'The Sound of Music', 1965, 'Robert Wise');
insert into Movie values(104, 'E.T.', 1982, 'Steven Spielberg');
insert into Movie values(105, 'Titanic', 1997, 'James Cameron');
insert into Movie values(106, 'Snow White', 1937, null);
insert into Movie values(107, 'Avatar', 2009, 'James Cameron');
insert into Movie values(108, 'Raiders of the Lost Ark', 1981, 'Steven Spielberg');

insert into Reviewer values(201, 'Sarah Martinez');
insert into Reviewer values(202, 'Daniel Lewis');
insert into Reviewer values(203, 'Brittany Harris');
insert into Reviewer values(204, 'Mike Anderson');
insert into Reviewer values(205, 'Chris Jackson');
insert into Reviewer values(206, 'Elizabeth Thomas');
insert into Reviewer values(207, 'James Cameron');
insert into Reviewer values(208, 'Ashley White');

insert into Rating values(201, 101, 2, '10/11/2019');
insert into Rating values(201, 101, 4, '27/01/2011');
insert into Rating values(202, 106, 4, null);
insert into Rating values(203, 103, 2, '20/01/2011');
insert into Rating values(203, 108, 4, '12/01/2011');
insert into Rating values(203, 108, 2, '30/01/2011');
insert into Rating values(204, 101, 3, '09/010/2011');
insert into Rating values(205, 103, 3, '27/012011');
insert into Rating values(205, 104, 2, '22/012011');
insert into Rating values(205, 108, 4, null);


