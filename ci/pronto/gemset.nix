{
  addressable = {
    dependencies = ["public_suffix"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1fvchp2rhp2rmigx7qglf69xvjqvzq7x0g49naliw29r2bz656sy";
      type = "gem";
    };
    version = "2.7.0";
  };
  diff-lcs = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "18w22bjz424gzafv6nzv98h0aqkwz3d9xhm7cbr1wfbyas8zayza";
      type = "gem";
    };
    version = "1.3";
  };
  faraday = {
    dependencies = ["multipart-post"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "11yn7mhi4rl24brs2qfwysas14csjf1zmb835cfklqz5ka032xp6";
      type = "gem";
    };
    version = "1.0.0";
  };
  gitlab = {
    dependencies = ["httparty" "terminal-table"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "04m14gyacd2dbx8ddl6ka9yrvy8xykl1px1l2pyc347pi8q5nq3k";
      type = "gem";
    };
    version = "4.13.1";
  };
  httparty = {
    dependencies = ["mime-types" "multi_xml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0vzfzry2inyz9yd9x9zflm7rzwa3vlp9kl05ajpsxrx6gh8pzxy6";
      type = "gem";
    };
    version = "0.18.0";
  };
  mime-types = {
    dependencies = ["mime-types-data"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1zj12l9qk62anvk9bjvandpa6vy4xslil15wl6wlivyf51z773vh";
      type = "gem";
    };
    version = "3.3.1";
  };
  mime-types-data = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "18x61fc36951vw7f74gq8cyybdpxvyg5d0azvqhrs82ddw3v16xh";
      type = "gem";
    };
    version = "3.2019.1009";
  };
  multi_xml = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0lmd4f401mvravi1i1yq7b2qjjli0yq7dfc4p1nj5nwajp7r6hyj";
      type = "gem";
    };
    version = "0.6.0";
  };
  multipart-post = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1zgw9zlwh2a6i1yvhhc4a84ry1hv824d6g2iw2chs3k5aylpmpfj";
      type = "gem";
    };
    version = "2.1.1";
  };
  octokit = {
    dependencies = ["faraday" "sawyer"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "06kx258qa5k24q5pv8i4daaw3g57gif6p5k5h3gndj3q2jk6vhkn";
      type = "gem";
    };
    version = "4.16.0";
  };
  pronto = {
    dependencies = ["gitlab" "httparty" "octokit" "rainbow" "rugged" "thor"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0n6pykyp5jcpgwcvdxyrhjc7n8w95m0pgixz6cpx0n8vwvw1vhlv";
      type = "gem";
    };
    version = "0.10.0";
  };
  pronto-hlint = {
    dependencies = ["pronto"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1lfan7bgvyns8rb3qz4f5a56ylfqkjqyjc7hdi2qbnwcswldfqkg";
      type = "gem";
    };
    version = "0.1.0";
  };
  public_suffix = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1c6kq6s13idl2036b5lch8r7390f8w82cal8hcp4ml76fm2vdac7";
      type = "gem";
    };
    version = "4.0.3";
  };
  rainbow = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0bb2fpjspydr6x0s8pn1pqkzmxszvkfapv0p4627mywl7ky4zkhk";
      type = "gem";
    };
    version = "3.0.0";
  };
  rake = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0w6qza25bq1s825faaglkx1k6d59aiyjjk3yw3ip5sb463mhhai9";
      type = "gem";
    };
    version = "13.0.1";
  };
  rspec = {
    dependencies = ["rspec-core" "rspec-expectations" "rspec-mocks"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1hzsig4pi9ybr0xl5540m1swiyxa74c8h09225y5sdh2rjkkg84h";
      type = "gem";
    };
    version = "3.9.0";
  };
  rspec-core = {
    dependencies = ["rspec-support"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1qzc1wdjb1qnbimjl8i1q1r1z5hdv2lmcw7ysz7jawj4d1cvpqvd";
      type = "gem";
    };
    version = "3.9.1";
  };
  rspec-expectations = {
    dependencies = ["diff-lcs" "rspec-support"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1gjqfb39da6gywdcp4h77738r7khbrn2v4y45589z25bj4z9paf0";
      type = "gem";
    };
    version = "3.9.0";
  };
  rspec-mocks = {
    dependencies = ["diff-lcs" "rspec-support"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "19vmdqym1v2g1zbdnq37zwmyj87y9yc9ijwc8js55igvbb9hx0mr";
      type = "gem";
    };
    version = "3.9.1";
  };
  rspec-support = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1zwpyq1na23pvgacpxs2v9nwfbjbw6x3arca5j3l1xagigqmzhc3";
      type = "gem";
    };
    version = "3.9.2";
  };
  rugged = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0rdidxgpk1b6y1jq9v77lcx5khq0s9q0s253lr8x57d3hk43iskx";
      type = "gem";
    };
    version = "0.28.4.1";
  };
  sawyer = {
    dependencies = ["addressable" "faraday"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0yrdchs3psh583rjapkv33mljdivggqn99wkydkjdckcjn43j3cz";
      type = "gem";
    };
    version = "0.8.2";
  };
  terminal-table = {
    dependencies = ["unicode-display_width"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1512cngw35hsmhvw4c05rscihc59mnj09m249sm9p3pik831ydqk";
      type = "gem";
    };
    version = "1.8.0";
  };
  thor = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1yhrnp9x8qcy5vc7g438amd5j9sw83ih7c30dr6g6slgw9zj3g29";
      type = "gem";
    };
    version = "0.20.3";
  };
  unicode-display_width = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1pppclzq4qb26g321553nm9xqca3zgllvpwb2kqxsdadwj51s09x";
      type = "gem";
    };
    version = "1.6.1";
  };
}