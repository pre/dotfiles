set -e
set -o xtrace
sudo -v

function hitEnter() {
	set +o xtrace
        echo "Hit enter to continue"
        read
	set -o xtrace
}
