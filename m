Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A134E46DFC5
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 01:50:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241566AbhLIAxj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 19:53:39 -0500
Received: from mga05.intel.com ([192.55.52.43]:23277 "EHLO mga05.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238157AbhLIAxj (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 8 Dec 2021 19:53:39 -0500
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="324247402"
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; 
   d="scan'208";a="324247402"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Dec 2021 16:50:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; 
   d="scan'208";a="480130673"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 08 Dec 2021 16:50:01 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
        (envelope-from <lkp@intel.com>)
        id 1mv7dJ-0001G9-01; Thu, 09 Dec 2021 00:50:01 +0000
Date:   Thu, 9 Dec 2021 08:49:27 +0800
From:   kernel test robot <lkp@intel.com>
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     kbuild-all@lists.01.org, devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 17/18] drm: rockchip: Add VOP2 driver
Message-ID: <202112090830.YVovXyce-lkp@intel.com>
References: <20211208151230.3695378-18-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211208151230.3695378-18-s.hauer@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sascha,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on rockchip/for-next]
[also build test ERROR on drm/drm-next drm-intel/for-linux-next drm-exynos/exynos-drm-next v5.16-rc4]
[cannot apply to drm-tip/drm-tip tegra-drm/drm/tegra/for-next airlied/drm-next next-20211208]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Sascha-Hauer/drm-rockchip-RK356x-VOP2-support/20211208-231502
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
config: arc-allyesconfig (https://download.01.org/0day-ci/archive/20211209/202112090830.YVovXyce-lkp@intel.com/config)
compiler: arceb-elf-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/8d57a528cbdfec4716a21d22d3d6c04c40451355
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Sascha-Hauer/drm-rockchip-RK356x-VOP2-support/20211208-231502
        git checkout 8d57a528cbdfec4716a21d22d3d6c04c40451355
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arc SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/gpu/drm/rockchip/rockchip_drm_vop2.c: In function 'vop2_dither_setup':
>> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:1489:22: error: implicit declaration of function 'FIELD_PREP' [-Werror=implicit-function-declaration]
    1489 |         *dsp_ctrl |= FIELD_PREP(RK3568_VP_DSP_CTRL__DITHER_DOWN_SEL,
         |                      ^~~~~~~~~~
   drivers/gpu/drm/rockchip/rockchip_drm_vop2.c: In function 'vop2_setup_cluster_alpha':
   drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:1861:33: warning: variable 'top_win_pstate' set but not used [-Wunused-but-set-variable]
    1861 |         struct drm_plane_state *top_win_pstate;
         |                                 ^~~~~~~~~~~~~~
   cc1: some warnings being treated as errors


vim +/FIELD_PREP +1489 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c

  1463	
  1464	static void vop2_dither_setup(struct drm_crtc *crtc, uint32_t *dsp_ctrl)
  1465	{
  1466		struct rockchip_crtc_state *vcstate = to_rockchip_crtc_state(crtc->state);
  1467	
  1468		switch (vcstate->bus_format) {
  1469		case MEDIA_BUS_FMT_RGB565_1X16:
  1470			*dsp_ctrl |= RK3568_VP_DSP_CTRL__DITHER_DOWN_EN;
  1471			break;
  1472		case MEDIA_BUS_FMT_RGB666_1X18:
  1473		case MEDIA_BUS_FMT_RGB666_1X24_CPADHI:
  1474		case MEDIA_BUS_FMT_RGB666_1X7X3_SPWG:
  1475			*dsp_ctrl |= RK3568_VP_DSP_CTRL__DITHER_DOWN_EN;
  1476			*dsp_ctrl |= RGB888_TO_RGB666;
  1477			break;
  1478		case MEDIA_BUS_FMT_YUV8_1X24:
  1479		case MEDIA_BUS_FMT_UYYVYY8_0_5X24:
  1480			*dsp_ctrl |= RK3568_VP_DSP_CTRL__PRE_DITHER_DOWN_EN;
  1481			break;
  1482		default:
  1483			break;
  1484		}
  1485	
  1486		if (vcstate->output_mode != ROCKCHIP_OUT_MODE_AAAA)
  1487			*dsp_ctrl |= RK3568_VP_DSP_CTRL__PRE_DITHER_DOWN_EN;
  1488	
> 1489		*dsp_ctrl |= FIELD_PREP(RK3568_VP_DSP_CTRL__DITHER_DOWN_SEL,
  1490					DITHER_DOWN_ALLEGRO);
  1491	}
  1492	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
