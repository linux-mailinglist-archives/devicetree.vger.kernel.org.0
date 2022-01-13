Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C1C348DDE5
	for <lists+devicetree@lfdr.de>; Thu, 13 Jan 2022 19:54:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237677AbiAMSyI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jan 2022 13:54:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237672AbiAMSyI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jan 2022 13:54:08 -0500
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF3CDC06173E
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 10:54:07 -0800 (PST)
Received: by mail-pf1-x434.google.com with SMTP id s15so691063pfk.6
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 10:54:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lixom-net.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tb5858QqXIcL5etsmWCS0ZKhHGEgdWFwctSsz78MvDI=;
        b=UK7Pq02IigfJ4UwrZ8hJfii4Xs3neqjQIZcCnn8iEJ2HaSzAsOFfNWUOvyqHby6xZ3
         RPlt+Q9ETiZ57YNEA2lks/Dmj+Yk5qVw6hReh/CyXQxkUhA9iluXR8+lFYLBQ6QHkhM/
         n2ilJTcMm9FfoIvY9Pc/SVqd5ihJfZNoRu56K6O5UOOWWjHBbiczhjlaF92FQkLDeZZm
         Na/p4eIaTEnhyy5sMOVTJTMbbIUFAHYkfchs8yApFNnFluEjW71UU0DvNSBgg1u1x70O
         rdrXoDDPa4vNGbC08xoLC6Fkxa2SJR0HokkgcJz1d/qarYXgH+CmInrAtTcqudfn2bNH
         TnYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tb5858QqXIcL5etsmWCS0ZKhHGEgdWFwctSsz78MvDI=;
        b=rlDJiycD/4mMoLzd59qp04IsFgl3XIQLJsd4CQ33lpsxHjyOpyuOEVpGSF/djhJO52
         uc+cP0ZQO6iVpQw0tkw4794pOsoDSfF49Ctc9GlPuRdaUZb+3MvghTD4//anzvIOl33+
         h0ew90nMEzKsgr9/8y1A4F3nnBZ9kmlV6jSqJ9Qd1vFOrNne8BlugmKgNFAO/rFiWqr9
         lSUQ9g2RGePF9g0RYGooGUztz3/PgpTJh9e+YSkigBHcW5+DyC1jE9qoVGpWGZ8Q4wfJ
         WVg8Bm/pR3XOJ0oRIGrq5D5yTMAPI+F+tARkGbvO7UoCeroHh4bmQcMxbWEJ/RN6EJ59
         yYPg==
X-Gm-Message-State: AOAM531eIgq4HToxK2iVTF7zSynlayBMk2brf18wxi/AWWSMZWFPfiFO
        B7gdSB82IgxH8TbgoTvcImGMYO17xii9pZGv6L5ajQ==
X-Google-Smtp-Source: ABdhPJzXlahtnsFy6IBae/4XXtwKfp3ieNHsHEWW/ixmJdS+WTYxk6qaqsRZoeKRiQr50fLtEznw6+6eMB/iQsmKuX4=
X-Received: by 2002:a05:6a00:16c7:b0:4a5:d9c1:89da with SMTP id
 l7-20020a056a0016c700b004a5d9c189damr5491085pfc.34.1642100047311; Thu, 13 Jan
 2022 10:54:07 -0800 (PST)
MIME-Version: 1.0
References: <CGME20220113122302epcas5p1d45c0714fe286f8f91d0f28c3fad86e4@epcas5p1.samsung.com>
 <20220113121143.22280-1-alim.akhtar@samsung.com> <d1a852e1-c4c2-b7c4-ddeb-7fbcfd9b4e58@canonical.com>
In-Reply-To: <d1a852e1-c4c2-b7c4-ddeb-7fbcfd9b4e58@canonical.com>
From:   Olof Johansson <olof@lixom.net>
Date:   Thu, 13 Jan 2022 10:53:55 -0800
Message-ID: <CAOesGMjZ8X3r2KvPLWWwJj1ckTruiGOjx9wLyu8YbCxW+OaZgQ@mail.gmail.com>
Subject: Re: [PATCH 00/23] Add support for Tesla Full Self-Driving (FSD) SoC
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Alim Akhtar <alim.akhtar@samsung.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        SoC Team <soc@kernel.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        LinusW <linus.walleij@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES" 
        <linux-samsung-soc@vger.kernel.org>,
        Pankaj Dubey <pankaj.dubey@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 13, 2022 at 4:32 AM Krzysztof Kozlowski
<krzysztof.kozlowski@canonical.com> wrote:
>
> On 13/01/2022 13:11, Alim Akhtar wrote:
> > This patch set adds basic support for the Tesla Full Self-Driving (FSD)
> > SoC. This SoC contains three clusters of four Cortex-A72 CPUs,
> > as well as several IPs.
> >
> > Patches 1 to 8 provide support for the clock controller
> > (which is designed similarly to Exynos SoCs).
> >
> > The remaining changes provide pinmux support, initial device tree support,
> > and SPI, ADC, and MCT IP functionality.
>
> Does FSD have some version number? The FDS, especially in compatibles,
> looks quite generic, so what will happen if a newer SoC comes later? You
> would have:
>  - tesla,fsd-pinctrl
>  - tesla,fsd-xxxx-pinctrl (where xxxx could be some new version)
>
> This will be extra confusing, because fsd-pinctrl looks like the generic
> one, while it is specific...

The public sources from Tesla on github uses "turbo,trav" here, but
that's also not a versioned name. The platform itself (hw3/hw31 -- 3.1
I presume?) has numbering, but that's system and not SoC:
https://github.com/teslamotors/linux/tree/tesla-4.14-hw3/arch/arm64/boot/dts/turbo

It would be easy to do "fsd2" for naming/numbering if needed for
future versions, for example. I'm not so worried about this,
especially if there's no corresponding internal version numbering that
this would map naturally to.


-Olof
