Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1FC42454D04
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 19:21:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239959AbhKQSYY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 13:24:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239971AbhKQSYY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Nov 2021 13:24:24 -0500
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com [IPv6:2607:f8b0:4864:20::d2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3319C061570
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 10:21:25 -0800 (PST)
Received: by mail-io1-xd2e.google.com with SMTP id k21so4477446ioh.4
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 10:21:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/514pVJuhGBgB+naKDe4+5FaP9UvAeZZSiSl87FUgn4=;
        b=eL0dwCK6ziyZzcwuQXHzmpinmO5UjdRB7IoboPXUGZ8Xc9C0Ec3kQX8T5xGEcyMxeB
         XO8SGF/30sobsodc1SC3AoTN+IV5JfnE9D0a3FeRkvNWh1vFSFjmt8zLVywbbl3OjNFf
         TlrRCfgFSb4tieNHEOHO2sHe5iAVChQjEnK78shF8WzIaF2jEdrWGk7Iddh/hFRkR+i5
         Gg7pGTNqkKQjl/DqMRo8MiyrlrkTPH5TWrfI9pS3wfQIKd26rm5+e4oN/apNDejgHqCG
         KD3pNiZW3v9lGalUPk8kKP2t12bbCc9+AD0M8LmOV0x8e/TfsIHZxUU1HRxH2VxwtPqs
         iDuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/514pVJuhGBgB+naKDe4+5FaP9UvAeZZSiSl87FUgn4=;
        b=Z9h/OXvsEkspUCWll8TE8Jke6ENeKmGEY4zBO5Qgog38kVnPMKCCG39xGrahmIAK/o
         /G7cCpzF/9QezTf68yqtUzKc+boVh+Y7hKHqPeFF/XKKWuTUxHw0mxXx//WRnyWRc2iK
         +H+psTs+ZTWN58iS9AKZpfDg+BDIuq6bPxxiJU6sT3ftDON3K8DywW0o4047n607QJaS
         JB4ZFFGVtkfqqpc/C9EWcxizOrxGAGric9gMiuNT6kvbOpObv+yrc/rvH3PIMnjTpx24
         smG8fT3P96bmJifNe1FDajRR4zl1XmJk+HJAU1rhU/f0mfEAsr2Qy0j820B0xYXEpnm8
         rKHg==
X-Gm-Message-State: AOAM530AO/NCh5KlxVoZ2Ikit4x0h21aZNbzTqqdsaoapzXSONeJX7fD
        1HAXqb8YWTwmA8QDxdu3jp0yVyQBfjEGGRZUfcAnwA==
X-Google-Smtp-Source: ABdhPJysqh5Di5WFqKQVOoC48CzH0iNkcxGKDYyaq6sVkIrW4Qsn7B9RB7B60DlLNZXUcm5UKxq7B87l830Tyw+lzag=
X-Received: by 2002:a05:6602:164a:: with SMTP id y10mr12459615iow.123.1637173285060;
 Wed, 17 Nov 2021 10:21:25 -0800 (PST)
MIME-Version: 1.0
References: <20211110192417.4177741-1-fparent@baylibre.com> <03de9880-1f1a-b07b-6ec3-279945e08cea@gmail.com>
In-Reply-To: <03de9880-1f1a-b07b-6ec3-279945e08cea@gmail.com>
From:   Fabien Parent <fparent@baylibre.com>
Date:   Wed, 17 Nov 2021 19:21:14 +0100
Message-ID: <CAOwMV_wmyFiSxdU7BZ-u+OLfStp+4jrwmmo-QaNvZn0HBH7Q1g@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: mt8183: add dpi node to mt8183
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Pi-Hsun Shih <pihsun@chromium.org>,
        Jitao Shi <jitao.shi@mediatek.com>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Matthias,


On Wed, Nov 17, 2021 at 6:33 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
>
>
>
> On 10/11/2021 20:24, Fabien Parent wrote:
> > From: Pi-Hsun Shih <pihsun@chromium.org>
> >
> > Add dpi node to mt8183.
> >
> > Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> > Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
> > Signed-off-by: Fabien Parent <fparent@baylibre.com>
> > ---
> >   arch/arm64/boot/dts/mediatek/mt8183.dtsi | 11 +++++++++++
> >   1 file changed, 11 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > index ba4584faca5a..7c283c0b68b5 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > @@ -1443,6 +1443,17 @@ dsi0: dsi@14014000 {
> >                       phy-names = "dphy";
> >               };
> >
> > +             dpi0: dpi@14015000 {
> > +                     compatible = "mediatek,mt8183-dpi";
> > +                     reg = <0 0x14015000 0 0x1000>;
> > +                     interrupts = <GIC_SPI 237 IRQ_TYPE_LEVEL_LOW>;
> > +                     power-domains = <&spm MT8183_POWER_DOMAIN_DISP>;
> > +                     clocks = <&mmsys CLK_MM_DPI_IF>,
> > +                              <&mmsys CLK_MM_DPI_MM>,
> > +                              <&apmixedsys CLK_APMIXED_TVDPLL>;
> > +                     clock-names = "pixel", "engine", "pll";
>
>
> We are missing the output port node, don't we?

The output port node is defined in: [PATCH 2/3] arm64: dts: mediatek:
mt8183-pumpkin: add HDMI support
Unlike MT8173, there is no HDMI IP in the MT8183 SoC.

>
> Regards,
> Matthias
>
> > +             };
> > +
> >               mutex: mutex@14016000 {
> >                       compatible = "mediatek,mt8183-disp-mutex";
> >                       reg = <0 0x14016000 0 0x1000>;
> >
