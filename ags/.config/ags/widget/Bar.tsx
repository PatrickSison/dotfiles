import { App, Astal, Gtk, Gdk } from "astal/gtk4"
import { Variable } from "astal"
import Battery from "gi://AstalBattery";

const time = Variable("").poll(1000, "date")

export default function Bar(gdkmonitor: Gdk.Monitor) {
    const { TOP, LEFT, RIGHT } = Astal.WindowAnchor

    const battery = Battery.get_default();

    return (<window
        visible
        cssClasses={["Bar"]}
        gdkmonitor={gdkmonitor}
        exclusivity={Astal.Exclusivity.EXCLUSIVE}
        anchor={TOP | LEFT | RIGHT}
        application={App}>
        <centerbox cssName="centerbox">
            <box>
                <label label={`${battery.percentage}`}/>
            </box>
            <box />
            <menubutton
                hexpand
                halign={Gtk.Align.CENTER}
            >
                <label label={time()} />
                <popover>
                    <Gtk.Calendar />
                </popover>
            </menubutton>
        </centerbox>
    </window>
	)
}
