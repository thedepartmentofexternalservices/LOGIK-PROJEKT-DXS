#!/bin/bash

# -------------------------------------------------------------------------- #

# filename: "function_15-projekt_flame.sh"

# -------------------------------------------------------------------------- #

# ========================================================================== #
# This section creates the new logik projekt flame projekt.
# ========================================================================== #

# Function to create a logik projekt flame projekt using wiretap_create_node
create_wiretap_projekt() {

    # ---------------------------------------------------------------------- #

    # Set the umask to 0
    umask 0

    # ---------------------------------------------------------------------- #

    # Create the logik projekt flame projekt node using wiretap_create_node

    # -n <parent node ID>
    # -d <display name>
    # -t <server-specific node type string (default = NODE)>
    # [-h <host name or IP address> (default = 127.0.0.1)]
    # [-s <metadata stream name> (default = none]
    # [-f <file containing metadata> (default = none)]
    # [-g <effective group>] (assumes super-user privileges)

    # ---------------------------------------------------------------------- #

    # Create a logik projekt flaem projekt node using wiretap
    /opt/Autodesk/wiretap/tools/current/wiretap_create_node \
    -n /volumes/stonefs \
    -d "$name" \
    -s XML \
    -f "$projekt_metadata_xml_file" \
    | sed 's/^/  /'
    echo -e "\n$separator\n"

    # ---------------------------------------------------------------------- #

}

# ========================================================================== #
# This section defines how to handle the main script function.
# ========================================================================== #

# Call the function to initialize the global variables
# create_wiretap_projekt

# Check if the script is being sourced or executed
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    create_wiretap_projekt
fi

# -------------------------------------------------------------------------- #

# ========================================================================== #
# C2 A9 2D 32 30 32 34 2D 4D 41 4E 5F 4D 41 44 45 5F 4D 41 54 45 52 49 61 4C #
# ========================================================================== #