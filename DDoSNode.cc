#include <omnetpp.h>

using namespace omnetpp;

class DDoSNode : public cSimpleModule
{
  private:
    // Signal IDs for statistics
    simsignal_t numReceivedSignal;
    simsignal_t numDroppedSignal;

    // Counters for received and dropped messages
    long numReceived;
    long numDropped;

  protected:
    // Initialize the module
    virtual void initialize() override {
        // Initialize counters
        numReceived = 0;
        numDropped = 0;
        // Register signals
        numReceivedSignal = registerSignal("numReceived");
        numDroppedSignal = registerSignal("numDropped");

        // Schedule the first message (for random packet generation)
        scheduleAt(simTime() + exponential(1.0), new cMessage("RandomMessage"));
    }

    // Handle incoming messages
    virtual void handleMessage(cMessage *msg) override {
        // If the message is a randomly generated message
        if (msg->isSelfMessage()) {
            // Generate a new random message and schedule it
            scheduleAt(simTime() + exponential(1.0), new cMessage("RandomMessage"));
            // Optionally, print the generated message time
            EV << "Generated a random message at time " << simTime() << "\n";
        } else {
            // Increment the received message counter
            numReceived++;
            // Emit the numReceived signal
            emit(numReceivedSignal, numReceived);

            // Simulate DDoS attack by dropping packets after a threshold
            if (numReceived > 100) {
                numDropped++;
                // Emit the numDropped signal
                emit(numDroppedSignal, numDropped);
                // Delete the message to simulate dropping
                delete msg;
                return;
            }

            // Otherwise, forward the message to the next module
            send(msg, "out");
        }
    }

    // Finalize the simulation
    virtual void finish() override {
        // Optionally, record final statistics or perform cleanup
    }
};

// Register the module with OMNeT++
Define_Module(DDoSNode);




