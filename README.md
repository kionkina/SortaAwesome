# Sorta Awesome
David Frid, Karina Ionkina, Mark Shafran
# Sort Visualizer
## (Sorta Helpful for Future Thinkers)

### What is Presented to the User
Our project has made a visualizer for multiple sorting algorithms we have developed this semester. The user will be able to choose
the sort they wish to see visualized. They will then be presented with the option of seeing a small scale array get sorted using the algorithm (visualized using boxes with values in the place of an array, and done very slowly) or a large scale array get sorted
(visualized using 300 rectangles get sorted using the algorithm based on their height).
If the user wishes to return to the title screen, they must press 'M'
If the user wishes to reset the sort they are watching, they must press 'R'

### How it works
#### Large Scale
The large scale sorts are done quite simply. Before the program is run, an ArrayList of Arrays of Rectangles called order is created, along with an array of objects caled Rectangles, each of which has a height representing its value. The Rectangles in the array are
randomized by height. The array of Rectangles is then sorted using the algorithm one step at a time, and each step is saved in order.
When the program is run, each array of order is printed out one at a time, showing the progression from unsorted to sorted.
#### Small Scale
For the small scale visualization, an array is displayed, with each index represented by a white rectangle and the corresponding integer over it. 
The array is then sorted using the selected sorting algorithm. The code was changed to adapt to the processing format, where display is refreshing once each second. 
For selection sort and insertion sort, a red partition is displayed to separate the sorted part of the array from the unsorted part. 
In Selection Sort, a blue color is representative of maxPos.
In Insertion Sort, the indecies being swapped are colored purple. The entire array is colored blue when the array is sorted.

### Launch Instructions
1. Clone the SortaAwesome repository: git@github.com:kionkina/SortaAwesome.git OR https://github.com/kionkina/SortaAwesome.git
2. Navigate to the directory holding the repository on your computer
3. $ cd SortaAwesome
4. $ cd SA
5. $ processing SA.pde
6. Press the "Play" button within processing
