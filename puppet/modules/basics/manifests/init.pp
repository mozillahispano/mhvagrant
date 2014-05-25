# Install git

class basics::install {

  package{'python-software-properties':
    ensure=>present,
  }

  package{'software-properties-common':
    ensure=>present,
  }
}
