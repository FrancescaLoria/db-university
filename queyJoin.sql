1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

SELECT `students`.`name`, `students`.`surname`, `degrees`.`name` 
FROM `students` 
INNER JOIN `degrees` 
ON `students`.`degree_id` = `degrees`.`id` 
WHERE `degrees`.name = "Corso di laurea in economia";

2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze

SELECT `degrees`.`name`, `departments`.`name`
FROM `degrees` 
INNER JOIN `departments` 
ON `degrees`.`department_id` = `departments`.id 
WHERE `departments`.name = "Dipartimento di Neuroscienze";

3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)

SELECT *
FROM `teachers` 
INNER JOIN `course_teacher` 
ON `teachers`.`id` = `course_teacher`.`teacher_id` 
INNER JOIN `courses` 
ON `course_teacher`.`course_id` = `courses`.id 
WHERE `teachers`.name = "Fulvio" 
AND `teachers`.`surname` = "Amato"

4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il
relativo dipartimento, in ordine alfabetico per cognome e nome

SELECT * 
FROM `students` 
INNER JOIN `degrees` 
ON `students`.`degree_id` = `degrees`.`id` 
INNER JOIN `departments` 
ON `degrees`.`department_id` = `departments`.`id` 
ORDER BY `students`.surname ASC, `students`.`name` ASC

5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti

SELECT * 
FROM `degrees` 
INNER JOIN `courses` 
ON `degrees`.`id` = `courses`.`degree_id` 
INNER JOIN `course_teacher` 
ON `courses`.`id` = `course_teacher`.`course_id` 
INNER JOIN `teachers` 
ON `course_teacher`.`teacher_id` = `teachers`.`id`

6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)

SELECT DISTINCT `teachers`.`name`, `teachers`.`surname` 
FROM `teachers` 
INNER JOIN `course_teacher` 
ON `teachers`.`id` = `course_teacher`.`teacher_id` 
INNER JOIN `courses` 
ON `course_teacher`.`course_id` = `courses`.`id` 
INNER JOIN `degrees` 
ON `courses`.`degree_id` = `degrees`.`id` 
INNER JOIN `departments` 
ON `degrees`.`department_id` = `departments`.`id`
WHERE `departments`.`name` = "Dipartimento di Matematica"

7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per
superare ciascuno dei suoi esami