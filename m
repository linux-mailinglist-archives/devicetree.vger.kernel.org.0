Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FE3A370A8E
	for <lists+devicetree@lfdr.de>; Sun,  2 May 2021 08:44:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229536AbhEBGpm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 May 2021 02:45:42 -0400
Received: from mga07.intel.com ([134.134.136.100]:33722 "EHLO mga07.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229526AbhEBGpl (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 2 May 2021 02:45:41 -0400
IronPort-SDR: 3XMcOavakKowo52x6xIAQ1m8sc+OOAws+coYZiULjzxm6JseTzgmkie212yk2fdkvkqRdOWK3U
 d0/UHSQdVYww==
X-IronPort-AV: E=McAfee;i="6200,9189,9971"; a="261500396"
X-IronPort-AV: E=Sophos;i="5.82,267,1613462400"; 
   d="scan'208";a="261500396"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 May 2021 23:44:50 -0700
IronPort-SDR: 2o/LhExAzIIrbfXFCOAaIdlEAO5SF0lqjRb1I/g5Fo7q1TVQ3LoY7nz48zjDC66hq4Faovxb6i
 EsvJSCgRTedw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,267,1613462400"; 
   d="scan'208";a="456708479"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 01 May 2021 23:44:47 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
        (envelope-from <lkp@intel.com>)
        id 1ld5qQ-0008oy-Ez; Sun, 02 May 2021 06:44:46 +0000
Date:   Sun, 2 May 2021 14:43:55 +0800
From:   kernel test robot <lkp@intel.com>
To:     Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc:     kbuild-all@lists.01.org, cl@rock-chips.com, jay.xu@rock-chips.com,
        david.wu@rock-chips.com, zhangqing@rock-chips.com,
        huangtao@rock-chips.com, shawn.lin@rock-chips.com,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1 1/2] dt-bindings: soc: rockchip: convert grf.txt to
 YAML
Message-ID: <202105021444.OeoNP6mw-lkp@intel.com>
References: <20210501203520.5465-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210501203520.5465-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Johan,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on rockchip/for-next]
[also build test WARNING on robh/for-next v5.12 next-20210430]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Johan-Jonker/dt-bindings-soc-rockchip-convert-grf-txt-to-YAML/20210502-043613
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
compiler: arm-linux-gnueabi-gcc (GCC) 9.3.0
reproduce: make ARCH=arm dtbs_check

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


dtcheck warnings: (new ones prefixed by >>)
   arch/arm/boot/dts/rv1108-elgin-r1.dt.yaml: timer: interrupts: [[1, 13, 260], [1, 14, 260]] is too short
   	From schema: Documentation/devicetree/bindings/timer/arm,arch_timer.yaml
>> arch/arm/boot/dts/rv1108-elgin-r1.dt.yaml: syscon@10300000: usb2-phy@100: '#phy-cells' is a required property
   	From schema: Documentation/devicetree/bindings/soc/rockchip/grf.yaml
   arch/arm/boot/dts/rv1108-elgin-r1.dt.yaml: usb2-phy@100: '#phy-cells' is a required property
   	From schema: Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
   arch/arm/boot/dts/rv1108-elgin-r1.dt.yaml: usb2-phy@100: '#phy-cells' is a required property
   	From schema: /usr/local/lib/python3.9/dist-packages/dtschema/schemas/phy/phy-provider.yaml
   arch/arm/boot/dts/rv1108-elgin-r1.dt.yaml: thermal-zones: soc-thermal:cooling-maps:map0:contribution:0:0: 4096 is greater than the maximum of 100
   	From schema: Documentation/devicetree/bindings/thermal/thermal-zones.yaml
--
   arch/arm/boot/dts/rv1108-evb.dt.yaml: timer: interrupts: [[1, 13, 260], [1, 14, 260]] is too short
   	From schema: Documentation/devicetree/bindings/timer/arm,arch_timer.yaml
>> arch/arm/boot/dts/rv1108-evb.dt.yaml: syscon@10300000: usb2-phy@100: '#phy-cells' is a required property
   	From schema: Documentation/devicetree/bindings/soc/rockchip/grf.yaml
   arch/arm/boot/dts/rv1108-evb.dt.yaml: usb2-phy@100: '#phy-cells' is a required property
   	From schema: Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
   arch/arm/boot/dts/rv1108-evb.dt.yaml: usb2-phy@100: '#phy-cells' is a required property
   	From schema: /usr/local/lib/python3.9/dist-packages/dtschema/schemas/phy/phy-provider.yaml
   arch/arm/boot/dts/rv1108-evb.dt.yaml: thermal-zones: soc-thermal:cooling-maps:map0:contribution:0:0: 4096 is greater than the maximum of 100
   	From schema: Documentation/devicetree/bindings/thermal/thermal-zones.yaml
   arch/arm/boot/dts/rv1108-evb.dt.yaml: backlight: 'power-supply' is a required property
   	From schema: Documentation/devicetree/bindings/leds/backlight/pwm-backlight.yaml
--
>> arch/arm/boot/dts/rk3229-evb.dt.yaml: syscon@11000000: usb2-phy@760: '#phy-cells' is a required property
   	From schema: Documentation/devicetree/bindings/soc/rockchip/grf.yaml
   arch/arm/boot/dts/rk3229-evb.dt.yaml: syscon@11000000: usb2-phy@800: '#phy-cells' is a required property
   	From schema: Documentation/devicetree/bindings/soc/rockchip/grf.yaml
   arch/arm/boot/dts/rk3229-evb.dt.yaml: usb2-phy@760: '#phy-cells' is a required property
   	From schema: Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
   arch/arm/boot/dts/rk3229-evb.dt.yaml: usb2-phy@760: '#phy-cells' is a required property
   	From schema: /usr/local/lib/python3.9/dist-packages/dtschema/schemas/phy/phy-provider.yaml
   arch/arm/boot/dts/rk3229-evb.dt.yaml: usb2-phy@800: '#phy-cells' is a required property
   	From schema: Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
   arch/arm/boot/dts/rk3229-evb.dt.yaml: usb2-phy@800: '#phy-cells' is a required property
--
>> arch/arm/boot/dts/rk3229-xms6.dt.yaml: syscon@11000000: usb2-phy@760: '#phy-cells' is a required property
   	From schema: Documentation/devicetree/bindings/soc/rockchip/grf.yaml
   arch/arm/boot/dts/rk3229-xms6.dt.yaml: syscon@11000000: usb2-phy@800: '#phy-cells' is a required property
   	From schema: Documentation/devicetree/bindings/soc/rockchip/grf.yaml
   arch/arm/boot/dts/rk3229-xms6.dt.yaml: usb2-phy@760: '#phy-cells' is a required property
   	From schema: Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
   arch/arm/boot/dts/rk3229-xms6.dt.yaml: usb2-phy@760: '#phy-cells' is a required property
   	From schema: /usr/local/lib/python3.9/dist-packages/dtschema/schemas/phy/phy-provider.yaml
   arch/arm/boot/dts/rk3229-xms6.dt.yaml: usb2-phy@800: '#phy-cells' is a required property
   	From schema: Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
   arch/arm/boot/dts/rk3229-xms6.dt.yaml: usb2-phy@800: '#phy-cells' is a required property

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
