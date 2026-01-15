-- Join people with their hobbies
SELECT p.fullname, h.name AS hobby
FROM persons p
JOIN hobbies h
  ON p.id = h.person_id;

-- Join multiple tables example
SELECT pe.first_name, pt.title, nw.cost
FROM People pe
JOIN Ppltal pt ON pe.id = pt.ppl_id
JOIN Netwr nw ON pe.id = nw.id;
