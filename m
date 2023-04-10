Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE45E6DC941
	for <lists+devicetree@lfdr.de>; Mon, 10 Apr 2023 18:25:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230055AbjDJQZs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Apr 2023 12:25:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230201AbjDJQZr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Apr 2023 12:25:47 -0400
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 683D81FEE
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 09:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1681143939; x=1712679939;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=lbhk0L0CrBS6dQ4+A5wBYzm+KcA4M5qf6qZwh3rIz+E=;
  b=fs+PlIaPYVeignAf4BWvnRxwECd8Rl1NSss5mYmdpEdugMoGkB72wMUh
   GRNnzCyJ6Yc1520xlr/MTqX4cj+5sjAhfUkSWYwCrZh0CnTzhzqdlRD98
   zGN68mtPylkFs2aUbxRhsSyKD3jIh2GgpAiFxxn9E7RIPEWarhBR+ozKm
   O+PhQajpCrGBqMMZwOQ1nZm7LY95AbXMwJWklDYBqOwgYYk7bdmzUZNfT
   MRbHqgCWirkguAT57rxgEiG++g+kOyjpdVWv28/WRFve9IaMW2PQgUiNf
   wMYLvBxefYzdQ9QuNsGmqz//gvQw9N3wz3gtEIC+wfTjU8fAT1eSIbL8k
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="323755185"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; 
   d="scan'208";a="323755185"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Apr 2023 09:25:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="720886084"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; 
   d="scan'208";a="720886084"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 10 Apr 2023 09:25:30 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
        (envelope-from <lkp@intel.com>)
        id 1pluKf-000VUL-0b;
        Mon, 10 Apr 2023 16:25:29 +0000
Date:   Tue, 11 Apr 2023 00:25:23 +0800
From:   kernel test robot <lkp@intel.com>
To:     Brandon Cheo Fusi <fusibrandon13@gmail.com>, maxime@cerno.tech
Cc:     llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
        airlied@gmail.com, andrzej.hajda@intel.com, daniel@ffwll.ch,
        dave.stevenson@raspberrypi.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, jagan@amarulasolutions.com,
        jernej.skrabec@gmail.com, krzysztof.kozlowski+dt@linaro.org,
        linux-amarula@amarulasolutions.com,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        maarten.lankhorst@linux.intel.com, marex@denx.de,
        neil.armstrong@linaro.org, rfoss@kernel.org, robh+dt@kernel.org,
        sam@ravnborg.org, samuel@sholland.org, tzimmermann@suse.de,
        wens@csie.org, Brandon Cheo Fusi <fusibrandon13@gmail.com>
Subject: Re: [PATCH 1/2] drm: sun4i/dsi: factor out DSI PHY poweron and
 poweroff
Message-ID: <202304110053.n5nu03YZ-lkp@intel.com>
References: <20230410084750.164016-2-fusibrandon13@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230410084750.164016-2-fusibrandon13@gmail.com>
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Brandon,

kernel test robot noticed the following build errors:

[auto build test ERROR on sunxi/sunxi/for-next]
[also build test ERROR on linus/master v6.3-rc6 next-20230406]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Brandon-Cheo-Fusi/drm-sun4i-dsi-factor-out-DSI-PHY-poweron-and-poweroff/20230410-165257
base:   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git sunxi/for-next
patch link:    https://lore.kernel.org/r/20230410084750.164016-2-fusibrandon13%40gmail.com
patch subject: [PATCH 1/2] drm: sun4i/dsi: factor out DSI PHY poweron and poweroff
config: arm64-randconfig-r002-20230410 (https://download.01.org/0day-ci/archive/20230411/202304110053.n5nu03YZ-lkp@intel.com/config)
compiler: clang version 17.0.0 (https://github.com/llvm/llvm-project 2c57868e2e877f73c339796c3374ae660bb77f0d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/afa9cb6821e4527f07c10a777ea44e380b524858
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Brandon-Cheo-Fusi/drm-sun4i-dsi-factor-out-DSI-PHY-poweron-and-poweroff/20230410-165257
        git checkout afa9cb6821e4527f07c10a777ea44e380b524858
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash drivers/gpu/drm/sun4i/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202304110053.n5nu03YZ-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:843:13: error: incompatible function pointer types initializing 'void (*)(struct drm_encoder *)' with an expression of type 'void (struct drm_encoder *, struct drm_atomic_state *)' [-Wincompatible-function-pointer-types]
           .enable         = sun6i_dsi_encoder_enable,
                             ^~~~~~~~~~~~~~~~~~~~~~~~
   1 error generated.


vim +843 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c

133add5b5ad42b Maxime Ripard 2018-04-04  841  
133add5b5ad42b Maxime Ripard 2018-04-04  842  static const struct drm_encoder_helper_funcs sun6i_dsi_enc_helper_funcs = {
133add5b5ad42b Maxime Ripard 2018-04-04 @843  	.enable		= sun6i_dsi_encoder_enable,
133add5b5ad42b Maxime Ripard 2018-04-04  844  };
133add5b5ad42b Maxime Ripard 2018-04-04  845  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
