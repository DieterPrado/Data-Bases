/*Transitive tables*/
CREATE TABLE posts_etiquetas
(
posts_etiquetas_id int not null auto_increment,
posts_id INT NOT NULL,
etiquetas_id INT NOT NULL,
constraint primary key (posts_etiquetas_id)
    )
;
ALTER TABLE `PlatziBlog`.`posts_etiquetas` 
ADD CONSTRAINT `posts_etiquetas_posts_fk`
FOREIGN KEY (`posts_id`)
REFERENCES `PlatziBlog`.`posts` (`id`)
ON UPDATE CASCADE
ON DELETE NO ACTION;
;
ALTER TABLE `PlatziBlog`.`posts_etiquetas` 
ADD CONSTRAINT `posts_etiquetas_etiquetas_fk`
FOREIGN KEY (`etiquetas_id`)
REFERENCES `PlatziBlog`.`etiquetas` (`id`)
ON UPDATE CASCADE
ON DELETE NO ACTION
;