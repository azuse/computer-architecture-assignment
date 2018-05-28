Problems encountered during f\*\*kingly making 54-instruction MIPS CPU and solutions
===



1. CPU is not initialized at all.
   - My stupid mistake of forgetting to update the wire identifier.
   - The CPU must respond to **positive edge of reset** to set PC because of the f\*\*king website autotest. (Asynchronous reset)
2. CPU runs for some instructions and then paused because PC turns into 'XXX.
   - The register file, memories must all respond to posedge edge of reset.