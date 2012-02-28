# Simple Server

`simple_server` is an interface for WEBrick](http://www.ruby-doc.org/stdlib-1.9.3/libdoc/webrick/rdoc/index.html) ruby server. It allows for serving static files by running the server in any directory. Useful for writing plain HTML websites. Direct your browser to `http://localhost:8000` to see the directory served with WEBrick.

### Installing Simple Server

    sudo curl https://raw.github.com/jpsilvashy/simple_server/master/install.sh | sh

Enter your password and you'll have access to `simple_server` from anywhere.

## Usage

`cd` to your working directory

    cd ~/Projects/my_web_site

Then run

    simple_server

You should see:

    *** Starting WEBrick with Simple Server
    *** Stop WEBrick with ctrl+c
    [2012-02-28 01:04:31] INFO  WEBrick 1.3.1
    [2012-02-28 01:04:31] INFO  ruby 1.9.2 (2011-02-18) [x86_64-darwin10.7.4]
    [2012-02-28 01:04:31] INFO  WEBrick::HTTPServer#start: pid=11068 port=8000

Go to [http://localhost:8000](http://localhost:8000) in your browser.