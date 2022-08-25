CREATE TABLE g_assite_c (
    id INT NOT NULL AUTO_INCREMENT,
    data DATE,
    idgafanhoto INT,
    idcurso INT,
    PRIMARY KEY (id),
    FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos (id),
    FOREIGN KEY (idcurso) REFERENCES cursos (idcurso)
)  DEFAULT CHARSET=UTF8;

insert into g_assite_c values
(default, '2014-03-01', '1', '2');


select * from g_assite_c;

select g.nome, c.nome from gafanhotos as g
join g_assite_c a
on g.id = a.idgafanhoto
join cursos as c
on c.idcurso = a.idcurso
order by g.nome;

