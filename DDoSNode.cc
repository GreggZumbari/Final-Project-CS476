// Code adapted from OMNeT++ example code
#include <omnetpp.h>
#include "inet/common/INETDefs.h"
#include "inet/common/packet/Packet.h"
#include "inet/networklayer/common/L3AddressResolver.h"
#include "inet/queueing/base/PacketSinkBase.h"

using namespace omnetpp;
using namespace inet;

class DDoSServer : public queueing::PacketSinkBase
{
protected:
    simsignal_t dropSignal;
    float dropRate = 0.1;   // Set manually for now, will be determined by CC later
    int receivedPackets = 0;
    int droppedPackets = 0;

    virtual void initialize(int stage) override
    {
        PacketSinkBase::initialize(stage);
        if (stage == INITSTAGE_LOCAL)
        {
            dropSignal = registerSignal("dropSignal");
        }
    }

    virtual void processPacket(Packet *packet) override
    {
        // Decide whether to drop the packet or not
        if (uniform(0, 1) < dropRate)
        {
            droppedPackets++;
            emit(dropSignal, droppedPackets);
            delete packet;
            return;
        }
        receivedPackets++;
        delete packet;
    }
};

Define_Module(DDoSServer);
