Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9E1F5225EC
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 22:54:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232480AbiEJUyj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 16:54:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233303AbiEJUyi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 16:54:38 -0400
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06FCF255090
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 13:54:37 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id r1so156197ybo.7
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 13:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=F4vxlgRcJXMV+aeCdSejL/H/Xyip+2XNsa7o7QrIj9c=;
        b=apYcKFXKyRkKXltVE6V+9HmyVLiAdJ07j4L052Dhh7z4NHT8SrOlBnyAnbOTceQ7PB
         23Z0U4YuI4KK91eKNObrYNfEHmkq7gox8ifAC9YouElHNV1qnH2R2dx+NYSyUCmXf9Du
         UEEoVJfaUwH9J9pu2XtGEzrDtpAeCuFQ59IOUdSR3aAdZ1QhuexZWBBiGPt5xoWSbGKj
         ebFWwVxhAIpUBSpdEXDw6sDv9Au5t1D92DDcY1c62DJ+eZRqwTntqSsdU11rHNZT9wEZ
         672/J6crkeFEdE2TS/XMy3JLC4z7rpmvYdQTHAnUEKBz54LaySOtSlsCIXMn0p4QFXM+
         akRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=F4vxlgRcJXMV+aeCdSejL/H/Xyip+2XNsa7o7QrIj9c=;
        b=p/Ijb4HBFtSoGPsOvXpTdvxNcpJBDwCOTBdGMhSl0JYOqvlQ6OKGqs6QyNXhMc5RE7
         AMpPNXC3Ln6Dm2AjUBF9FzWeMrTa9V2kWxAV1Apztvf7NBNxBw44E/kIybB10WWdrmv4
         5m/2FK18eZe8EK/ecPY+afWBd1vLsK/zdkWiQcuSOp50KrkaaG67UrGksqlpgdfcFBqf
         jMg0tNeI+nXjEF/ZPlxMqobDK2+T42Kbb6Z+uWNohuQVRzkXZ9EwNZfB3KU/2XiEEBfm
         GWnatA5p9zPlq7CFn0y7De8ACXOM7ACWYmk4b/bpOlKcA99VtOHEScd/OspDfgSsUZYs
         pUCA==
X-Gm-Message-State: AOAM531xEMlowkHpWp+a5HxdUAzrsW7+neLucYYBaqjRcQh8BcWKQsJ9
        UitGZjtK/sQuaPANEPDwyBo7Pgq40NNA+PBh/+4=
X-Google-Smtp-Source: ABdhPJyaG6G68FpJZXYbpEI0CKixy2QsjV3l/Y8sR4dCm0x57IHgDblj9keWqf/J6N25b3y3godPjx2UMZujqyXpA7Q=
X-Received: by 2002:a05:6902:cf:b0:641:32bb:53fc with SMTP id
 i15-20020a05690200cf00b0064132bb53fcmr21078507ybs.232.1652216076188; Tue, 10
 May 2022 13:54:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de> <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com> <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com> <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <812AC0DB-A6D0-4DA3-BCDC-7743E8F61821@gmail.com> <CAMdYzYozewYUbM=Q+iJ2wdM5TrB6dGrjS6zh0qmVgWD4XPVR+Q@mail.gmail.com>
 <ABC61229-B851-4BB7-8B55-688F8A8D841A@gmail.com> <CAMdYzYrsaNED+oMj+z2b4fK7pt32Qg=nXDk3SA0KFDDCJ2XY0g@mail.gmail.com>
 <F1728C93-CFF8-4C51-B95C-A5049E0DC46A@gmail.com>
In-Reply-To: <F1728C93-CFF8-4C51-B95C-A5049E0DC46A@gmail.com>
From:   Peter Geis <pgwipeout@gmail.com>
Date:   Tue, 10 May 2022 16:54:24 -0400
Message-ID: <CAMdYzYpRVZ2hrGiYeQLqSduOZyKuZenw9bViS7oW7d3MWN7Z8g@mail.gmail.com>
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

On Tue, May 10, 2022 at 9:49 AM Piotr Oniszczuk
<piotr.oniszczuk@gmail.com> wrote:
>
>
>
> > Wiadomo=C5=9B=C4=87 napisana przez Peter Geis <pgwipeout@gmail.com> w d=
niu 10.05.2022, o godz. 14:08:
> >
> >
> > You are on the clk_rtc32k_frac which is a fractional divider that is
> > fed from the 24m clock. Your clock likely isn't the issue here. I'd
> > recommend setting up the cec-gpio node to validate your hardware
> > works.
>
> Peter,
>
> Here is what i done to verify my rock3-a HW:
>
> 1.download & burn on SD Radxa Ubuntu
> 2.boot and install v4l-utils
> 3.run cec-compliance -v -T. It fails with error -22
> 4.decompile Ubunntu DT.
> 5.Check what HDMITX_CEC_M hdmi uses. It was M0
> 6.Chenge to HDMITX_CEC_M1; compile dtb; install on sd
> 7.reboot.
> 8.cec-compliance -v -T gives all tests OK
> 9.cec-ctl --image-view-on -t0 turns-on my TV
>
> hope this proves my HW is ok?
>

That does show that the hardware works with the oem image. It does not
unfortunately prove if it works with your current dts. cec-gpio will
show if it's an issue with the cec controller or an external problem.
