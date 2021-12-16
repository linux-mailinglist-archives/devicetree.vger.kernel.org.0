Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E80F6477FA2
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 22:56:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234629AbhLPV42 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 16:56:28 -0500
Received: from mga07.intel.com ([134.134.136.100]:26120 "EHLO mga07.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234459AbhLPV41 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 Dec 2021 16:56:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1639691787; x=1671227787;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=pT6BIsAktqNKeiVC5xbtz996ndRtE9Mnwd/SP0WIfF0=;
  b=A7rwxa1zzSp+KR9Hd64lWk8biv0N3ybd4V5ZPeutCP54dT9f1uxpvcqM
   RP5c7IdPAukW4ilCENmSEz/BRH9QF+byGlrSlmezf5xxDH+7Z9aX491Ll
   HjR99y24mvNTbunqQ/m875/aktmltv/l7gCIIMGDxrmPEJw5JQloLs9Ai
   ZmLVkEaqSCBus63O877frgqgqRLAd2nEIGhETO2p6BCtHpXagE2DPfWbz
   fFKxaOatlIu80KOxseeNkiNRFfNIosrw2Md53cFQu6MfLpFjz+l/lyvoo
   xpH0C/HVy6aqJjz4vcHjBncKyDf9effB42WnXJTLRuN6hh8XCA26i2jRf
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="302987732"
X-IronPort-AV: E=Sophos;i="5.88,212,1635231600"; 
   d="scan'208";a="302987732"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Dec 2021 13:56:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,212,1635231600"; 
   d="scan'208";a="482984142"
Received: from lkp-server02.sh.intel.com (HELO 9f38c0981d9f) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 16 Dec 2021 13:56:24 -0800
Received: from kbuild by 9f38c0981d9f with local (Exim 4.92)
        (envelope-from <lkp@intel.com>)
        id 1mxyjg-0003rc-9G; Thu, 16 Dec 2021 21:56:24 +0000
Date:   Fri, 17 Dec 2021 05:56:17 +0800
From:   kernel test robot <lkp@intel.com>
To:     Lisa Hill <f11o1iomh3dmt141n@icloud.com>,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>
Cc:     kbuild-all@lists.01.org, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Subject: Re: [PATCH] ARM: dts: BCM5301X: Add USB GPIO and missing LEDs on
 Netgear R6300v2
Message-ID: <202112170555.7wGP6HDV-lkp@intel.com>
References: <C3B4248E-2870-4572-9A11-45AAA7019E9A@icloud.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <C3B4248E-2870-4572-9A11-45AAA7019E9A@icloud.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lisa,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on robh/for-next]
[also build test WARNING on v5.16-rc5 next-20211215]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Lisa-Hill/ARM-dts-BCM5301X-Add-USB-GPIO-and-missing-LEDs-on-Netgear-R6300v2/20211211-165513
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
compiler: arm-linux-gnueabi-gcc (GCC) 11.2.0
reproduce: make ARCH=arm dtbs_check

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


dtcheck warnings: (new ones prefixed by >>)
   arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dt.yaml: usb@22000: '#address-cells', '#size-cells', '#usb-cells', 'port@1', 'port@2' do not match any of the regexes: 'pinctrl-[0-9]+'
   	From schema: Documentation/devicetree/bindings/usb/generic-ohci.yaml
   arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dt.yaml: usb@23000: port@1: 'compatible' is a required property
   	From schema: Documentation/devicetree/bindings/usb/generic-xhci.yaml
   arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dt.yaml: usb@23000: Unevaluated properties are not allowed ('#usb-cells', 'phys', 'phy-names', '#address-cells', '#size-cells', 'port@1' were unexpected)
   	From schema: Documentation/devicetree/bindings/usb/generic-xhci.yaml
   arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dt.yaml: cru@100: $nodename:0: 'cru@100' does not match '^([a-z][a-z0-9\\-]+-bus|bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
   	From schema: /usr/local/lib/python3.9/dist-packages/dtschema/schemas/simple-bus.yaml
   arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dt.yaml:0:0: /nand-controller@18028000/nand@0/partitions: failed to match any schema with compatible: ['brcm,bcm947xx-cfe-partitions']
   arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dt.yaml:0:0: /spi@18029200/flash@0/partitions: failed to match any schema with compatible: ['brcm,bcm947xx-cfe-partitions']
>> arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dt.yaml: leds: 'logo', 'power-amber', 'power-green', 'usb', 'wan-amber', 'wan-green', 'wireless' do not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'
   	From schema: Documentation/devicetree/bindings/leds/leds-gpio.yaml

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
