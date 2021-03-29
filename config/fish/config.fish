function fish_prompt
	set_color $textcol red
	echo -n (hostname)" "
	set_color $textcol blue
	echo -n (prompt_pwd)
	set_color $textcol normal
	echo -n " % "
end
