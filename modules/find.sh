function finds()
{
	find . -name "$1" -print
}

function findo()
{
	find . -name "$1" -print0 | xargs -0 open
}