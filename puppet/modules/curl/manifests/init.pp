# Install curl

class curl::install {

  package{'curl':
    ensure=>present,
  }

}
