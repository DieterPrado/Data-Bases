/*Dependent tables*/

ALTER TABLE `PlatziBlog`.`posts` 
ADD INDEX `usuario_posts_fk_idx` (`usuario_id` ASC) VISIBLE;
;
ALTER TABLE `PlatziBlog`.`posts` 
ADD CONSTRAINT `usuario_posts_fk`
  FOREIGN KEY (`usuario_id`)
  REFERENCES `PlatziBlog`.`usuarios` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `PlatziBlog`.`posts` 
ADD INDEX `categorias_posts_fk_idx` (`categoria_id` ASC) VISIBLE;
;
ALTER TABLE `PlatziBlog`.`posts` 
ADD CONSTRAINT `categorias_posts_fk`
  FOREIGN KEY (`categoria_id`)
  REFERENCES `PlatziBlog`.`categorias` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
CREATE TABLE comentarios 
(
comentarios_id int not null auto_increment,
comentario TEXT NOT NULL, 
usuarios_id INT NOT NULL,
posts_id INT NOT NULL,
constraint primary key (comentarios_id)
)
;
ALTER TABLE `PlatziBlog`.`comentarios` 
ADD CONSTRAINT `usuarios_comentario_fk`
  FOREIGN KEY (`usuarios_id`)
  REFERENCES `PlatziBlog`.`usuarios` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
;
ALTER TABLE `PlatziBlog`.`comentarios` 
ADD CONSTRAINT `posts_comentario_fk`
  FOREIGN KEY (`posts_id`)
  REFERENCES `PlatziBlog`.`posts` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
  ;