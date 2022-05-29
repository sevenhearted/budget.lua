local expenseFile = arg[1] ~= '-' and arg[1] or 'expense'
local incomeFile = arg[2] or 'income'

-- Find sum, recursively if the item is a table
function calc(tbl, isRoot)
	local isRoot = isRoot or false
	local total = 0
	local multiplier = tbl.multiplier or 1
	tbl.multiplier = nil
	for k,v in pairs(tbl) do
		if type(v) == 'table' then v = calc(v)
		else v = (v * multiplier) end
		if isRoot then print(string.format('%-17s%7.2f', k, v)) end -- Print base-level items
		total = total + v
	end
	return total
end

local expense = calc(require(expenseFile), true)
print()
local income = calc(require(incomeFile), true)
print()

print(string.format('  income\t %7.2f\n- expense\t %7.2f\n========================\n  disposable\t %7.2f',
	income, expense, income - expense))
