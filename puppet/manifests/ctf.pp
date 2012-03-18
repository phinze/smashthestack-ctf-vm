class ctf {
  package { "build-essential":
    ensure => installed
  }

  ubuntu_user { "level01":  uid => "8001", password => '$6$oGAtxP.0$wZW4oVDC14vk3kv0ycaR8PnCKdn6a5y3RF9TtSO/xQnHWCqxydObOqEp/60Mz8bxgDcapFFryrgRRoXoZnlGX1' }
  ubuntu_user { "level02":  uid => "8002", password => '$6$gUYNGD4p$hKk3t6pyYNcvKc1Mi0ImQlPnZPv/GB1HageMqogxU49a0fn1XbJzBRS3G1iIFqTIiOK7aVcWD5qQJu1csOgZM/' }
  ubuntu_user { "level03":  uid => "8003", password => '$6$txiw/1gL$vALbL9apAsjqVnBl2id9iAw6vslkneAQecUVJfmojaSgY8yTfnj0zauZbguZveo9fuz50sM0LV4BfMoPQW19Z1' }
  ubuntu_user { "level04":  uid => "8004", password => '$6$BZwD6MDb$SPa0.jRY/bw2ASYIqAyjyEDTSIt9ZKB73wE0eOyGFLybUn50fdGaMkRyZHonr.8IGhvCbt9i4yVKhf4SbLQ2a.' }
  ubuntu_user { "level05":  uid => "8005", password => '$6$E4cuU4KC$64fPQPdcdguRr3nri/SeejMR7xGMGCE/vyG/2CRH9dJXrGjn66E1qN6gq5.109L5qof6yRu2IyRw5KULcfn.x0' }
  ubuntu_user { "level06":  uid => "8006", password => '$6$SCkUA4e6$PXc/2P/erPeScSDfptjRXE1DYZpF7isVTdcbnjaEsOedv6LATXtK./8IrU8Fzd6qtkB6Nr509Gfw4u4DRC0Ip1' }
  ubuntu_user { "the-flag": uid => "8999", password => '$6$qJASuWH4$Pn2iofEQ5.0DTMME0GhyWJCSPw24XAB5c2Qz8vjdFNJsJTtULST6btErOs1BBPh925nSagEdBihNABl24n7L20' }

}

