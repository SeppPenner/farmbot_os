defmodule FarmbotOS.Configurator.FakeNetworkLayer do
  @behaviour FarmbotOS.Configurator.NetworkLayer

  @impl FarmbotOS.Configurator.NetworkLayer
  def list_interfaces() do
    [{"eth0", %{mac_address: "not real lol"}}, {"wlan0", %{mac_address: "even more not real"}}]
  end

  @impl FarmbotOS.Configurator.NetworkLayer
  def scan(_ifname) do
    [
      %{
        ssid: "test psk",
        bssid: "de:ad:be:ef",
        level: 100,
        security: "WPA-PSK"
      },
      %{
        ssid: "test eap",
        bssid: "ca:fe:fo:od",
        level: 25,
        security: "WPA-EAP"
      },
      %{
        ssid: "test none",
        bssid: "ba:ad:fo:od",
        level: 50,
        security: "NONE"
      }
    ]
  end
end
