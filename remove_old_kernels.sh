#!/bin/bash
echo "You have those kernels:"
rpm -q kernel

sudo package-cleanup --oldkernels --count=2
echo "Old kernels removed."
