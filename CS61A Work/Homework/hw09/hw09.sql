CREATE TABLE parents AS
  SELECT "abraham" AS parent, "barack" AS child UNION
  SELECT "abraham"          , "clinton"         UNION
  SELECT "delano"           , "herbert"         UNION
  SELECT "fillmore"         , "abraham"         UNION
  SELECT "fillmore"         , "delano"          UNION
  SELECT "fillmore"         , "grover"          UNION
  SELECT "eisenhower"       , "fillmore";

CREATE TABLE dogs AS
  SELECT "abraham" AS name, "long" AS fur, 26 AS height UNION
  SELECT "barack"         , "short"      , 52           UNION
  SELECT "clinton"        , "long"       , 47           UNION
  SELECT "delano"         , "long"       , 46           UNION
  SELECT "eisenhower"     , "short"      , 35           UNION
  SELECT "fillmore"       , "curly"      , 32           UNION
  SELECT "grover"         , "short"      , 28           UNION
  SELECT "herbert"        , "curly"      , 31;

CREATE TABLE sizes AS
  SELECT "toy" AS size, 24 AS min, 28 AS max UNION
  SELECT "mini"       , 28       , 35        UNION
  SELECT "medium"     , 35       , 45        UNION
  SELECT "standard"   , 45       , 60;


-- The size of each dog
CREATE TABLE size_of_dogs AS
  SELECT name AS name, size AS size
  FROM dogs, sizes
  WHERE height > min AND height <= max;


-- All dogs with parents ordered by decreasing height of their parent
CREATE TABLE by_parent_height AS
  SELECT d1.name AS name
  FROM dogs AS d1, parents, dogs AS d2
  WHERE d1.name = child AND parent = d2.name order by -d2.height;


-- Filling out this helper table is optional
CREATE TABLE siblings AS
  SELECT sib.child AS sib, ling.child AS ling
  FROM parents as sib, parents as ling
  WHERE sib.parent = ling.parent AND sib.child < ling.child;


-- Sentences about siblings that are the same size
CREATE TABLE sentences AS
  SELECT "The two siblings, " || s1.name || " plus " || s2.name || " have the same size: " || s1.size
  FROM siblings, size_of_dogs as s1, size_of_dogs as s2
  WHERE s1.size = s2.size AND siblings.sib = s1.name AND siblings.ling = s2.name;
