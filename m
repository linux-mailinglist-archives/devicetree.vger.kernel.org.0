Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44CBB2B1E52
	for <lists+devicetree@lfdr.de>; Fri, 13 Nov 2020 16:10:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726439AbgKMPKD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Nov 2020 10:10:03 -0500
Received: from 1.mo1.mail-out.ovh.net ([178.32.127.22]:58052 "EHLO
        1.mo1.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726324AbgKMPKD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Nov 2020 10:10:03 -0500
X-Greylist: delayed 2402 seconds by postgrey-1.27 at vger.kernel.org; Fri, 13 Nov 2020 10:10:02 EST
Received: from player772.ha.ovh.net (unknown [10.108.54.34])
        by mo1.mail-out.ovh.net (Postfix) with ESMTP id 21F081E2CB2
        for <devicetree@vger.kernel.org>; Fri, 13 Nov 2020 14:51:49 +0100 (CET)
Received: from RCM-web9.webmail.mail.ovh.net (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
        (Authenticated sender: rafal@milecki.pl)
        by player772.ha.ovh.net (Postfix) with ESMTPSA id A1EA81830ECD7;
        Fri, 13 Nov 2020 13:51:40 +0000 (UTC)
MIME-Version: 1.0
Date:   Fri, 13 Nov 2020 14:51:40 +0100
From:   =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To:     kernel test robot <lkp@intel.com>
Cc:     =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        kbuild-all@lists.01.org, Hauke Mehrtens <hauke@hauke-m.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Subject: Re: [PATCH] ARM: dts: BCM5301X: Enable USB 3 PHY on Luxul XWR-3150
In-Reply-To: <202011132105.WVl1WaBW-lkp@intel.com>
References: <20201113095012.22422-1-zajec5@gmail.com>
 <202011132105.WVl1WaBW-lkp@intel.com>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <2d13b0399c717e410c129b5f1f67ab8f@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Ovh-Tracer-Id: 10336887047713951344
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedruddvhedgheejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepggffhffvufgjfhgfkfigihgtgfesthejjhdttdervdenucfhrhhomheptfgrfhgrlhgpofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepudffgeekfffggfeufeduffdtueduheffveeutefhhefglefgkefhheevgeeuuedtnecuffhomhgrihhnpehgihhtqdhstghmrdgtohhmpdhgihhthhhusgdrtghomhdpkhgvrhhnvghlrdhorhhgpdhgihhthhhusghushgvrhgtohhnthgvnhhtrdgtohhmnecukfhppedtrddtrddtrddtpdduleegrddukeejrdejgedrvdeffeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejjedvrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprhgrfhgrlhesmhhilhgvtghkihdrphhlpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hey,

On 2020-11-13 14:41, kernel test robot wrote:
> [auto build test ERROR on robh/for-next]
> [also build test ERROR on v5.10-rc3 next-20201113]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:
> https://github.com/0day-ci/linux/commits/Rafa-Mi-ecki/ARM-dts-BCM5301X-Enable-USB-3-PHY-on-Luxul-XWR-3150/20201113-175236
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git 
> for-next
> config: arm-randconfig-r036-20201113 (attached as .config)
> compiler: arm-linux-gnueabi-gcc (GCC) 9.3.0
> reproduce (this is a W=1 build):
>         wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         #
> https://github.com/0day-ci/linux/commit/1f7742592f638fdb90b7270d80d0c797e243ada7
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review
> Rafa-Mi-ecki/ARM-dts-BCM5301X-Enable-USB-3-PHY-on-Luxul-XWR-3150/20201113-175236
>         git checkout 1f7742592f638fdb90b7270d80d0c797e243ada7
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross 
> ARCH=arm
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> Error: arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts:78.1-9 syntax 
>>> error
>    FATAL ERROR: Unable to parse input tree

Is there a problem with bot or GitHub? I can't access any:

https://github.com/0day-ci/linux/commits/Rafa-Mi-ecki/ARM-dts-BCM5301X-Enable-USB-3-PHY-on-Luxul-XWR-3150/20201113-175236
https://github.com/0day-ci/linux/commit/1f7742592f638fdb90b7270d80d0c797e243ada7
