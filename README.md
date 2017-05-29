David Frid, Karina Ionkina, Mark Shafran
# Sort Visualizer
## (Sorta Helpful for Future Thinkers)

### What is Presented to the User
Our project has made a visualizer for multiple sorting algorithms we have developed this semester. The user will be able to choose
the sort they wish to see visualized. They will then be presented with the option of seeing a small scale array get sorted using the algorithm (visualized using boxes with values in the place of an array, and done very slowly) or a large scale array get sorted
(visualized using 300 rectangles get sorted using the algorithm based on their height).

### How it works
The large scale sorts are done quite simply. Before the program is run, an ArrayList of Arrays of Rectangles called order is created, along with an array of objects caled Rectangles, each of which has a height representing its value. The Rectangles in the array are
randomized by height. The array of Rectangles is then sorted using the algorithm one step at a time, and each step is saved in order.
When the program is run, each array of order is printed out one at a time, showing the progression from unsorted to sorted.

### Launch Instructions
1. Clone the SortaAwesome repository: git@github.com:kionkina/SortaAwesome.git OR https://github.com/kionkina/SortaAwesome.git
2. Navigate to the repository on your computer
3. Navigate to the SA directory in the SortaAwesome repository
4. Open SA.pde
5. Press the "Play" button once you have opened SA.pde and it will run
(NOTE: AS OF 05/29/17, OPENING SA WILL ONLY ALLOW YOU TO SEE THE SORTS AVAILABLE AND CHOOSE LARGE SCALE/SMALL SCALE. HOWEVER, THEY ARE
NOT CONNECTED TO ANY OF THE SORTS AND WILL NOT SHOW ANY VISUALIZATION OF THE SORTING ALGORITHMS. UNTIL FURTHER NOTICE, TO RUN THE SORTS, YOU MUST OPEN THEM EACH INDEPENDENTLY AND RUN THEM INDEPENDENTLY. THIS WILL BE CHANGED VERY SOON)
