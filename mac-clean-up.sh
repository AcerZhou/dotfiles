#/bin/sh

echo Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Prepare console to execute and ignore comments"
set -k

echo "Install Apps"
brew install nvm # Node version picker - https://github.com/nvm-sh/nvm
brew install go@1.16 # Golang - https://golang.org/

brew install git # Git CLI - https://git-scm.com/
brew install gh # Github CLI - https://github.com/cli/cli
brew install shellcheck # Shell script analyzer - https://www.shellcheck.net/
brew install jq # JSON processor - https://stedolan.github.io/jq/
brew install yq # YAML processor - https://github.com/mikefarah/yq
brew install coreutils # GNU utilities - https://www.gnu.org/software/coreutils/
brew install fzf #fzf - https://github.com/junegunn/fzf

brew install awscli # AWS CLI - https://aws.amazon.com/cli/
brew tap aws/tap && brew install aws-sam-cli # AWS SAM CLI - https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/what-is-sam.html

brew install --cask visual-studio-code # Lightweight code editor for popular languages - https://code.visualstudio.com/
# brew install --cask jetbrains-toolbox # Utility to install any Jetbrains IDE - https://www.jetbrains.com/toolbox-app/
brew install --cask docker # Tool to run containers - https://www.docker.com/
brew install --cask sequel-pro # Database management tool - https://www.sequelpro.com/
brew install --cask gifox # Capture GIFs - https://gifox.io
brew install --cask firefox # A popular browser - https://www.mozilla.org/en-US/firefox/new/
brew install --cask google-chrome # A popular browser - https://www.google.com.au/intl/en_au/chrome/
brew install --cask iterm2 # A better terminal - split panes, themes, notifications lots more! - https://iterm2.com/
# brew install --cask 1password # Password manager (ask for access in #help) - https://1password.com/
brew install --cask insomnia # An API client - https://insomnia.rest/
brew install --cask rectangle # Windows snapping in OSX - https://rectangleapp.com
brew install --cask alfred # Better spotlight search - https://www.alfredapp.com/
brew install --cask zoom # Video conferencing - https://zoom.us/
brew install --cask slack # Chat messenger - https://slack.com/intl/en-au/
