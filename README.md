# Shedyule

##Build a planner

This software will tackle the following problem.

Imagine you are preparing a system to be able to coordinate the execution of a large number of tasks. Many of these tasks are dependent on each other and all have different requirements. As resources, you have a heterogeneous cluster of computers. You wish to exploit parallelism and compete the entire set of tasks as quickly as possible.

Thelist of tasks, and their dependencies, in a YAML file that looks like so:

````
task1:

 cores_required: 2

 execution_time: 100

task2:

 cores_required: 1

 execution_time: 200

 parent_tasks: task1

task3:

 cores_required: 4

 execution_time: 50

 parent_tasks: "task1, task2"
````

cores_required means that the all the cores must be available on the same computing resource, execution_time is the number of global “ticks” that pass before the task will be complete and can release all its computing resources, and the parent_tasks must be completely finished executing before a particular task can start.

The computing resources and their number of available cores will be input in a YAML as so:

````
compute1: 2

compute2: 2

compute3: 6
````

This program will read those two files, and then emit an ordered scheduling plan that manages all the dependencies (execution time, number of cores, parent tasks). The goal is to execute the full lists of tasks as quickly as possible. The plan may look something like:

````
task1: compute1

task2: compute1

task3: compute3
````