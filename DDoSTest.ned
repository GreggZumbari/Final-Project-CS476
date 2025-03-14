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
//import inet.node.inet.StandardHost;
//import inet.applications.tcpapp.TcpServerApp;

import inet.node.inet.StandardHost;
import inet.node.inet.Router;
import inet.visualizer.common.IntegratedVisualizer;
import inet.node.ethernet.Eth10M;
import inet.node.ethernet.Eth100M;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;

network DDoSNetwork
{
    parameters:
        int numAttackers = default(10);				// Number of Attackers in the network (you can change this)
        int numLegitimateClients = default(2);		// Number of Legitimate Clients in the network (you can change this)
        
    submodules:
        // Using just one router & server to connect everyone
        router: Router {
            @display("p=350,200");
        }
        server: StandardHost {
            @display("p=500,200");
        }
        // Initialize the attackers
        attacker[numAttackers]: StandardHost {
            @display("p=200,150,row,100");
        }
        // Initialize the legit clients
        legitimateClient[numLegitimateClients]: StandardHost {
            @display("p=200,300,row,100");
            //@statistic[droppedPackets](title="Dropped Packets"; record=count,vector);
        }
        // This thing automatically creates routes between the hosts, router(s), and server(s)
		configurator: Ipv4NetworkConfigurator {
            @display("p=88,37");
        }
        // This thing is supposed to visualize the data collected from the simulation
        visualizer: IntegratedVisualizer {
            @display("p=267,37");
        }
    connections:
        // See "Design" tab for a more readable version of this
        router.ethg++ <--> Eth100M <--> server.ethg++;
        for i=0..numAttackers-1 {
            attacker[i].ethg++ <--> Eth100M <--> router.ethg++;
        }
        for i=0..numLegitimateClients-1 {
            legitimateClient[i].ethg++ <--> Eth100M <--> router.ethg++;
        }
}
