Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 696CCD0838
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2019 09:25:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727035AbfJIHZl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Oct 2019 03:25:41 -0400
Received: from mga09.intel.com ([134.134.136.24]:4461 "EHLO mga09.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725440AbfJIHZl (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 9 Oct 2019 03:25:41 -0400
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 00:25:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,273,1566889200"; 
   d="scan'208";a="277346967"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.6]) ([10.239.13.6])
  by orsmga001.jf.intel.com with ESMTP; 09 Oct 2019 00:25:38 -0700
Subject: Re: [kbuild-all] Re: [alsa-devel] [PATCH v2 07/10] ASoC:
 cros_ec_codec: support WoV
To:     Tzung-Bi Shih <tzungbi@google.com>,
        kbuild test robot <lkp@intel.com>,
        Guenter Roeck <groeck@google.com>
Cc:     kbuild-all@01.org, Mark Brown <broonie@kernel.org>,
        Gwendal Grignou <gwendal@google.com>,
        devicetree@vger.kernel.org,
        ALSA development <alsa-devel@alsa-project.org>,
        Jimmy Cheng-Yi Chiang <cychiang@google.com>,
        Nicolas Boichat <drinkcat@google.com>, robh+dt@kernel.org,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Benson Leung <bleung@google.com>,
        Dylan Reid <dgreid@google.com>
References: <20191005164320.07.I5388b69a7a9c551078fed216a77440cee6dedf49@changeid>
 <201910060040.RXI5XB2W%lkp@intel.com>
 <CA+Px+wUqwjPKkbZAfJ0+a6JAhxRqGLqq_JRY6Qwoh49JrxKr8w@mail.gmail.com>
From:   Rong Chen <rong.a.chen@intel.com>
Message-ID: <e02d6319-77b2-b74d-883e-7ec87c5bd1fc@intel.com>
Date:   Wed, 9 Oct 2019 15:25:21 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CA+Px+wUqwjPKkbZAfJ0+a6JAhxRqGLqq_JRY6Qwoh49JrxKr8w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 10/7/19 3:04 PM, Tzung-Bi Shih wrote:
> On Sun, Oct 6, 2019 at 12:54 AM kbuild test robot <lkp@intel.com> wrote:
>> url:    https://github.com/0day-ci/linux/commits/Tzung-Bi-Shih/ASoC-mediatek-mt8183-mt6358-ts3a227-max98357-support-WoV/20191005-171021
>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next
>> reproduce:
>>          # apt-get install sparse
>>          # sparse version: v0.6.1-rc1-42-g38eda53-dirty
>>          make ARCH=x86_64 allmodconfig
>>          make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'
>>
>> If you fix the issue, kindly add following tag
>> Reported-by: kbuild test robot <lkp@intel.com>
>>
>>
>> sparse warnings: (new ones prefixed by >>)
>>
>>>> sound/soc/codecs/cros_ec_codec.c:430:39: sparse: sparse: incorrect type in return expression (different address spaces) @@    expected void * @@    got void [noderef] <asvoid * @@
>>>> sound/soc/codecs/cros_ec_codec.c:430:39: sparse:    expected void *
>>>> sound/soc/codecs/cros_ec_codec.c:430:39: sparse:    got void [noderef] <asn:2> *
>>>> sound/soc/codecs/cros_ec_codec.c:549:69: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void const volatile [noderef] <asn:2> * @@    got latile [noderef] <asn:2> * @@
>>>> sound/soc/codecs/cros_ec_codec.c:549:69: sparse:    expected void const volatile [noderef] <asn:2> *
>>>> sound/soc/codecs/cros_ec_codec.c:549:69: sparse:    got unsigned char [usertype] *addr
>>>> sound/soc/codecs/cros_ec_codec.c:698:33: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void volatile [noderef] <asn:2> * @@    got latile [noderef] <asn:2> * @@
>>>> sound/soc/codecs/cros_ec_codec.c:698:33: sparse:    expected void volatile [noderef] <asn:2> *
>>>> sound/soc/codecs/cros_ec_codec.c:698:33: sparse:    got unsigned char [usertype] *wov_lang_shm_p
>>     sound/soc/codecs/cros_ec_codec.c:699:48: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void volatile [noderef] <asn:2> * @@    got latile [noderef] <asn:2> * @@
>>     sound/soc/codecs/cros_ec_codec.c:699:48: sparse:    expected void volatile [noderef] <asn:2> *
>>>> sound/soc/codecs/cros_ec_codec.c:699:48: sparse:    got unsigned char [usertype] *
> I cannot reproduce the same sparse errors.
>
> My commit stack: apply my patches onto broonie/sound.git for-next
> $ git log --oneline
> b4471777f5d8 (HEAD -> draft) ASoC: mediatek: mt8183: support WoV
> b6bb558fa59d ASoC: dt-bindings: mt8183: add ec-codec
> a08bede115d4 ASoC: mediatek: mt6358: support WoV
> f67068fd0c91 ASoC: cros_ec_codec: support WoV
> 7e11271c070e ASoC: dt-bindings: cros_ec_codec: add SHM bindings
> fd04f20e77d3 ASoC: cros_ec_codec: read max DMIC gain from EC codec
> c008f01d5bc3 platform/chrome: cros_ec: add common commands for EC codec
> 50d2c1f9b1f4 ASoC: cros_ec_codec: extract DMIC EC command from I2S RX
> 00e5a1c121eb ASoC: cros_ec_codec: refactor I2S RX
> 3f0c475d6ec8 platform/chrome: cros_ec: remove unused EC feature
> 3877dcd0194c (mark/for-next, asoc-next) Merge branch 'asoc-5.5' into asoc-next
>
> My reproduce steps:
> $ make ARCH=x86_64 mrproper
> $ make ARCH=x86_64 allmodconfig
> $ make ARCH=x86_64 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' -j40
> 2>&1 | grep -v sched | tee log.txt
> (Note: filter sched out to not get flood sparse errors)
> $ grep cros_ec_codec log.txt
>    CHECK   sound/soc/codecs/cros_ec_codec.c
>    CC [M]  sound/soc/codecs/cros_ec_codec.o
>
> It did not generate the same message as 0day reported.
>
> One difference would be the sparse version (it is from "apt install"
> in my environment):
> $ sparse --version
> 0.6.0 (Debian: 0.6.0-3)
> On the other hand, 0day used "v0.6.1-rc1-42-g38eda53-dirty".

Hi,

The sparse warnings could be generated by the latest sparse
(https://github.com/lucvoo/sparse.git). Could you try again?

Best Regards,
Rong Chen

>
> Guenter, what we could do in the case?  Do you have any idea?
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

