#!/bin/bash
echo "You have this orphan packages:"
package-cleanup --leaves

echo "Removing all orphan packages:"
sudo yum remove `package-cleanup --leaves`
