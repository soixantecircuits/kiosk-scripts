#!/bin/bash

# remove tearing
sudo sh -c "echo \"CLUTTER_PAINT=disable-clipped-redraws:disable-culling\" >> /etc/environment"
sudo sh -c "echo \"CLUTTER_VBLANK=True\" >> /etc/environment"
