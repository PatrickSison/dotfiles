import { Gdk } from "astal/gtk4";
import Battery from "gi://AstalBattery";
import { bind } from "astal";

export default function BatteryMeter(gdkmonitor: Gdk.Monitor) {
  const battery = Battery.get_default();
  return (
    <box>
      <label label={bind(battery, "batteryLevel")} />
      <label
        label={bind(battery, "charging").get() ? "Charging" : "Not Charging"}
      />
    </box>
  );
}
