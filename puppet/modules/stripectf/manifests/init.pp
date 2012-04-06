class stripectf {
  include smashthestack

  smashthestack::level { 'level01':
    uid => '8001',
    password => 'e9gx26YEb2',
    hashed_password => '$6$oGAtxP.0$wZW4oVDC14vk3kv0ycaR8PnCKdn6a5y3RF9TtSO/xQnHWCqxydObOqEp/60Mz8bxgDcapFFryrgRRoXoZnlGX1',
    source => 'puppet:///modules/stripectf/src/level01.c',
    next_user => 'level02'
  }
  smashthestack::level { 'level02':
    uid => '8002',
    password => 'kxlVXUvzv',
    hashed_password => '$6$gUYNGD4p$hKk3t6pyYNcvKc1Mi0ImQlPnZPv/GB1HageMqogxU49a0fn1XbJzBRS3G1iIFqTIiOK7aVcWD5qQJu1csOgZM/', 
    source => 'puppet:///modules/stripectf/src/level02.php',
    next_user => 'level03'
  }
  smashthestack::level { 'level03':
    uid => '8003',
    password => 'Or0m4UX07b',
    hashed_password => '$6$txiw/1gL$vALbL9apAsjqVnBl2id9iAw6vslkneAQecUVJfmojaSgY8yTfnj0zauZbguZveo9fuz50sM0LV4BfMoPQW19Z1',
    source => 'puppet:///modules/stripectf/src/level03.c',
    next_user => 'level04'
  }
  smashthestack::level { 'level04':
    uid => '8004',
    password => 'i5cBbPvPCpcP',
    hashed_password => '$6$txiw/1gL$vALbL9apAsjqVnBl2id9iAw6vslkneAQecUVJfmojaSgY8yTfnj0zauZbguZveo9fuz50sM0LV4BfMoPQW19Z1',
    source => 'puppet:///modules/stripectf/src/level04.c',
    next_user => 'level05'
  }
  smashthestack::level { 'level05':
    uid => '8005',
    password => 'fzfDGnSmd317',
    hashed_password => '$6$E4cuU4KC$64fPQPdcdguRr3nri/SeejMR7xGMGCE/vyG/2CRH9dJXrGjn66E1qN6gq5.109L5qof6yRu2IyRw5KULcfn.x0',
    source => 'puppet:///modules/stripectf/src/level05.py',
    next_user => 'level06'
  }
  smashthestack::level { 'level06':
    uid => '8006',
    password => 'SF2w8qU1QDj',
    hashed_password => '$6$SCkUA4e6$PXc/2P/erPeScSDfptjRXE1DYZpF7isVTdcbnjaEsOedv6LATXtK./8IrU8Fzd6qtkB6Nr509Gfw4u4DRC0Ip1',
    source => 'puppet:///modules/stripectf/src/level06.c',
    next_user => 'the-flag'
  }
  smashthestack::goal { 'the-flag':
    uid => '8999',
    password => 'theflagl0eFTtT5oi0nOTxO5',
    hashed_password => '$6$qJASuWH4$Pn2iofEQ5.0DTMME0GhyWJCSPw24XAB5c2Qz8vjdFNJsJTtULST6btErOs1BBPh925nSagEdBihNABl24n7L20'
  }
}
