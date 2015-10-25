# learning_by_doing
Description: Homework assignments for the Building the Toolbelt of a Junior Ruby on Rails developer class I took in 2015

< My notes from the coding of this assignment:

```
# my observations while coding this:
# puts play_array
# puts play_array.class
# print play_array
# puts ''

# Learnings:

# FEEDBACK:
# dup_array = orig_array.dup
# surprised when later changes to dup_array affected orig_array
# dup_array = orig_array
# so this was the better way to duplicate arrays
# dup_array = orig_array.take(10)

# working, but tricky to chop the last comma:
# print 'T-'
# play_array.reverse_each {|x| print x, ', '}
# print '... BLASTOFF!'

# working, but better practice to place in string
# print 'T-' + play_array.reverse.join(', ') + '... BLASTOFF!'
```
