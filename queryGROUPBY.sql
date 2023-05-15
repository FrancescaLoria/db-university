1. Contare quanti iscritti ci sono stati ogni anno

SELECT COUNT(id) AS `persone iscritte`, YEAR(`enrolment_date`) AS `anno di iscrizione`
FROM `students`
GROUP BY YEAR(`enrolment_date`);

2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio

SELECT COUNT(*) AS `numero degli uffici` ,`office_address` AS `indirizzo`
FROM `teachers` 
GROUP BY `office_address`;

3. Calcolare la media dei voti di ogni appello d'esame

SELECT `exam_id`, AVG(`vote`) AS `somma esami`
FROM `exam_student` 
GROUP BY `exam_id`

4. Contare quanti corsi di laurea ci sono per ogni dipartimento

SELECT `departments`.`name` AS `nome del dipartimento`, COUNT(*) AS `numero corsi`
FROM `departments` 
INNER JOIN `degrees` 
ON `departments`.`id` = `degrees`.`department_id` 
GROUP BY `departments`. `name`