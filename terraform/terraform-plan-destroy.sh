#!/bin/bash

# https://patorjk.com/software/taag/
# Font Name: ANSI Shadow
echo "████████╗███████╗██████╗ ██████╗  █████╗ ███████╗ ██████╗ ██████╗ ███╗   ███╗";
echo "╚══██╔══╝██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔═══██╗██╔══██╗████╗ ████║";
echo "   ██║   █████╗  ██████╔╝██████╔╝███████║█████╗  ██║   ██║██████╔╝██╔████╔██║";
echo "   ██║   ██╔══╝  ██╔══██╗██╔══██╗██╔══██║██╔══╝  ██║   ██║██╔══██╗██║╚██╔╝██║";
echo "   ██║   ███████╗██║  ██║██║  ██║██║  ██║██║     ╚██████╔╝██║  ██║██║ ╚═╝ ██║";
echo "   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝      ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝";
echo "                                                                             ";
# https://www.webfx.com/tools/emoji-cheat-sheet/

terraform --version

echo "terraform plan -destroy"
echo "📝";
terraform plan -destroy -var-file=./terraform.tfvars -out=destroy.tfdestroy