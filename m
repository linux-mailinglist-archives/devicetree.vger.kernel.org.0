Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 801213B91FA
	for <lists+devicetree@lfdr.de>; Thu,  1 Jul 2021 15:06:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236651AbhGANJN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jul 2021 09:09:13 -0400
Received: from foss.arm.com ([217.140.110.172]:53400 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236589AbhGANJM (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 1 Jul 2021 09:09:12 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0B667D6E;
        Thu,  1 Jul 2021 06:06:42 -0700 (PDT)
Received: from bogus (unknown [10.57.78.75])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A25373F718;
        Thu,  1 Jul 2021 06:06:40 -0700 (PDT)
Date:   Thu, 1 Jul 2021 14:05:56 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
        Sudeep Holla <sudeep.holla@arm.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] ARM: dts: versatile: Fix up interrupt controller
 node names
Message-ID: <20210701130556.hdb7rix3edofze3k@bogus>
References: <20210617210825.3064367-1-sudeep.holla@arm.com>
 <202107011848.TwF0sgSM-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <202107011848.TwF0sgSM-lkp@intel.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi Linus,

Sorry for this. For some reason I had assumed versatile is in
multi_v5_defconfig, but it is not and I missed to see that.

I will post v2 to SoC team directly with your ack instead.

On Thu, Jul 01, 2021 at 06:53:53PM +0800, kernel test robot wrote:
> Hi Sudeep,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on robh/for-next]
> [also build test ERROR on pinctrl/devel v5.13 next-20210630]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Sudeep-Holla/ARM-dts-versatile-Fix-up-interrupt-controller-node-names/20210618-050956
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
> config: arm-allmodconfig (attached as .config)
> compiler: arm-linux-gnueabi-gcc (GCC) 9.3.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://github.com/0day-ci/linux/commit/39c2a1b84ddd856b2a8015abc7952b9ca79a5c4c
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Sudeep-Holla/ARM-dts-versatile-Fix-up-interrupt-controller-node-names/20210618-050956
>         git checkout 39c2a1b84ddd856b2a8015abc7952b9ca79a5c4c
>         # save the attached .config to linux build tree
>         mkdir build_dir
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross O=build_dir ARCH=arm SHELL=/bin/bash
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    arch/arm/boot/dts/versatile-pb.dts:10.22-17.5: ERROR (duplicate_label): /amba/intc@10003000: Duplicate label 'sic' on /amba/intc@10003000 and /amba/interrupt-controller@10003000
> >> ERROR: Input tree has errors, aborting (use -f to force output)
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
Regards,
Sudeep
