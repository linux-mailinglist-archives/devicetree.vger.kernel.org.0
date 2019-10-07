Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9CFA5CDC2B
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2019 09:04:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727256AbfJGHEi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Oct 2019 03:04:38 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:44603 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727175AbfJGHEi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Oct 2019 03:04:38 -0400
Received: by mail-ot1-f66.google.com with SMTP id 21so10040493otj.11
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2019 00:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=V1Fq1if03fTxZwfIDS+AXRsqn/zMBIp6rhN/Ahq0s0M=;
        b=Lvcm1U5kMqQnGsZ/Z86XsSGVHGp8luMvhUw8V2IMJSj6VbyWwKPMJ5q2LXVUsx7eig
         KYRLZuUKYyOLEjvOdL07CUUwwDtgc6RzP3Zbko/JRR18jNxWne8Rl2my3Y0IaSGUNStN
         jrhOnddOzrYb9eBDjuEp8TmdhL/8DF2pNyxbTshOVduicQWwf3CtVlOH4iBRjtko4yh8
         cLYdIAZcgbbjOkWlT008qamelHEudzFtl24cketvZFLM5iJLtIoxjM5P9kpg0oaUHMtS
         OUcztHsnlP5c9uWRtVlB7dnPTZNBUXi7kdJuffqkXU8negTN3voiobMPHKZZX7F0y9PQ
         r29A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=V1Fq1if03fTxZwfIDS+AXRsqn/zMBIp6rhN/Ahq0s0M=;
        b=Hb40zsX171ejYo3/fPZ/X53i5MB+JUbVTZkLjbcHJLynIJ7R8UUw3NAkeyrgxtYJ87
         qPj2B7nnw2VO1hHkg/TNwz0id90ggpqM44cJpho92oB6ukMas+cwu6DMYq5gHW7GPSCv
         dWiqzJ9JzmtCh7hE6mFJA8zExu1oLoFeuBoYfzv/sWPB0NQxyiCQ9WYpTUMcR3KaYA3x
         LLCYQGk4f1TOU8DaI1256wbaC7wS3oJI9ozX7ssXbJCKfWUz+KKKdZyEppd9LKgeHpwg
         Os/ayFu5hZPa76zaD8qI/pYLnpB7bqpH+KpfpBEyg/mun5ErXSTbL3R/A6c0zcwPXp00
         HYGw==
X-Gm-Message-State: APjAAAUSkKMv1TI4iMSWZhRAkk/+owGH5A9/372NymR22/NHvFkoljgR
        f/pYTj6LWZfYxKa5ArrYWuLWTZFRI9CwosBmSZCVag==
X-Google-Smtp-Source: APXvYqz5NKpWPk5P2gnHbhTiIn9IVx8rbMKHqaQKsiNUqdryg3KYXMCeoiihQBTM9L7BJFj6bJX0jcfwMkZtgS8pnRM=
X-Received: by 2002:a05:6830:1d97:: with SMTP id y23mr5419897oti.103.1570431875776;
 Mon, 07 Oct 2019 00:04:35 -0700 (PDT)
MIME-Version: 1.0
References: <20191005164320.07.I5388b69a7a9c551078fed216a77440cee6dedf49@changeid>
 <201910060040.RXI5XB2W%lkp@intel.com>
In-Reply-To: <201910060040.RXI5XB2W%lkp@intel.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Mon, 7 Oct 2019 15:04:24 +0800
Message-ID: <CA+Px+wUqwjPKkbZAfJ0+a6JAhxRqGLqq_JRY6Qwoh49JrxKr8w@mail.gmail.com>
Subject: Re: [alsa-devel] [PATCH v2 07/10] ASoC: cros_ec_codec: support WoV
To:     kbuild test robot <lkp@intel.com>,
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
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Oct 6, 2019 at 12:54 AM kbuild test robot <lkp@intel.com> wrote:
> url:    https://github.com/0day-ci/linux/commits/Tzung-Bi-Shih/ASoC-mediatek-mt8183-mt6358-ts3a227-max98357-support-WoV/20191005-171021
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next
> reproduce:
>         # apt-get install sparse
>         # sparse version: v0.6.1-rc1-42-g38eda53-dirty
>         make ARCH=x86_64 allmodconfig
>         make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
>
> sparse warnings: (new ones prefixed by >>)
>
> >> sound/soc/codecs/cros_ec_codec.c:430:39: sparse: sparse: incorrect type in return expression (different address spaces) @@    expected void * @@    got void [noderef] <asvoid * @@
> >> sound/soc/codecs/cros_ec_codec.c:430:39: sparse:    expected void *
> >> sound/soc/codecs/cros_ec_codec.c:430:39: sparse:    got void [noderef] <asn:2> *
> >> sound/soc/codecs/cros_ec_codec.c:549:69: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void const volatile [noderef] <asn:2> * @@    got latile [noderef] <asn:2> * @@
> >> sound/soc/codecs/cros_ec_codec.c:549:69: sparse:    expected void const volatile [noderef] <asn:2> *
> >> sound/soc/codecs/cros_ec_codec.c:549:69: sparse:    got unsigned char [usertype] *addr
> >> sound/soc/codecs/cros_ec_codec.c:698:33: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void volatile [noderef] <asn:2> * @@    got latile [noderef] <asn:2> * @@
> >> sound/soc/codecs/cros_ec_codec.c:698:33: sparse:    expected void volatile [noderef] <asn:2> *
> >> sound/soc/codecs/cros_ec_codec.c:698:33: sparse:    got unsigned char [usertype] *wov_lang_shm_p
>    sound/soc/codecs/cros_ec_codec.c:699:48: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void volatile [noderef] <asn:2> * @@    got latile [noderef] <asn:2> * @@
>    sound/soc/codecs/cros_ec_codec.c:699:48: sparse:    expected void volatile [noderef] <asn:2> *
> >> sound/soc/codecs/cros_ec_codec.c:699:48: sparse:    got unsigned char [usertype] *

I cannot reproduce the same sparse errors.

My commit stack: apply my patches onto broonie/sound.git for-next
$ git log --oneline
b4471777f5d8 (HEAD -> draft) ASoC: mediatek: mt8183: support WoV
b6bb558fa59d ASoC: dt-bindings: mt8183: add ec-codec
a08bede115d4 ASoC: mediatek: mt6358: support WoV
f67068fd0c91 ASoC: cros_ec_codec: support WoV
7e11271c070e ASoC: dt-bindings: cros_ec_codec: add SHM bindings
fd04f20e77d3 ASoC: cros_ec_codec: read max DMIC gain from EC codec
c008f01d5bc3 platform/chrome: cros_ec: add common commands for EC codec
50d2c1f9b1f4 ASoC: cros_ec_codec: extract DMIC EC command from I2S RX
00e5a1c121eb ASoC: cros_ec_codec: refactor I2S RX
3f0c475d6ec8 platform/chrome: cros_ec: remove unused EC feature
3877dcd0194c (mark/for-next, asoc-next) Merge branch 'asoc-5.5' into asoc-next

My reproduce steps:
$ make ARCH=x86_64 mrproper
$ make ARCH=x86_64 allmodconfig
$ make ARCH=x86_64 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' -j40
2>&1 | grep -v sched | tee log.txt
(Note: filter sched out to not get flood sparse errors)
$ grep cros_ec_codec log.txt
  CHECK   sound/soc/codecs/cros_ec_codec.c
  CC [M]  sound/soc/codecs/cros_ec_codec.o

It did not generate the same message as 0day reported.

One difference would be the sparse version (it is from "apt install"
in my environment):
$ sparse --version
0.6.0 (Debian: 0.6.0-3)
On the other hand, 0day used "v0.6.1-rc1-42-g38eda53-dirty".

Guenter, what we could do in the case?  Do you have any idea?
