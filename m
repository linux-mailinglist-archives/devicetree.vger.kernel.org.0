Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 059C644240D
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 00:33:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230107AbhKAXgY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Nov 2021 19:36:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229684AbhKAXgY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Nov 2021 19:36:24 -0400
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com [IPv6:2607:f8b0:4864:20::731])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70D47C061714
        for <devicetree@vger.kernel.org>; Mon,  1 Nov 2021 16:33:50 -0700 (PDT)
Received: by mail-qk1-x731.google.com with SMTP id n15so4644232qkp.12
        for <devicetree@vger.kernel.org>; Mon, 01 Nov 2021 16:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bzFhFp5jwj6oxpHBZmdG5bSxzTQ5DH20gHG8+yrM+zo=;
        b=YO88VLC4ltN8sRPtQnd98iOlONFJf8prHHr1jQdwsIyXtSntx2eSmpWr3dhpykK+YT
         Fiphj7V0Qw1L8Qs3BVhxzj7B3cN/YGGjT6j4JW3cSX/EiBHZrxagV9jSUSmOaLDHHNLm
         00KMGqV5Mtm3hIfUzDZYQfJTFGoiPqVGqLhPY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bzFhFp5jwj6oxpHBZmdG5bSxzTQ5DH20gHG8+yrM+zo=;
        b=ikDbrOS/uANgawCwHU8WKH4Tv29Izrx6QReWJO8952tK0ZMfnuFleMGGpPM6i1+1pB
         51Srpos80QaoELXTaygYv5p40YYWpl7hS46wCu28e0yWIrDlM+XQ6m3fuPiP/JWUxBaq
         aCJBB1/EJINhtweGFSpzsu2j8n/A5cRDBU5J0ESdJltyaHXYvQliTPfDvgxywZDARPmA
         N3VcngwMflz6VzSpcvy7Zc3IrnWqIMuC6b68ojXSs/1M+Cv2oW8B8xQNxLr4CNAtX1Xh
         8PAWMPdzkAqfjW+g4ONroysxpxn3DpBpPzYTcYo/nDQf3kXRJhaDxdXiUPf4nplsdCnZ
         bRtQ==
X-Gm-Message-State: AOAM5316rMLBxy6CMNHJLDKofMDs0JtQBNHYUs1ok05OeumZr7nXsgVg
        Rff22v8cGBFeghIlCG8m0DwDrteMh4qnxd0rfis=
X-Google-Smtp-Source: ABdhPJxX2WRQaCU+xpjvX+wOKI7BJJwhAz0DomOJX8odLbZsNSqnqkDe8+QXRWmcZYjvfc4gTD6vFsn57A6IgFtLdiM=
X-Received: by 2002:a05:620a:818:: with SMTP id s24mr26017694qks.395.1635809629623;
 Mon, 01 Nov 2021 16:33:49 -0700 (PDT)
MIME-Version: 1.0
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com> <20211101233751.49222-2-jae.hyun.yoo@intel.com>
In-Reply-To: <20211101233751.49222-2-jae.hyun.yoo@intel.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Mon, 1 Nov 2021 23:33:37 +0000
Message-ID: <CACPK8XcAN-SsKDS2E_Cnv=5-Rq=9sAWYyb88i2Ub-iX0WH6aZw@mail.gmail.com>
Subject: Re: [PATCH -next 1/4] ARM: dts: aspeed: add LCLK setting into LPC IBT node
To:     Jae Hyun Yoo <jae.hyun.yoo@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Corey Minyard <minyard@acm.org>,
        Andrew Jeffery <andrew@aj.id.au>,
        Cedric Le Goater <clg@kaod.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote:
>
> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>
> Add LCLK clock setting into LPC IBT node to enable the LCLK by
> individual LPC sub drivers.
>
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Reviewed-by: Joel Stanley <joel@jms.id.au>

Do you need to update the bindings too?

> ---
>  arch/arm/boot/dts/aspeed-g4.dtsi | 1 +
>  arch/arm/boot/dts/aspeed-g5.dtsi | 1 +
>  arch/arm/boot/dts/aspeed-g6.dtsi | 1 +
>  3 files changed, 3 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
> index b313a1cf5f73..f14dace34c5a 100644
> --- a/arch/arm/boot/dts/aspeed-g4.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g4.dtsi
> @@ -381,6 +381,7 @@ ibt: ibt@140 {
>                                         compatible = "aspeed,ast2400-ibt-bmc";
>                                         reg = <0x140 0x18>;
>                                         interrupts = <8>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         status = "disabled";
>                                 };
>
> diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
> index c7049454c7cb..d0cc4be2de59 100644
> --- a/arch/arm/boot/dts/aspeed-g5.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g5.dtsi
> @@ -507,6 +507,7 @@ ibt: ibt@140 {
>                                         compatible = "aspeed,ast2500-ibt-bmc";
>                                         reg = <0x140 0x18>;
>                                         interrupts = <8>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         status = "disabled";
>                                 };
>                         };
> diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed-g6.dtsi
> index 5106a424f1ce..465c3549fdc3 100644
> --- a/arch/arm/boot/dts/aspeed-g6.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g6.dtsi
> @@ -581,6 +581,7 @@ ibt: ibt@140 {
>                                         compatible = "aspeed,ast2600-ibt-bmc";
>                                         reg = <0x140 0x18>;
>                                         interrupts = <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         status = "disabled";
>                                 };
>                         };
> --
> 2.25.1
>
