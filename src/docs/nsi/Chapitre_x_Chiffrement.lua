function _init()
	window(322,222)
	g = create_gui()
	title = "Bac NSI - code caesar"
	ascii_start = 65
	ascii_end = ascii_start + 25
	word = "HELLO"
	swap = 1
	update = true
	set_buttons()
end

function rot13(s)
  local r = ""
  for c in all(s) do
    if c>='a' and c<='z' then
      -- subtract ord('a') == 97 to make the range 0..25, 
      -- but also add 13 to rotate the alphabet by half, 
      -- giving -97 + 13 = -84, then modulo and add 97 back
      c = chr((ord(c) - 84) % 26 + 97)
    end
    r = r..c
  end
  return r
end

function swap_letter(s)
	new_word = ""
	--rectfill(100, 100, 130, 130, 1)
	--print(s, 100, 100, 8)
	for i=1, #word do
		new_word = new_word..chr(ord(sub(word, i, i)) + s)
		
	end
	--for c in all(word) do
	--	print(c, 100, 100, 7)
	--	new_word = new_word..c
	--end
	--print(len, 100, 110, 7)
	word = new_word
end

function set_buttons()
	
	g:attach_button({
		x=10,
		y=100,
		label="DECODE", 
		bgcol=0x0710, 
		fgcol=0x111c,
		tap=function()
			swap_letter(-swap)
			update = true
		end
	})

	g:attach_button({
		x=60,
		y=100,
		label="CODE", 
		bgcol=0x0710, 
		fgcol=0x111c,
		tap=function()
			swap_letter(swap)
			update = true
		end
	})
end

function display_cpu()
	rectfill(310, 210, 319, 219, 0)
	print(string.format("cpu:%.3f",stat(1)), 270, 210, 10)
end

function _draw()
	if update then
	cls(1)
	rect(0,0,321,221,0)
	print(title, 1, 1, 28)
	print(chr(ascii_start))
	print(chr(ascii_end))
	print(word)
	print(new_word)
	udpate = false
	end
	g:update_all()
	g:draw_all()
	display_cpu()
end



-- https://pico-8.fandom.com/wiki/P8SCII