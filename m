Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E95A442410
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 00:34:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229558AbhKAXg6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Nov 2021 19:36:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbhKAXg6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Nov 2021 19:36:58 -0400
Received: from mail-qv1-xf2d.google.com (mail-qv1-xf2d.google.com [IPv6:2607:f8b0:4864:20::f2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16A29C061714
        for <devicetree@vger.kernel.org>; Mon,  1 Nov 2021 16:34:24 -0700 (PDT)
Received: by mail-qv1-xf2d.google.com with SMTP id b11so8879462qvm.7
        for <devicetree@vger.kernel.org>; Mon, 01 Nov 2021 16:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=76RMjnoXPjwirFsKHB7iHBCUdiCcGHMsVhyPA6k+egA=;
        b=nPMvyvjF0zj2silLmqDM2HS7695J3dZCiwA/l6z8FVmixdi/W1xDj18O1zPLh4LUFz
         27K99x4FpYngSCP4NBmNfFEfYIaVDTm1/2Bg25xXvgqjRqGPcSjSLxpxANXBuT2iM+8y
         JP2KzpBfOINB/0q9P8RFBD3QLIvosqGiPKP7c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=76RMjnoXPjwirFsKHB7iHBCUdiCcGHMsVhyPA6k+egA=;
        b=B7jufk7qzlsfMhvFh+Xo7Whobzw6b5qBkX6bFzsWfCYujAwPG86wKM9bR/oOXJ2wqC
         tgzTP5KJPjOjQoEHQ/oh9KgefsMbGFkHyXxORQNXZcGdSAZwwnB6lcoUZt9BiXDuFi/W
         e7jMcKvQe3ViEZE2qtHcIypb92yvvud8/ie1PJQmoBvKhraQKk3CP2n0lTvJ+0ehbLzs
         cMTErt8RBtvjM7jaaTSjwLSu7y09xAcJYhp76GCz1fSVlfPPcdAWy+C+9Qg+2m74ggke
         eDTAFfbKIaI8Fmnxi3zpAgOfogf3QykpBv5VnzCINzGoPDuq6iPDr+D2l9jsF2Bh+jTL
         LUQA==
X-Gm-Message-State: AOAM531bSNitKVAMLr4IX7ytWVfI9WRP5RWDwsAGg2FdBFOl3gFL3hSN
        GYNxfyoEVpOJuxCnn1EKjr2GY2VhSC/FCAAinAR1zgda
X-Google-Smtp-Source: ABdhPJxQlLMMwkddOTL4uZwYA9UAhQj8QLRlH7FrNeXHAwJM6ieVXUOUzBUep+EV7fOQx6XZeAYTXN2ge3VwRihdW0E=
X-Received: by 2002:a05:6214:5002:: with SMTP id jo2mr31550933qvb.27.1635809663240;
 Mon, 01 Nov 2021 16:34:23 -0700 (PDT)
MIME-Version: 1.0
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com> <20211101233751.49222-4-jae.hyun.yoo@intel.com>
In-Reply-To: <20211101233751.49222-4-jae.hyun.yoo@intel.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Mon, 1 Nov 2021 23:34:11 +0000
Message-ID: <CACPK8XcVUEdxjJTOQDf2S-VL3rbwMctQH=v3teyrEgCk__1MVg@mail.gmail.com>
Subject: Re: [PATCH -next 3/4] ARM: dts: aspeed: add LCLK setting into LPC KCS nodes
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
> Add LCLK clock setting into LPC KCS nodes to enable the LCLK by
> individual LPC sub drivers.
>
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Reviewed-by: Joel Stanley <joel@jms.id.au>

> ---
>  arch/arm/boot/dts/aspeed-g5.dtsi | 4 ++++
>  arch/arm/boot/dts/aspeed-g6.dtsi | 4 ++++
>  2 files changed, 8 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
> index d0cc4be2de59..7495f93c5069 100644
> --- a/arch/arm/boot/dts/aspeed-g5.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g5.dtsi
> @@ -446,6 +446,7 @@ kcs1: kcs@24 {
>                                         compatible = "aspeed,ast2500-kcs-bmc-v2";
>                                         reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
>                                         interrupts = <8>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         status = "disabled";
>                                 };
>
> @@ -453,6 +454,7 @@ kcs2: kcs@28 {
>                                         compatible = "aspeed,ast2500-kcs-bmc-v2";
>                                         reg = <0x28 0x1>, <0x34 0x1>, <0x40 0x1>;
>                                         interrupts = <8>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         status = "disabled";
>                                 };
>
> @@ -460,6 +462,7 @@ kcs3: kcs@2c {
>                                         compatible = "aspeed,ast2500-kcs-bmc-v2";
>                                         reg = <0x2c 0x1>, <0x38 0x1>, <0x44 0x1>;
>                                         interrupts = <8>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         status = "disabled";
>                                 };
>
> @@ -467,6 +470,7 @@ kcs4: kcs@114 {
>                                         compatible = "aspeed,ast2500-kcs-bmc-v2";
>                                         reg = <0x114 0x1>, <0x118 0x1>, <0x11c 0x1>;
>                                         interrupts = <8>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         status = "disabled";
>                                 };
>
> diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed-g6.dtsi
> index 465c3549fdc3..891b862363a7 100644
> --- a/arch/arm/boot/dts/aspeed-g6.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g6.dtsi
> @@ -520,6 +520,7 @@ kcs1: kcs@24 {
>                                         compatible = "aspeed,ast2500-kcs-bmc-v2";
>                                         reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
>                                         interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         kcs_chan = <1>;
>                                         status = "disabled";
>                                 };
> @@ -528,6 +529,7 @@ kcs2: kcs@28 {
>                                         compatible = "aspeed,ast2500-kcs-bmc-v2";
>                                         reg = <0x28 0x1>, <0x34 0x1>, <0x40 0x1>;
>                                         interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         status = "disabled";
>                                 };
>
> @@ -535,6 +537,7 @@ kcs3: kcs@2c {
>                                         compatible = "aspeed,ast2500-kcs-bmc-v2";
>                                         reg = <0x2c 0x1>, <0x38 0x1>, <0x44 0x1>;
>                                         interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         status = "disabled";
>                                 };
>
> @@ -542,6 +545,7 @@ kcs4: kcs@114 {
>                                         compatible = "aspeed,ast2500-kcs-bmc-v2";
>                                         reg = <0x114 0x1>, <0x118 0x1>, <0x11c 0x1>;
>                                         interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         status = "disabled";
>                                 };
>
> --
> 2.25.1
>
