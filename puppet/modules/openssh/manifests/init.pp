# Install openssh

class openssh::install {

    package{'openssh-client':
        ensure=>present,
    }

    package{'openssh-server':
        ensure=>present,
    }

}
