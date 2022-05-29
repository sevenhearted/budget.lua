# budget.lua

Budgeting my monthly expenses with Excel and even LibreCalc was just annoying and excessive for me, so I elected to go the esoteric route.
With budget.lua, your expenses and incomes are just Lua tables in modules, so you can do arithmetic right in the file.
Then, how much money you waste becomes quickly apparent, with the simple console printout of your resultant disposable income.

## 2007 YouTube tutorial

_[Dreamscape by 009 Sound System playing way too loud](https://www.youtube.com/watch?v=TKfS5zVfGBc)_

hey guys:) today i will be showing you how to ue budget.lua  
plz give 5 stars and subscribe!!! ok now let  
s get into th video

Seriously though.

Merely running `lua budget.lua` attempts to use the files _expense.lua_ and _income.lua_ in the working directory.
Sometimes you may want to temporarily use other modules to plan hypothetical changes in expenses or incomes.
Let's try this out now using the included example files, with `lua budget.lua example-expense example-income`.
Do not include the `.lua` suffix, because we are just giving the names of the modules, not the filenames.
The expense module is always the first argument, and income the second.
Imagine I'm a wizard and I knew exactly how much you make, so you just need to make a new `expense.lua`.
To use a different income module and the default expense one, you only need to type `lua budget.lua - example-income`.

That's all there is to it. This is meant to be minimally featured, but feedback is welcome.

Developed using Lua 5.3.
