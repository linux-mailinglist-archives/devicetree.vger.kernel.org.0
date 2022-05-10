Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52CA75214D5
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 14:09:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236487AbiEJMM6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 08:12:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232322AbiEJMM4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 08:12:56 -0400
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E904238D79
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 05:08:58 -0700 (PDT)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-2f7d621d1caso176758407b3.11
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 05:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=j0oL9+kBsnLy6C0ogmrfSuIg/MzgC7W4K7D/KPBvz1A=;
        b=cWQC53+eDRuJuIWv4FF8BHQ+cdDHd6IiQAsbBqM657B9Zx9tNFCkWMYo4mMD/X9iVb
         POhpufVfVv5IpatIIDMTN5bnB1p2R9u5BvWkxlgaXKePLxFlJuehqC7k1N+JaE2d8957
         dJivn2IZxYXCm3Y4v9Ew/SmUt76aj7vFnpL8hCY04rb0XAFS4hYrmXk7k6H7poRkH61l
         +hTRAZLjpXC/0WTmDFC9swbSR2dOC9BTJdFJ6Eff5LQXfuaHzoK2XVu6izCwVlbCwday
         wM6kX1jFpGfAHwjNDMjKXXWWN77JsJ4cXhC/F8JePYd9FM5J8wzLiYpGirfcPjkb7Fx0
         h3Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=j0oL9+kBsnLy6C0ogmrfSuIg/MzgC7W4K7D/KPBvz1A=;
        b=5TNa7aFAoqwIuZeokgvtAJbmVBVA/Uo9e9FjHSVbnfFUV7ABugG0zVukpGAN3S5YJN
         XqkuWbMKx2EWfe0By1z0zzzLG9NSucdZpFNWZYDBepPTKi5e8ii0FbeeFh1qNOSf1DJN
         R4vM1ZrBO62kerLjtB3RSoAwsvZsE3VmC8zfUNcxdcqo2LyRX0y8t3sZdYYg0KaMFeFI
         +rBqNTZF/W3XRmNvITqsHuipXThHgsz2TmHNiAKNCKNPy8/t5v0NzDmQ6jwmwnGc3ZYn
         pUG5e2n1Rvcf/+7LtvUOrFvJ/yUpFW+iW7fYC8JDAc5D3J8K6WYh9ubx72VHq9IjW+hJ
         FSQw==
X-Gm-Message-State: AOAM531AkAAB/pKBB0wrBVKA5qzh0Kojc0UaMkDvXJv1G8ypN97Bn5Z2
        Xtxn6qPhZZc97UKgm4wMD0Jt8bMpNaYgSMjgFYs=
X-Google-Smtp-Source: ABdhPJwRTg7zxeefA+5CviigWYq414sTputJite8EjfxYGbeZqI3BUj/2/O0TjezCb73L1ed25VP23S+1nthZLWKqDI=
X-Received: by 2002:a81:32c1:0:b0:2f7:cda8:50e1 with SMTP id
 y184-20020a8132c1000000b002f7cda850e1mr19252602ywy.519.1652184537294; Tue, 10
 May 2022 05:08:57 -0700 (PDT)
MIME-Version: 1.0
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de> <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com> <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com> <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <812AC0DB-A6D0-4DA3-BCDC-7743E8F61821@gmail.com> <CAMdYzYozewYUbM=Q+iJ2wdM5TrB6dGrjS6zh0qmVgWD4XPVR+Q@mail.gmail.com>
 <ABC61229-B851-4BB7-8B55-688F8A8D841A@gmail.com>
In-Reply-To: <ABC61229-B851-4BB7-8B55-688F8A8D841A@gmail.com>
From:   Peter Geis <pgwipeout@gmail.com>
Date:   Tue, 10 May 2022 08:08:45 -0400
Message-ID: <CAMdYzYrsaNED+oMj+z2b4fK7pt32Qg=nXDk3SA0KFDDCJ2XY0g@mail.gmail.com>
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
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 10, 2022 at 3:29 AM Piotr Oniszczuk
<piotr.oniszczuk@gmail.com> wrote:
>
>
>
> > Wiadomo=C5=9B=C4=87 napisana przez Peter Geis <pgwipeout@gmail.com> w d=
niu 10.05.2022, o godz. 03:35:
> >
> > Could you grab the clock tree from /sys/kernel/debug/clk/clk_summary
> > for the clk_hdmi_cec tree?
>
> Here it is:
>                                 enable  prepare  protect                 =
               duty  hardware
>    clock                          count    count    count        rate   a=
ccuracy phase  cycle    enable
> -------------------------------------------------------------------------=
------------------------------
>    clk_rtc32k_frac                   1        1        0       32768     =
     0     0  50000         Y
>        clk_rtc_32k                    1        1        0       32768    =
      0     0  50000         Y
>           clk_hdmi_cec                1        2        0       32768    =
      0     0  50000         Y

You are on the clk_rtc32k_frac which is a fractional divider that is
fed from the 24m clock. Your clock likely isn't the issue here. I'd
recommend setting up the cec-gpio node to validate your hardware
works.
