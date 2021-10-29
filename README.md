# README

# Idea

- **A user should be able to log in (so tests and tasks can be saved for the next time)**
- A user should be able to start a test
- He/She adds a name and the desired number of tasks
- A test contains the number of multiplication and division tasks from user input
  - Tasks should be picked randomly from the database (only if user logs in for the first time)
  - Tasks should contain a mix of multiplication and division tasks
  - **Task should not be duplicated in one test**
- **A user can input the solutions to the task**
- **After solution input the following information should be saved:**
  - How often was this tasks answered correctly / incorrectly (increment by one)
  - How long did it take to answer this task?
- **When all tasks of this test were answered, the test is over**
- **There should be an output how many tasks in the test were solved correctly / incorrectly**
- **Starting the next test, the picking of the tasks should follow these rules:**
  - until the number of tasks is picked:
    - start with the tasks that were answered incorrectly most often
    - if in doubt start with the tasks that took longest to answer
    - if there is no task left that were answered incorrectly pick random tasks that were not answered before at all
    - if there are no unanswered tasks left, start with the correctly answered tasks that took the longest to answer

## TO DO

- Test updaten mit den ids der random_tasks
- aufgabe 1 / number_of tasks anzeigen
- eine Aufgabe nach der anderen anzeigen und auf Input warten

- input überprüfen und tasks updaten:

  - if input == res increment "correct" +1
  - if input != res increment incorrect -1

- am Ende

  - number_of_tasks, number_of_correct und number_of_incorrect setzen
  - ergebnisse anzeigen

- Model User anlegen, um Nutzer wiedererkennen zu können

- beim 2. Test
  solange noch tasks da sind, die nicht in test.tasks sind:
  die noch nicht gefragten abfragen
  wenn alle abgefragt wurden, dann mit denen anfangen, bei deinen incorrect am hoechsten ist

-
