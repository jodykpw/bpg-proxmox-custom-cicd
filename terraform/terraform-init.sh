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

echo "terraform init";
echo "🚀";
terraform init \
  -backend-config=address=${TF_STATE_ADDRESS} \
  -backend-config=lock_address=${TF_STATE_ADDRESS}/lock \
  -backend-config=unlock_address=${TF_STATE_ADDRESS}/lock \
  -backend-config=username=${TF_STATE_USERNAME} \
  -backend-config=password=${TF_STATE_ACCESS_TOKEN} \
  -backend-config=lock_method=POST \
  -backend-config=unlock_method=DELETE \
  -backend-config=retry_wait_min=5