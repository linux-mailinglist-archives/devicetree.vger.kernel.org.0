Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C73BE429F7F
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 10:14:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234661AbhJLIQD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 04:16:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234635AbhJLIQC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Oct 2021 04:16:02 -0400
Received: from mail-ua1-x935.google.com (mail-ua1-x935.google.com [IPv6:2607:f8b0:4864:20::935])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 172F7C06161C
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 01:14:01 -0700 (PDT)
Received: by mail-ua1-x935.google.com with SMTP id q13so17090967uaq.2
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 01:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Gr2/Z0naSLUPb+MayH+nyDEWirany5uxuZ/i7RKgxSU=;
        b=zcSk6kvpXDQ4j2EK2+y7ray0Na6HdRhS06AgQa+tTZBgcch7omm3zQSiHCXPGqiGS1
         7EgWFanKh2TZ+n8Bk9pvTHBZR+eGXPXl5KtMb/qnD6CD70WR6hA4vjD9bEoP9mnOdxaa
         pFeA3uurQzSmU9SoBvGE7xetAmf2nEphLtCOd5HRLdVisRsG+Nru5kNeiut+UgvI0wBC
         mhzAduWdjAbZX8V3VRBeCKeqhBFo2JNAngpZE8L91QhX2yxmZtRiNN1+CM0FDo+nULQ/
         lMj/lH15t7Fr6sWKopHhMU1x9nO+VfgJaDXlsP07OujuqQqQGAjthnVNM44c5oWaww/v
         +B0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Gr2/Z0naSLUPb+MayH+nyDEWirany5uxuZ/i7RKgxSU=;
        b=f6QZae0OtBX+kgdp0mxWWUwuUqmX8IUok0tK6ogtB2rohctAoWX/rCPdPn9dww3+uM
         Tx2rcwtfAZrtrTGPSlvvX58KWaLVztIz7z9eqM4Hk1eRckIniaQh3ve2SOEDZwO8/pLo
         hu5UDoKtyzj3GryYZkmGNJ8WM5TAbJMcVtv2go74IIgQJHQzjvgiasr+QBT59kvM8/J7
         YutauwWi5EjxIZR7WTpnLaiblIttjdqRIz8EdPnRqzhT7Nczxe9MqeTwczAkLKfIR4ws
         wQQQz3+tW706UjF9OG1gffzOc17ki0etXaWY2SMjudWbkn1LqVnZFHZb64txkpRuIvh4
         Zxfg==
X-Gm-Message-State: AOAM532XaRl+x2GAgz1cvLsBox09dksv6GqpfGTUrCRHW1DuqePqbc0x
        UYy/VEZe403fkv0LJOLISAfWYCzMiFRwEP3ydbL4ig==
X-Google-Smtp-Source: ABdhPJzG9Dhgiod/wXzmIVRqNX8CNBE42sQEayZ3zzN4Dobgq28Rkx8L/n7OaxX73qh01VX5dkcbzs9vDVT+VUm8Dtk=
X-Received: by 2002:ab0:16d4:: with SMTP id g20mr19911620uaf.114.1634026440192;
 Tue, 12 Oct 2021 01:14:00 -0700 (PDT)
MIME-Version: 1.0
References: <20211008154352.19519-1-semen.protsenko@linaro.org>
 <20211008154352.19519-5-semen.protsenko@linaro.org> <7049b3a9-dc8f-2ae9-01e6-eb3b6f461400@kernel.org>
 <CGME20211011101326eucas1p17e6deeaa2449bf3f0d6306fb930cce17@eucas1p1.samsung.com>
 <CAPLW+4kJK=kaiCLDXX1EGLhbKJo5pcHQY9QCj0SVyGQP1n7q0g@mail.gmail.com> <ef781890-76ca-3392-9a17-3856fa1834cf@samsung.com>
In-Reply-To: <ef781890-76ca-3392-9a17-3856fa1834cf@samsung.com>
From:   Sam Protsenko <semen.protsenko@linaro.org>
Date:   Tue, 12 Oct 2021 11:13:48 +0300
Message-ID: <CAPLW+4mXMLadAi6U3GiXqRHAGnLH79rZeK6w=EcbOccjqH4N9w@mail.gmail.com>
Subject: Re: [PATCH v3 4/5] dt-bindings: clock: Document Exynos850 CMU bindings
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Ryu Euiyoul <ryu.real@samsung.com>, Tom Gall <tom.gall@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        John Stultz <john.stultz@linaro.org>,
        Amit Pundir <amit.pundir@linaro.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Samsung SOC <linux-samsung-soc@vger.kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        =?UTF-8?Q?Pawe=C5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Mon, 11 Oct 2021 at 13:42, Sylwester Nawrocki <s.nawrocki@samsung.com> wrote:
>
> On 11.10.2021 12:13, Sam Protsenko wrote:
> > On Sat, 9 Oct 2021 at 23:41, Sylwester Nawrocki <snawrocki@kernel.org> wrote:
> >>
> >> On 08.10.2021 17:43, Sam Protsenko wrote:
> >>> Provide dt-schema documentation for Exynos850 SoC clock controller.
> >>>
> >>> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> >>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> >>> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
> [...]
> >>> +++ b/Documentation/devicetree/bindings/clock/samsung,exynos850-clock.yaml
> >>> @@ -0,0 +1,185 @@
> [...]
> >>> +
> >>> +title: Samsung Exynos850 SoC clock controller
> >>> +
> >>> +maintainers:
> >>> +  - Sam Protsenko <semen.protsenko@linaro.org>
> >>> +  - Chanwoo Choi <cw00.choi@samsung.com>
> >>> +  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> >>> +  - Sylwester Nawrocki <s.nawrocki@samsung.com>
> >>> +  - Tomasz Figa <tomasz.figa@gmail.com>
> >>> +
> >>> +description: |
> >>> +  Exynos850 clock controller is comprised of several CMU units, generating
> >>> +  clocks for different domains. Those CMU units are modeled as separate device
> >>> +  tree nodes, and might depend on each other. Root clocks in that clock tree are
> >>> +  two external clocks:: OSCCLK (26 MHz) and RTCCLK (32768 Hz). Those external
> >>> +  clocks must be defined as fixed-rate clocks in dts.
> >>> +
> >>> +  CMU_TOP is a top-level CMU, where all base clocks are prepared using PLLs and
> >>> +  dividers; all other leaf clocks (other CMUs) are usually derived from CMU_TOP.
> >>> +
> >>> +  Each clock is assigned an identifier and client nodes can use this identifier
> >>> +  to specify the clock which they consume. All clocks that available for usage
> >>
> >> s/All clocks that available/All clocks available ?
> >> No need to resend, I can amend it when applying.
> >>
> >
> > Yeah, not a native speaker, I tend to do such mistakes sometimes :)
> > Please fix when applying.
> >
> > Btw, I can see that you already applied 3 out of 5 patches from this
> > patch series here: [1]. Can you please also apply the rest, or is
> > there any outstanding comments that I missed?
>
> The patches look good to me, I just wanted to allow some for Rob to have
> a look and provide an Ack.
>

Can you please review this one?

Thanks!

> Regards,
> --
> Sylwester Nawrocki
> Samsung R&D Institute Poland
