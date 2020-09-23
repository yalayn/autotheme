# @Author: yordin
# @Date:   2020-09-12T21:14:37-03:00
# @Last modified by:   yordin
# @Last modified time: 2020-09-20T23:44:51-03:00

from gi.repository import Gtk
import gi
gi.require_version('Gtk', '3.0')


class CalcWindow(Gtk.Window):
    estructura_calculadora = [
        ['1', '2', '3', '4', '-', 'DEL'],
        ['5', '6', '7', '8', '/', 'AC'],
        ['9', '0', '%', '*', '+', '='],
    ]

    def __init__(self):
        Gtk.Window.__init__(self, title='Autotheme')

        vbox1 = Gtk.Box(orientation=Gtk.Orientation.VERTICAL)
        self.add(vbox1)
        vbox2 = Gtk.Box(orientation=Gtk.Orientation.VERTICAL)
        self.add(vbox2)

        grid = Gtk.Grid()
        self.entry = Gtk.Entry()

        vbox1.pack_start(self.entry, True, True, 0)
        vbox1.pack_end(vbox2, True, True, 0)
        
        vbox2.pack_start(self.entry, True, True, 0)
        vbox2.pack_end(grid, True, True, 0)

        y = 0
        for fila in self.estructura_calculadora:
            x = 0
            for columna in fila:
                button = Gtk.Button(label=columna)
                button.connect("clicked", self.__clicked_button)
                grid.attach(button, x, y, 1, 1)
                x += 1
            y += 1

    def __clicked_button(self, widget):
        label = widget.get_label()
        text_entry = self.entry.get_text()
        if(label == "DEL"):
            text_entry = text_entry[:-1]
            self.entry.set_text(text_entry)
        elif(label == "AC"):
            self.entry.set_text("")
        elif(label == "="):
            result = str(eval(text_entry))
            self.entry.set_text(result)
        else:
            text_entry += label
            self.entry.set_text(text_entry)


win = CalcWindow()
win.connect("destroy", Gtk.main_quit)
win.show_all()
Gtk.main()


