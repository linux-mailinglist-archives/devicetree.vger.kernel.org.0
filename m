Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 35035D6022
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2019 12:26:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731001AbfJNK0n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Oct 2019 06:26:43 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:35684 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730860AbfJNK0n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Oct 2019 06:26:43 -0400
Received: by mail-ot1-f68.google.com with SMTP id z6so13357960otb.2
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2019 03:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=n2gNfmZJ5/1ywIBAglWfJ1GQhU7lYRYGj78jRXB8nZA=;
        b=KvUU7xGueOdTvLYGN0YCl+yNdFRL12cVtp36VZQeUh/UOFbq/t7ylixoxslq6SjFVA
         WeSuJ7nkjVvJn/gz2lExXAIb6PZhigPL5ADksY5Q/0qfo56FGkX1GI6hYbA0EddocPCb
         ZiXC1l4L2R5y0rjJh0TTyGJYj4K5KheJwlsh2RsKbf9n/LGx5GVBKraEq0H8AMggtfWu
         DVwm6WhXE+hJcbmvsb1spXTWXvy+QJnqjitk+RpJTi66lQlti23hAkLS35OaZjtT5opl
         aqczV0SU4bfwbjgCDjmu9WbUEM3BPM6TL6LPQ5f+B8xGiNQ5OdVB+fwO8s/FZHSHbNR4
         SSsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=n2gNfmZJ5/1ywIBAglWfJ1GQhU7lYRYGj78jRXB8nZA=;
        b=iU8HbKdbmn0+m7jk93r9k92c3Bn6APvFtkgNe6mLyer6+dBCKJuGu3Qhoweg2rEMzq
         /L7HOsG6bYGFnHC2DsxHTaPH+dFoMBLlmrxnuDP/4HBJ6PLyaa9TgrdgqlMzYLnDX48H
         uIUkjBrMjMkIrQ+hLnkrxLpzA6ILy/D3g9XdLseCWcQ21SKzLx4Yj6rjn/gWQRUsO7At
         my4iLIn/WN7JMSVdinn/87zdZU0xqa8kI78D+wFft3vTDRzq5l8IFKvpguRAzszmfKdS
         eLe+u5uLKN1RxsI5lxPQbWbmICjPyiVBjthivwdKmWs5sCeTGKJ9+IZ8lL31WewLpDKd
         g9ng==
X-Gm-Message-State: APjAAAU0tunknHim1hx1vJ7Xzs01Ub6WVMqTqSgjHVOxS1qJex5fVFXa
        TQC64wzILAuEE4rEm/jmgYqtMNfsW8F0m5TcHJnWQg==
X-Google-Smtp-Source: APXvYqyvZCtpMEsAR5R8mu0eANfkz0L7vCRZN5v6gSdqM/aSG7UC/Hh3Yo2isE/Xh9wQG11gKzO079TpUDZ28nHJQ8E=
X-Received: by 2002:a05:6830:158:: with SMTP id j24mr8255902otp.99.1571048802022;
 Mon, 14 Oct 2019 03:26:42 -0700 (PDT)
MIME-Version: 1.0
References: <20191005164320.07.I5388b69a7a9c551078fed216a77440cee6dedf49@changeid>
 <201910060040.RXI5XB2W%lkp@intel.com> <CA+Px+wUqwjPKkbZAfJ0+a6JAhxRqGLqq_JRY6Qwoh49JrxKr8w@mail.gmail.com>
 <e02d6319-77b2-b74d-883e-7ec87c5bd1fc@intel.com>
In-Reply-To: <e02d6319-77b2-b74d-883e-7ec87c5bd1fc@intel.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Mon, 14 Oct 2019 18:26:30 +0800
Message-ID: <CA+Px+wUJvpHHM8NuEgjnnU+ObFXFPtNqPheGq5nAOfq4ohRMsQ@mail.gmail.com>
Subject: Re: [kbuild-all] Re: [alsa-devel] [PATCH v2 07/10] ASoC:
 cros_ec_codec: support WoV
To:     Rong Chen <rong.a.chen@intel.com>
Cc:     kbuild test robot <lkp@intel.com>,
        Guenter Roeck <groeck@google.com>, kbuild-all@01.org,
        Mark Brown <broonie@kernel.org>,
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

On Wed, Oct 9, 2019 at 3:25 PM Rong Chen <rong.a.chen@intel.com> wrote:
>
>
>
> On 10/7/19 3:04 PM, Tzung-Bi Shih wrote:
> > On Sun, Oct 6, 2019 at 12:54 AM kbuild test robot <lkp@intel.com> wrote:
> >> url:    https://github.com/0day-ci/linux/commits/Tzung-Bi-Shih/ASoC-mediatek-mt8183-mt6358-ts3a227-max98357-support-WoV/20191005-171021
> >> base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next
> >> reproduce:
> >>          # apt-get install sparse
> >>          # sparse version: v0.6.1-rc1-42-g38eda53-dirty
> >>          make ARCH=x86_64 allmodconfig
> >>          make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'
> >>
> >> If you fix the issue, kindly add following tag
> >> Reported-by: kbuild test robot <lkp@intel.com>
> >>
> >>
> >> sparse warnings: (new ones prefixed by >>)
> >>
> >>>> sound/soc/codecs/cros_ec_codec.c:430:39: sparse: sparse: incorrect type in return expression (different address spaces) @@    expected void * @@    got void [noderef] <asvoid * @@
> >>>> sound/soc/codecs/cros_ec_codec.c:430:39: sparse:    expected void *
> >>>> sound/soc/codecs/cros_ec_codec.c:430:39: sparse:    got void [noderef] <asn:2> *
> >>>> sound/soc/codecs/cros_ec_codec.c:549:69: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void const volatile [noderef] <asn:2> * @@    got latile [noderef] <asn:2> * @@
> >>>> sound/soc/codecs/cros_ec_codec.c:549:69: sparse:    expected void const volatile [noderef] <asn:2> *
> >>>> sound/soc/codecs/cros_ec_codec.c:549:69: sparse:    got unsigned char [usertype] *addr
> >>>> sound/soc/codecs/cros_ec_codec.c:698:33: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void volatile [noderef] <asn:2> * @@    got latile [noderef] <asn:2> * @@
> >>>> sound/soc/codecs/cros_ec_codec.c:698:33: sparse:    expected void volatile [noderef] <asn:2> *
> >>>> sound/soc/codecs/cros_ec_codec.c:698:33: sparse:    got unsigned char [usertype] *wov_lang_shm_p
> >>     sound/soc/codecs/cros_ec_codec.c:699:48: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void volatile [noderef] <asn:2> * @@    got latile [noderef] <asn:2> * @@
> >>     sound/soc/codecs/cros_ec_codec.c:699:48: sparse:    expected void volatile [noderef] <asn:2> *
> >>>> sound/soc/codecs/cros_ec_codec.c:699:48: sparse:    got unsigned char [usertype] *
> > I cannot reproduce the same sparse errors.
> >
> > My commit stack: apply my patches onto broonie/sound.git for-next
> > $ git log --oneline
> > b4471777f5d8 (HEAD -> draft) ASoC: mediatek: mt8183: support WoV
> > b6bb558fa59d ASoC: dt-bindings: mt8183: add ec-codec
> > a08bede115d4 ASoC: mediatek: mt6358: support WoV
> > f67068fd0c91 ASoC: cros_ec_codec: support WoV
> > 7e11271c070e ASoC: dt-bindings: cros_ec_codec: add SHM bindings
> > fd04f20e77d3 ASoC: cros_ec_codec: read max DMIC gain from EC codec
> > c008f01d5bc3 platform/chrome: cros_ec: add common commands for EC codec
> > 50d2c1f9b1f4 ASoC: cros_ec_codec: extract DMIC EC command from I2S RX
> > 00e5a1c121eb ASoC: cros_ec_codec: refactor I2S RX
> > 3f0c475d6ec8 platform/chrome: cros_ec: remove unused EC feature
> > 3877dcd0194c (mark/for-next, asoc-next) Merge branch 'asoc-5.5' into asoc-next
> >
> > My reproduce steps:
> > $ make ARCH=x86_64 mrproper
> > $ make ARCH=x86_64 allmodconfig
> > $ make ARCH=x86_64 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' -j40

Find a typo from my previous message.  It should be "make ARCH=... C=1 ...".

> > 2>&1 | grep -v sched | tee log.txt
> > (Note: filter sched out to not get flood sparse errors)
> > $ grep cros_ec_codec log.txt
> >    CHECK   sound/soc/codecs/cros_ec_codec.c
> >    CC [M]  sound/soc/codecs/cros_ec_codec.o
> >
> > It did not generate the same message as 0day reported.
> >
> > One difference would be the sparse version (it is from "apt install"
> > in my environment):
> > $ sparse --version
> > 0.6.0 (Debian: 0.6.0-3)
> > On the other hand, 0day used "v0.6.1-rc1-42-g38eda53-dirty".
>
> Hi,
>
> The sparse warnings could be generated by the latest sparse
> (https://github.com/lucvoo/sparse.git). Could you try again?

Thanks.  By using the version from github, it can generate the same
sparse errors.
$ sparse --version
v0.6.1-rc1-43-g0ccb3b4

It seems current debian's version (i.e. 0.6.0 (Debian: 0.6.0-3))
cannot reproduce the errors even without the typo mentioned above.

>
> Best Regards,
> Rong Chen
>
> >
> > Guenter, what we could do in the case?  Do you have any idea?
> > _______________________________________________
> > kbuild-all mailing list -- kbuild-all@lists.01.org
> > To unsubscribe send an email to kbuild-all-leave@lists.01.org
>
