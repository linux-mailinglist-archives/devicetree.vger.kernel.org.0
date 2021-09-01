Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A2F2B3FD791
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 12:21:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233886AbhIAKWr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 06:22:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233168AbhIAKWr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 06:22:47 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BE93C061575
        for <devicetree@vger.kernel.org>; Wed,  1 Sep 2021 03:21:50 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id i28so3990599ljm.7
        for <devicetree@vger.kernel.org>; Wed, 01 Sep 2021 03:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mgYfR3/CpQ3YFz8SbMrcJmhQtblgI9cHByyIJ0goOBI=;
        b=eWVsHdCtUIQxAlqIqaA9KKdn3ovd4zMoXEx2w4VxVZ4sy2vrn74BKX9DJH6nV6/1Al
         aLop/fzzMw45Lo6jMK04X/WVagNiH7iG2IYhIoKUvHwFiedVaFaXUiVBEdCcMUQwnJMd
         sVDmB0MR92tBXbGf2gdX/3C2Kc33dlgSVrhXc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mgYfR3/CpQ3YFz8SbMrcJmhQtblgI9cHByyIJ0goOBI=;
        b=T5uFPtP1aCHFyuvAutgtlHINr49fj1JFTRRs8m5BsC+2FuDltjn2yw0YtUyefoBxSJ
         vW9PwLaov27cDLHpvVVuPJazaQVaEbusTfUs2MnyqMkKuOCOYm89KnbmfSaNIgSG94yQ
         pAcnPyeGTPLgflTRd7Z7nA1ElA3claztjt2wIlVt9ahCjdCjASxr1YadJ1o76ju4nY/W
         ncqwqJkr4l7GhKr/rl0tjLrxG+c1RxeHgywDbcq2agqYDsFOUSdYMJLtMBzZSoPqs77e
         2KAxT9I1SJcevpOmIj7fp1aAmHS2tu2oGtUiLKRWvo8mmiRwMBt8c9MosD239eTpyn03
         Ccyg==
X-Gm-Message-State: AOAM532cbwjxJnQ46MTsUsSDGgZ88k7VQ5o0/BXwuV3+27VHL8VkHojr
        XjbSWrgRxBNv925BG+0cv43X85Spq69v238sgOCVyg==
X-Google-Smtp-Source: ABdhPJyrlHHkley1jLqdJEA9M3j2B5m5WxNfwf3JuAH+EwmCKfYibJMfqcFndwA7usdLIL6NyzfXvJC3GLizwiSgejs=
X-Received: by 2002:a2e:964b:: with SMTP id z11mr17242550ljh.91.1630491708890;
 Wed, 01 Sep 2021 03:21:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210830003603.31864-1-zhiyong.tao@mediatek.com>
 <20210830003603.31864-3-zhiyong.tao@mediatek.com> <YS6pbO4hmNyX//tP@robh.at.kernel.org>
 <1630461636.21764.1.camel@mhfsdcap03>
In-Reply-To: <1630461636.21764.1.camel@mhfsdcap03>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 1 Sep 2021 18:21:37 +0800
Message-ID: <CAGXv+5H2-o91VGHwBUB_Gui1pa5m9jz6xTjHvP3+ue8=-ZWGvQ@mail.gmail.com>
Subject: Re: [PATCH v11 2/4] dt-bindings: pinctrl: mt8195: change pull up/down description
To:     "zhiyong.tao" <zhiyong.tao@mediatek.com>
Cc:     Rob Herring <robh@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        hui.liu@mediatek.com, Eddie Huang <eddie.huang@mediatek.com>,
        Light Hsieh <light.hsieh@mediatek.com>,
        Biao Huang <biao.huang@mediatek.com>,
        Hongzhou Yang <hongzhou.yang@mediatek.com>,
        Sean Wang <sean.wang@mediatek.com>,
        Seiya Wang <seiya.wang@mediatek.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 1, 2021 at 10:01 AM zhiyong.tao <zhiyong.tao@mediatek.com> wrote:
>
> On Tue, 2021-08-31 at 17:13 -0500, Rob Herring wrote:
> > On Mon, Aug 30, 2021 at 08:36:01AM +0800, Zhiyong Tao wrote:
> > > Change pull up/down description
> >
> > Every commit is a 'change'. Your commit msg should explain 'why', not
> > what the diff is.
> >
> Hi robh,
> we will add 'why' explanation in the commit msg in v12.
>
>
> > >
> > > Signed-off-by: Zhiyong Tao <zhiyong.tao@mediatek.com>
> > > ---
> > >  .../bindings/pinctrl/pinctrl-mt8195.yaml      | 32 +++++++++++++++++--
> > >  1 file changed, 29 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/pinctrl/pinctrl-mt8195.yaml b/Documentation/devicetree/bindings/pinctrl/pinctrl-mt8195.yaml
> > > index 2f12ec59eee5..a341ed9f0095 100644
> > > --- a/Documentation/devicetree/bindings/pinctrl/pinctrl-mt8195.yaml
> > > +++ b/Documentation/devicetree/bindings/pinctrl/pinctrl-mt8195.yaml
> > > @@ -85,9 +85,35 @@ patternProperties:
> > >            2/4/6/8/10/12/14/16mA in mt8195.
> > >          enum: [0, 1, 2, 3, 4, 5, 6, 7]
> > >
> > > -      bias-pull-down: true
> > > -
> > > -      bias-pull-up: true
> > > +      bias-pull-down:
> > > +        description: |
> > > +          For pull down type is normal, it don't need add RSEL & R1R0 define
> > > +          and resistance value.
> > > +          For pull down type is PUPD/R0/R1 type, it can add R1R0 define to
> > > +          set different resistance. It can support "MTK_PUPD_SET_R1R0_00" &
> > > +          "MTK_PUPD_SET_R1R0_01" & "MTK_PUPD_SET_R1R0_10" & "MTK_PUPD_SET_R1R0_11"
> > > +          define in mt8195.
> > > +          For pull down type is RSEL, it can add RSEL define & resistance value(ohm)
> > > +          to set different resistance. It can support "MTK_PULL_SET_RSEL_000" &
> > > +          "MTK_PULL_SET_RSEL_001" & "MTK_PULL_SET_RSEL_010" & "MTK_PULL_SET_RSEL_011" &
> > > +          "MTK_PULL_SET_RSEL_100" & "MTK_PULL_SET_RSEL_101" & "MTK_PULL_SET_RSEL_110" &
> > > +          "MTK_PULL_SET_RSEL_111" define in mt8195. It can also support resistance value(ohm)
> > > +          "75000" & "5000" in mt8195.
> >
> > Sounds like constraints on the values. Please write a schema.
> >
> we will add a schema here in v12.

Could the description be written to encourage device tree authors to
use SI units instead of the macros?

Thanks
ChenYu

>
> Thanks
> > > +
> > > +      bias-pull-up:
> > > +        description: |
> > > +          For pull up type is normal, it don't need add RSEL & R1R0 define
> > > +          and resistance value.
> > > +          For pull up type is PUPD/R0/R1 type, it can add R1R0 define to
> > > +          set different resistance. It can support "MTK_PUPD_SET_R1R0_00" &
> > > +          "MTK_PUPD_SET_R1R0_01" & "MTK_PUPD_SET_R1R0_10" & "MTK_PUPD_SET_R1R0_11"
> > > +          define in mt8195.
> > > +          For pull up type is RSEL, it can add RSEL define & resistance value(ohm)
> > > +          to set different resistance. It can support "MTK_PULL_SET_RSEL_000" &
> > > +          "MTK_PULL_SET_RSEL_001" & "MTK_PULL_SET_RSEL_010" & "MTK_PULL_SET_RSEL_011" &
> > > +          "MTK_PULL_SET_RSEL_100" & "MTK_PULL_SET_RSEL_101" & "MTK_PULL_SET_RSEL_110" &
> > > +          "MTK_PULL_SET_RSEL_111" define in mt8195. It can also support resistance value(ohm)
> > > +          "1000" & "1500" & "2000" & "3000" & "4000" & "5000" & "10000" & "75000" in mt8195.
> > >
> > >        bias-disable: true
> > >
> > > --
> > > 2.18.0
> > >
> > >
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
