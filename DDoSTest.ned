//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
//
import inet.node.inet.StandardHost;
import inet.applications.tcpapp.TcpServerApp;


network DDoSNetwork
{
    parameters:
        int baseX = 100;  // Define base X position
        int spacingA = 30;  // Define spacing between nodes
        int spacingB = 70;
    //int xpos;
    types:
        channel Channel extends ned.DatarateChannel
        {
            delay = 100ms;
            datarate = 100Mbps;  // Define data rate for Ethernet
            ber = 0;             // Bit error rate (optional)
            per = 0;             // Packet error rate (optional)
        }

    submodules:

        server: StandardHost {

            @display("p=282,109");

        }

        attacker[10]: StandardHost {   // 10 attacker nodes

            //@display("p=" + string(baseX + index * spacingA) + ",100"); // Positioning
            @display("i=device/pc;p=169,30");


        }

        legitimateClient[3]: StandardHost {  // 3 legitimate clients

            //@display("p=" + string(baseX + index * spacingB) + ",300"); // Positioning
            @display("i=device/pc");


        }

    connections allowunconnected:

        for i=0..9 {
            attacker[i].ethg++ <--> Channel <--> server.ethg++;

        }

        for i=0..2 {
            legitimateClient[i].ethg++ <--> Channel <--> server.ethg++;

        }

}
