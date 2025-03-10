simple DDoSNode
{
    parameters:
        @display("i=block/routing"); // Default icon for visualization
    gates:
        inout gate[];
}

network DDoSNetwork
{
    @display("bgb=421,250");
    types:
        channel Channel extends ned.DelayChannel
        {
            delay = 100ms;
        }
    submodules:
        //node[10]: DDoSNode;
        dDoSNode0: DDoSNode {
            @display("p=212,206");
        }
        dDoSNode1: DDoSNode {
            @display("p=129,206");
        }
        dDoSNode2: DDoSNode {
            @display("p=57,167");
        }
        dDoSNode3: DDoSNode {
            @display("p=57,70");
        }
        dDoSNode4: DDoSNode {
            @display("p=129,38");
        }
        dDoSNode5: DDoSNode {
            @display("p=212,23");
        }
        dDoSNode6: DDoSNode {
            @display("p=299,38");
        }
        dDoSNode7: DDoSNode {
            @display("p=370,62");
        }
        dDoSNode8: DDoSNode {
            @display("p=376,167");
        }
        dDoSNode9: DDoSNode {
            @display("p=299,206");
        }
    connections:
        dDoSNode0.gate++ <--> Channel <--> dDoSNode1.gate++;
        dDoSNode0.gate++ <--> Channel <--> dDoSNode2.gate++;
        dDoSNode0.gate++ <--> Channel <--> dDoSNode3.gate++;
        dDoSNode0.gate++ <--> Channel <--> dDoSNode4.gate++;
        dDoSNode0.gate++ <--> Channel <--> dDoSNode5.gate++;
        dDoSNode0.gate++ <--> Channel <--> dDoSNode6.gate++;
        dDoSNode0.gate++ <--> Channel <--> dDoSNode7.gate++;
        dDoSNode0.gate++ <--> Channel <--> dDoSNode8.gate++;
        dDoSNode0.gate++ <--> Channel <--> dDoSNode9.gate++;

        dDoSNode1.gate++ <--> Channel <--> dDoSNode2.gate++;
        dDoSNode1.gate++ <--> Channel <--> dDoSNode3.gate++;
        dDoSNode1.gate++ <--> Channel <--> dDoSNode4.gate++;
        dDoSNode1.gate++ <--> Channel <--> dDoSNode5.gate++;
        dDoSNode1.gate++ <--> Channel <--> dDoSNode6.gate++;
        dDoSNode1.gate++ <--> Channel <--> dDoSNode7.gate++;
        dDoSNode1.gate++ <--> Channel <--> dDoSNode8.gate++;
        dDoSNode1.gate++ <--> Channel <--> dDoSNode9.gate++;
        dDoSNode1.gate++ <--> Channel <--> dDoSNode0.gate++;

        dDoSNode2.gate++ <--> Channel <--> dDoSNode3.gate++;
        dDoSNode2.gate++ <--> Channel <--> dDoSNode4.gate++;
        dDoSNode2.gate++ <--> Channel <--> dDoSNode5.gate++;
        dDoSNode2.gate++ <--> Channel <--> dDoSNode6.gate++;
        dDoSNode2.gate++ <--> Channel <--> dDoSNode7.gate++;
        dDoSNode2.gate++ <--> Channel <--> dDoSNode8.gate++;
        dDoSNode2.gate++ <--> Channel <--> dDoSNode9.gate++;
        dDoSNode2.gate++ <--> Channel <--> dDoSNode0.gate++;
        dDoSNode2.gate++ <--> Channel <--> dDoSNode1.gate++;

        dDoSNode3.gate++ <--> Channel <--> dDoSNode4.gate++;
        dDoSNode3.gate++ <--> Channel <--> dDoSNode5.gate++;
        dDoSNode3.gate++ <--> Channel <--> dDoSNode6.gate++;
        dDoSNode3.gate++ <--> Channel <--> dDoSNode7.gate++;
        dDoSNode3.gate++ <--> Channel <--> dDoSNode8.gate++;
        dDoSNode3.gate++ <--> Channel <--> dDoSNode9.gate++;
        dDoSNode3.gate++ <--> Channel <--> dDoSNode0.gate++;
        dDoSNode3.gate++ <--> Channel <--> dDoSNode1.gate++;
        dDoSNode3.gate++ <--> Channel <--> dDoSNode2.gate++;

        dDoSNode4.gate++ <--> Channel <--> dDoSNode5.gate++;
        dDoSNode4.gate++ <--> Channel <--> dDoSNode6.gate++;
        dDoSNode4.gate++ <--> Channel <--> dDoSNode7.gate++;
        dDoSNode4.gate++ <--> Channel <--> dDoSNode8.gate++;
        dDoSNode4.gate++ <--> Channel <--> dDoSNode9.gate++;
        dDoSNode4.gate++ <--> Channel <--> dDoSNode0.gate++;
        dDoSNode4.gate++ <--> Channel <--> dDoSNode1.gate++;
        dDoSNode4.gate++ <--> Channel <--> dDoSNode2.gate++;
        dDoSNode4.gate++ <--> Channel <--> dDoSNode3.gate++;

        dDoSNode5.gate++ <--> Channel <--> dDoSNode6.gate++;
        dDoSNode5.gate++ <--> Channel <--> dDoSNode7.gate++;
        dDoSNode5.gate++ <--> Channel <--> dDoSNode8.gate++;
        dDoSNode5.gate++ <--> Channel <--> dDoSNode9.gate++;
        dDoSNode5.gate++ <--> Channel <--> dDoSNode0.gate++;
        dDoSNode5.gate++ <--> Channel <--> dDoSNode1.gate++;
        dDoSNode5.gate++ <--> Channel <--> dDoSNode2.gate++;
        dDoSNode5.gate++ <--> Channel <--> dDoSNode3.gate++;
        dDoSNode5.gate++ <--> Channel <--> dDoSNode4.gate++;

        dDoSNode6.gate++ <--> Channel <--> dDoSNode7.gate++;
        dDoSNode6.gate++ <--> Channel <--> dDoSNode8.gate++;
        dDoSNode6.gate++ <--> Channel <--> dDoSNode9.gate++;
        dDoSNode6.gate++ <--> Channel <--> dDoSNode0.gate++;
        dDoSNode6.gate++ <--> Channel <--> dDoSNode1.gate++;
        dDoSNode6.gate++ <--> Channel <--> dDoSNode2.gate++;
        dDoSNode6.gate++ <--> Channel <--> dDoSNode3.gate++;
        dDoSNode6.gate++ <--> Channel <--> dDoSNode4.gate++;
        dDoSNode6.gate++ <--> Channel <--> dDoSNode5.gate++;

        dDoSNode7.gate++ <--> Channel <--> dDoSNode8.gate++;
        dDoSNode7.gate++ <--> Channel <--> dDoSNode9.gate++;
        dDoSNode7.gate++ <--> Channel <--> dDoSNode0.gate++;
        dDoSNode7.gate++ <--> Channel <--> dDoSNode1.gate++;
        dDoSNode7.gate++ <--> Channel <--> dDoSNode2.gate++;
        dDoSNode7.gate++ <--> Channel <--> dDoSNode3.gate++;
        dDoSNode7.gate++ <--> Channel <--> dDoSNode4.gate++;
        dDoSNode7.gate++ <--> Channel <--> dDoSNode5.gate++;
        dDoSNode7.gate++ <--> Channel <--> dDoSNode6.gate++;

        dDoSNode8.gate++ <--> Channel <--> dDoSNode9.gate++;
        dDoSNode8.gate++ <--> Channel <--> dDoSNode0.gate++;
        dDoSNode8.gate++ <--> Channel <--> dDoSNode1.gate++;
        dDoSNode8.gate++ <--> Channel <--> dDoSNode2.gate++;
        dDoSNode8.gate++ <--> Channel <--> dDoSNode3.gate++;
        dDoSNode8.gate++ <--> Channel <--> dDoSNode4.gate++;
        dDoSNode8.gate++ <--> Channel <--> dDoSNode5.gate++;
        dDoSNode8.gate++ <--> Channel <--> dDoSNode6.gate++;
        dDoSNode8.gate++ <--> Channel <--> dDoSNode7.gate++;

        dDoSNode9.gate++ <--> Channel <--> dDoSNode0.gate++;
        dDoSNode9.gate++ <--> Channel <--> dDoSNode1.gate++;
        dDoSNode9.gate++ <--> Channel <--> dDoSNode2.gate++;
        dDoSNode9.gate++ <--> Channel <--> dDoSNode3.gate++;
        dDoSNode9.gate++ <--> Channel <--> dDoSNode4.gate++;
        dDoSNode9.gate++ <--> Channel <--> dDoSNode5.gate++;
        dDoSNode9.gate++ <--> Channel <--> dDoSNode6.gate++;
        dDoSNode9.gate++ <--> Channel <--> dDoSNode7.gate++;
        dDoSNode9.gate++ <--> Channel <--> dDoSNode8.gate++;

}
