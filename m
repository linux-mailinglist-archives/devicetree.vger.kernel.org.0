Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8DD3A45E80D
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 07:46:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359070AbhKZGtf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 01:49:35 -0500
Received: from mga06.intel.com ([134.134.136.31]:12014 "EHLO mga06.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1358858AbhKZGre (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Nov 2021 01:47:34 -0500
X-IronPort-AV: E=McAfee;i="6200,9189,10179"; a="296421587"
X-IronPort-AV: E=Sophos;i="5.87,265,1631602800"; 
   d="scan'208";a="296421587"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Nov 2021 22:44:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,265,1631602800"; 
   d="scan'208";a="475820944"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 25 Nov 2021 22:44:18 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
        (envelope-from <lkp@intel.com>)
        id 1mqUy1-0007iJ-CR; Fri, 26 Nov 2021 06:44:17 +0000
Date:   Fri, 26 Nov 2021 14:44:11 +0800
From:   kernel test robot <lkp@intel.com>
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     kbuild-all@lists.01.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 12/12] drm: rockchip: Add VOP2 driver
Message-ID: <202111261442.VG18rKq6-lkp@intel.com>
References: <20211117143347.314294-13-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211117143347.314294-13-s.hauer@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sascha,

I love your patch! Perhaps something to improve:

[auto build test WARNING on rockchip/for-next]
[also build test WARNING on drm/drm-next v5.16-rc2 next-20211125]
[cannot apply to arm64/for-next/core]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Sascha-Hauer/drm-rockchip-RK356x-VOP2-support/20211117-223601
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
config: mips-allmodconfig (https://download.01.org/0day-ci/archive/20211126/202111261442.VG18rKq6-lkp@intel.com/config)
compiler: mips-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/f8c11ce8b4d254bb4824a87adbf9ed187a3c1178
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Sascha-Hauer/drm-rockchip-RK356x-VOP2-support/20211117-223601
        git checkout f8c11ce8b4d254bb4824a87adbf9ed187a3c1178
        # save the config file to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/gpu/drm/rockchip/rockchip_drm_vop2.c: In function 'vop2_setup_dly_for_window':
>> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:2943:27: warning: variable 'plane' set but not used [-Wunused-but-set-variable]
    2943 |         struct drm_plane *plane;
         |                           ^~~~~


vim +/plane +2943 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c

  2937	
  2938	static void vop2_setup_dly_for_window(struct vop2_video_port *vp, const struct vop2_zpos *vop2_zpos,
  2939					      int nr_layers)
  2940	{
  2941		struct vop2 *vop2 = vp->vop2;
  2942		const struct vop2_zpos *zpos;
> 2943		struct drm_plane *plane;
  2944		struct vop2_win *win;
  2945		uint32_t dly;
  2946		int i = 0;
  2947	
  2948		for (i = 0; i < nr_layers; i++) {
  2949			zpos = &vop2_zpos[i];
  2950			win = zpos->win;
  2951			plane = &win->base;
  2952			dly = win->data->dly[VOP2_DLY_MODE_DEFAULT];
  2953	
  2954			if (vop2_cluster_window(win))
  2955				dly |= dly << 8;
  2956	
  2957			vop2_write(vop2, &vop2->data->ctrl->win_dly[win->data->phys_id], dly);
  2958		}
  2959	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
