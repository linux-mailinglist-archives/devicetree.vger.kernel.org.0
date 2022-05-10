Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A56A522732
	for <lists+devicetree@lfdr.de>; Wed, 11 May 2022 00:50:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230062AbiEJWt6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 18:49:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229561AbiEJWt5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 18:49:57 -0400
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2ECE24DC50
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 15:49:55 -0700 (PDT)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-2f7ca2ce255so2068577b3.7
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 15:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=odDeWEQn+dxMMnpuDr3wrpKOZqaMz1USU4YdJsifEC0=;
        b=mGVIIGo48qdJEBmeO1w/NaPfd+/U0PrKZm7SDFU3SbN7Tp7fphiRm+JQu+KqHJe2ie
         A9SMDftsnzoqZy0qpCjmn2sSb2MR8pC0t8MMonMGB7SbLRK5I12zJrppZ+BPhQds6RHQ
         gyyWUuip7bqEn6IfkDfLGaaIVAYN7ncFxF6mSn+mMjlFuKpSx+BNYie+9RoAdawsOTw4
         FYC05egW3X6pivH7vAsOtytkHVozGLIrsnIAYf/Xu8Jbo0WvA7A8Xh8Yxb424mtt34A3
         MdXYP9HgwK8uoFD9JXwrriiS962iJ1i2ZpHTmpKV3zMskjx6oEMq+cEgNXVtTt+Or2RR
         jF/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=odDeWEQn+dxMMnpuDr3wrpKOZqaMz1USU4YdJsifEC0=;
        b=ttMgZbPP6A/oX5LBQ1LBIMsjpm+ZRu0l10E0dvd/YOyCTsUrbkU10SbgNqPE6orkjs
         CMR5ju8CxcWdBUqAZwGI4jJfHofr3LOZ5H+WvkJsaIvR/D/5tYEInIt+VY1UMMrY2jjT
         hWOYCnCm/wfqTUimS7NXJT6tgFzx6S4YJZYDCSk3jr/kfFWyX4djA107SrxqdQA8cEyc
         /DFY9yySt7t5FuW47d14vb0+SqvFJBBqx7jDOXnp4hlSMWlvoZXL2wrETKDHL11MshK9
         agvS7KMcKZp9jZhrmc5bH7ULpU49Y3n2ptsyb/seAKSsS1+Y+HTkew8FTA24QYvka/Ih
         pNkQ==
X-Gm-Message-State: AOAM531UbHKt52wyEd/jAzOusk5ERRxBE4MHfTcyeMWnqLAPZ4oTVDyh
        EkxVfUbnfqCeX1pLB05z+636RfnvvY9RfAKVf84/Rvboi9Esyw==
X-Google-Smtp-Source: ABdhPJxpA6vOK4J63qUlZcvu8ChGp7/HgqyK3YgIAo7vg2rmQB/NK0dbW3F6axhto0qt7DPlk2lMhcktAMM3vIHK8OE=
X-Received: by 2002:a81:488b:0:b0:2f7:cc43:ae4c with SMTP id
 v133-20020a81488b000000b002f7cc43ae4cmr22414095ywa.414.1652222995163; Tue, 10
 May 2022 15:49:55 -0700 (PDT)
MIME-Version: 1.0
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de> <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com> <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com> <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <812AC0DB-A6D0-4DA3-BCDC-7743E8F61821@gmail.com> <CAMdYzYozewYUbM=Q+iJ2wdM5TrB6dGrjS6zh0qmVgWD4XPVR+Q@mail.gmail.com>
 <ABC61229-B851-4BB7-8B55-688F8A8D841A@gmail.com> <CAMdYzYrsaNED+oMj+z2b4fK7pt32Qg=nXDk3SA0KFDDCJ2XY0g@mail.gmail.com>
 <F1728C93-CFF8-4C51-B95C-A5049E0DC46A@gmail.com> <CAMdYzYpRVZ2hrGiYeQLqSduOZyKuZenw9bViS7oW7d3MWN7Z8g@mail.gmail.com>
In-Reply-To: <CAMdYzYpRVZ2hrGiYeQLqSduOZyKuZenw9bViS7oW7d3MWN7Z8g@mail.gmail.com>
From:   Peter Geis <pgwipeout@gmail.com>
Date:   Tue, 10 May 2022 18:49:43 -0400
Message-ID: <CAMdYzYpujdqejDz_K2M0aUhPYNFVgTuqnUwkOA6jcxgDdJ+RoA@mail.gmail.com>
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
To:     Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        dri-devel@lists.freedesktop.org,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 10, 2022 at 4:54 PM Peter Geis <pgwipeout@gmail.com> wrote:
>
> On Tue, May 10, 2022 at 9:49 AM Piotr Oniszczuk
> <piotr.oniszczuk@gmail.com> wrote:
> >
> >
> >
> > > Wiadomo=C5=9B=C4=87 napisana przez Peter Geis <pgwipeout@gmail.com> w=
 dniu 10.05.2022, o godz. 14:08:
> > >
> > >
> > > You are on the clk_rtc32k_frac which is a fractional divider that is
> > > fed from the 24m clock. Your clock likely isn't the issue here. I'd
> > > recommend setting up the cec-gpio node to validate your hardware
> > > works.
> >
> > Peter,
> >
> > Here is what i done to verify my rock3-a HW:
> >
> > 1.download & burn on SD Radxa Ubuntu
> > 2.boot and install v4l-utils
> > 3.run cec-compliance -v -T. It fails with error -22
> > 4.decompile Ubunntu DT.
> > 5.Check what HDMITX_CEC_M hdmi uses. It was M0
> > 6.Chenge to HDMITX_CEC_M1; compile dtb; install on sd
> > 7.reboot.
> > 8.cec-compliance -v -T gives all tests OK
> > 9.cec-ctl --image-view-on -t0 turns-on my TV
> >
> > hope this proves my HW is ok?
> >
>
> That does show that the hardware works with the oem image. It does not
> unfortunately prove if it works with your current dts. cec-gpio will
> show if it's an issue with the cec controller or an external problem.

I've pulled your dts and with a few fixes got a working system from
it. At least on the v1.1 board cec is functional:
Total for dwhdmi-rockchip device /dev/cec0: 1, Succeeded: 1, Failed:
0, Warnings: 0
