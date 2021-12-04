Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0FCB468844
	for <lists+devicetree@lfdr.de>; Sun,  5 Dec 2021 00:36:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233814AbhLDXkT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Dec 2021 18:40:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233752AbhLDXkT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Dec 2021 18:40:19 -0500
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C59EC061354
        for <devicetree@vger.kernel.org>; Sat,  4 Dec 2021 15:36:53 -0800 (PST)
Received: by mail-ot1-x32b.google.com with SMTP id h19-20020a9d3e53000000b0056547b797b2so8543123otg.4
        for <devicetree@vger.kernel.org>; Sat, 04 Dec 2021 15:36:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NuW/fbIz0j4mSyCSfNd6qMqzZTl35SAyBw4Kyu5HiPA=;
        b=iFbmdA1TsAivA5FbFGUBriHLHlUT75w9xDbOkgIWR5o158RgJ70WSafgXYLVZVCtYh
         JbW+i/OT9oGX6cLrJjAurb4KM4XI0qhxiDyyGXjSkJsmioqwUyRLRbvbYenRvTbTwXpB
         Gi7ifeCLnLESst4k1++JcqYERHLsr7rnPGXORK/0lbRodkCHjQW3QLDob1VGDc4DquBy
         O5PhoQd37dN8UCwebSIoifubCOm4CPIYiM6iQDWrH6vZW93Z/SLd6B9FoDubK07nv38z
         tMUWwt0UntbeEPHP/RcRXrqrmd4I+DBrvxqdxeshQJyRwlsVJAV8qczxssO/yiy+u3VW
         cVug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NuW/fbIz0j4mSyCSfNd6qMqzZTl35SAyBw4Kyu5HiPA=;
        b=fSHMcb85P1ucTWsKqmZp0Ykj7X9Zs/lyZS2ayQkcAiQ0UMIzsgGt+zVpyXHIHMKKID
         tdcRFQimT0IlooAaDczxK9my034fZlUvAojZkTMaIjrX3u+a8eEiQBrononM27AfL3SM
         t6zspllKiX5vShnmMD7EhUBF8pSv8uPsnMyVhZyEOzQFyh/5v7qMLd1qVyDnE2VbbWf6
         nKw0TWtG1NfUVvnnyD4rgBHtmJu52D8sl0NB079Fu/Cc16rqyS41DyYtFghfq48VQ1Ox
         wmE5c+1dPMa5TWBLBijfGXvb84PsemCyBMWIhyJRi/bj4z2OJgc8XR9vfXY9m/le2IOm
         2/JQ==
X-Gm-Message-State: AOAM533QXjJ2qfQ8hdmsUziG9oEUkkWK77XXhG46DPcfxiqlyI2Q9COR
        2ENFH5WXjl6GAep9w2HYhYCW7A0n7ZHU/IkMwGRqPqT8GEE=
X-Google-Smtp-Source: ABdhPJy/YkD5Lpp/kh/+b64tVyaKjWYz3dLa+2TfJuzuzRee3iC2k5N/5GhHPgwu4UeTgAhYUNIO+l5Lt4i9ercDe74=
X-Received: by 2002:a9d:a42:: with SMTP id 60mr23684363otg.179.1638661012313;
 Sat, 04 Dec 2021 15:36:52 -0800 (PST)
MIME-Version: 1.0
References: <20211202095255.165797-1-herve.codina@bootlin.com>
In-Reply-To: <20211202095255.165797-1-herve.codina@bootlin.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 5 Dec 2021 00:36:41 +0100
Message-ID: <CACRpkdZPO7HOAGwV1iU+z047EFWCRbsrOjNV5o9s4dzPsT1H5w@mail.gmail.com>
Subject: Re: [PATCH 0/6] spear: Fix SPEAr3XX plgpio support
To:     Herve Codina <herve.codina@bootlin.com>
Cc:     Viresh Kumar <vireshk@kernel.org>,
        Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 2, 2021 at 10:53 AM Herve Codina <herve.codina@bootlin.com> wrote:

> Herve Codina (6):
>   pinctrl: spear: spear: Convert to regmap
>   pinctrl: spear: plgpio: Convert to regmap
>   pinctrl: spear: plgpio: Introduce regmap phandle

These three applied to the pinctrl tree.

>   ARM: dts: spear3xx: Use plgpio regmap in SPEAr310 and SPEAr320

Please apply this to the SoC tree.

>   irq: spear-shirq: Add support for IRQ 0..6

Please ask Marc Zyngier to apply this to the irqchip tree.

>   ARM: dts: spear3xx: Add spear320s dtsi

Please apply this to the SoC tree.

Yours,
Linus Walleij
