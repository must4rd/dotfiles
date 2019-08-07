import gi
import os
gi.require_version('Gtk', '3.0')
from gi.repository import Gtk
from gi.repository import Gdk
import subprocess

class MyWindow(Gtk.Window):

    key = Gdk.KEY_h
    key = Gdk.KEY_j
    key = Gdk.KEY_k
    key = Gdk.KEY_l
    

    def __init__(self):
        # init the base class (Gtk.Window)
        super().__init__()
        Gtk.Window.__init__(self, "Support")
        self.set_border_width(4);
        
        # Tell Gtk what to do when the window is closed (in this case quit the main loop)
        self.connect("delete-event", Gtk.main_quit)

        # handler when any key is pressed
        self.connect("key-press-event",self.on_key_press_event)

        # Window content goes in a vertical box
        box = Gtk.VBox()


        # a helpful label
        instruct = Gtk.Label("j Password with click"  )
        box.add(instruct)
        instruct = Gtk.Label("k Password without click" )
        box.add(instruct)
        instruct = Gtk.Label("f Tickets" )
        box.add(instruct)
        instruct = Gtk.Label("w Wiki" )
        box.add(instruct)

        # the label that will respond to the event
        self.label = Gtk.Label(label="")

        # Add the label to the window
        #box.add(self.label)

        self.add(box)

    def on_key_press_event(self, widget, event):

        # see if we recognise a keypress
        if event.keyval == Gdk.KEY_j:
            os.system('sh /home/must4rd/.bin/clicks/support.sh')
            #subprocess.run(['sh support'])
            Gtk.main_quit()

        if event.keyval == Gdk.KEY_k:
            os.system('sh /home/must4rd/.bin/clicks/support1.sh')
            Gtk.main_quit()
        

        if event.keyval == Gdk.KEY_f:
            os.system('xdotool mousemove 2630 150 click 1')
            os.system('sleep 0.3')
            os.system('xdotool mousemove 2630 150 click 1')
            Gtk.main_quit()

        if event.keyval == Gdk.KEY_w:
            os.system('xdotool mousemove 2630 560 click 1')
            os.system('sleep 0.3')
            os.system('xdotool mousemove 2630 390 click 1')
            Gtk.main_quit()

        if event.keyval == Gdk.KEY_Escape:
            Gtk.main_quit()

if __name__ == "__main__":
    win = MyWindow()
    win.show_all()
    win.move(3000, 350)

    # Start the Gtk main loop
    Gtk.main()
