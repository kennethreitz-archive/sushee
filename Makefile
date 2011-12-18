run:
	love sushee

pack:
	rm -fr sushee.love
	cd sushee && zip -vr ../sushee.love .

build: pack
	rm -fr sushee.app
	cp -r /Applications/love.app sushee.app
	mv sushee.love sushee.app/Contents/Resources/
