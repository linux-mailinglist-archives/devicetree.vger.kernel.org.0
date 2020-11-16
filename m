Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC08C2B3CEB
	for <lists+devicetree@lfdr.de>; Mon, 16 Nov 2020 07:17:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726863AbgKPGPo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 01:15:44 -0500
Received: from mga18.intel.com ([134.134.136.126]:50057 "EHLO mga18.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726748AbgKPGPo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 16 Nov 2020 01:15:44 -0500
IronPort-SDR: MBsEOaGmFPAeMK47geIs2Jv6Tuz2AbR5jXD12U+9Qh1PDj3nu1iPfxKBBOg/DJ/A4OZCHNfYiw
 +pBKi6rMymXA==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="158481945"
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; 
   d="scan'208";a="158481945"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Nov 2020 22:15:42 -0800
IronPort-SDR: lYE/dw8DxKOaQB1bzmzF77YmaEojAMmOSvSHhloaOza02wJ4VB6IsikrzQwf574xvod3F8m5Hm
 mDgDn5P48WaA==
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; 
   d="scan'208";a="543470417"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.117]) ([10.239.13.117])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Nov 2020 22:15:39 -0800
Subject: Re: [kbuild-all] Re: [PATCH] ARM: dts: BCM5301X: Enable USB 3 PHY on
 Luxul XWR-3150
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        kernel test robot <lkp@intel.com>
Cc:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        kbuild-all@lists.01.org, Hauke Mehrtens <hauke@hauke-m.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
References: <20201113095012.22422-1-zajec5@gmail.com>
 <202011132105.WVl1WaBW-lkp@intel.com>
 <2d13b0399c717e410c129b5f1f67ab8f@milecki.pl>
From:   Rong Chen <rong.a.chen@intel.com>
Message-ID: <93f6e8ad-be48-76f3-ada7-dcb72fc9abaf@intel.com>
Date:   Mon, 16 Nov 2020 14:14:54 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <2d13b0399c717e410c129b5f1f67ab8f@milecki.pl>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 11/13/20 9:51 PM, Rafał Miłecki wrote:
> Hey,
>
> On 2020-11-13 14:41, kernel test robot wrote:
>> [auto build test ERROR on robh/for-next]
>> [also build test ERROR on v5.10-rc3 next-20201113]
>> [If your patch is applied to the wrong git tree, kindly drop us a note.
>> And when submitting patch, we suggest to use '--base' as documented in
>> https://git-scm.com/docs/git-format-patch]
>>
>> url:
>> https://github.com/0day-ci/linux/commits/Rafa-Mi-ecki/ARM-dts-BCM5301X-Enable-USB-3-PHY-on-Luxul-XWR-3150/20201113-175236 
>>
>> base: https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git 
>> for-next
>> config: arm-randconfig-r036-20201113 (attached as .config)
>> compiler: arm-linux-gnueabi-gcc (GCC) 9.3.0
>> reproduce (this is a W=1 build):
>>         wget
>> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
>> -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         #
>> https://github.com/0day-ci/linux/commit/1f7742592f638fdb90b7270d80d0c797e243ada7 
>>
>>         git remote add linux-review https://github.com/0day-ci/linux
>>         git fetch --no-tags linux-review
>> Rafa-Mi-ecki/ARM-dts-BCM5301X-Enable-USB-3-PHY-on-Luxul-XWR-3150/20201113-175236 
>>
>>         git checkout 1f7742592f638fdb90b7270d80d0c797e243ada7
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 
>> make.cross ARCH=arm
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>>> Error: arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts:78.1-9 
>>>> syntax error
>>    FATAL ERROR: Unable to parse input tree
>
> Is there a problem with bot or GitHub? I can't access any:
>
> https://github.com/0day-ci/linux/commits/Rafa-Mi-ecki/ARM-dts-BCM5301X-Enable-USB-3-PHY-on-Luxul-XWR-3150/20201113-175236 
>
> https://github.com/0day-ci/linux/commit/1f7742592f638fdb90b7270d80d0c797e243ada7 
>
>

Hi Rafał ,

The git push service was busy at that time and the branch
has been uploaded to github at 2020-11-14 03:22:56 +0800.

Best Regards,
Rong Chen
