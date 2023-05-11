#Create "experiment" branch
$ git branch experiment

#Checkout "experiment" branch
$ git checkout experiment

#Merge "experiment" branch into "main" branch
$ git merge experiment

#Conflicts in same file in two different branches
// script.js (main) 
function add(a, b) {
  // Implementation from the feature_branch
  return a + b;
}

// ----------------- Different Version -------------

// script.js (experiment branch)
function add(a, b) {
  // Implementation from the main branch
  console.log("The sum is: " + (a + b));
  return a + b;
}

#Successful merge after conflict resolution
$ git add script.js
$ git commit -m "Merge the 'experiment' branch into 'main'"