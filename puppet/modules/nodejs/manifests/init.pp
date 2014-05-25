# Install nodejs

class nodejs::install {

    # exec { "add-repo-nodejs":
    #     command     => "add-apt-repository ppa:chris-lea/node.js",
    #     require     => Package['python-software-properties'],
    # }

    # exec { "update-nodejs":
    #     command     => "apt-get update",
    #     require     => Exec['add-repo-nodejs'],
    # }

    package{'nodejs':
        ensure        =>present,
        # require     => Exec['update-nodejs'],
    }

}
