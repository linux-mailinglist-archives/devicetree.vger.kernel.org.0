Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D8F727BE6F
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 09:55:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725776AbgI2Hy7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 03:54:59 -0400
Received: from mail-ej1-f68.google.com ([209.85.218.68]:38721 "EHLO
        mail-ej1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725765AbgI2Hy7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 03:54:59 -0400
Received: by mail-ej1-f68.google.com with SMTP id dd13so907940ejb.5
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 00:54:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wPvA1+k4cB00aGM/XGM/nAY1Au5yYruhB0n3MDrqyaw=;
        b=gvNs7h46dcy16pvdwst4HLzh0Lz9tp8rnvFKXKZAw7QXv7+P0AJa1ICDoGOGZz9dA6
         5K2mXL//zBjnEWR9UFHtXI9K/+nOZQJMZP4Gr2Q+LOtuTn/ovXZ4JS+ME9pzcDU/cVfD
         ch94T8yTPSUvQtT2BjXlA6POdLOhnCeQUYnpG6dwf9IVEZKP1fm0FMBE7KeRr5SjGa6C
         apKDrl5dPFfR8rW4i39Rex3nlmsMhHFlxud1CazanZGYr+RpLzJ9LneOMHF/vHBB9E0I
         dO5HygZ8Y3EF1NxIRv7XbeuqmowVUNQarKckMmjUDmalI2DIChmQ9q0lA8y5sytCuwB0
         nFug==
X-Gm-Message-State: AOAM530STuhbV/wwgRB2LDm1ec4FigulP+0+DV5ePWYAymOoxgp1d8Vv
        kJMQAlrGvTYs/1vmAAVigHQ=
X-Google-Smtp-Source: ABdhPJwHb9+HJsR0tDoxbevVSZv/j1oX6wUXAnnGlVGUf+scTBRuuW0wj5fDbRgLSbMYfGX0DfJEAg==
X-Received: by 2002:a17:906:c309:: with SMTP id s9mr2750512ejz.167.1601366097081;
        Tue, 29 Sep 2020 00:54:57 -0700 (PDT)
Received: from kozik-lap ([194.230.155.194])
        by smtp.googlemail.com with ESMTPSA id j8sm5175022edp.58.2020.09.29.00.54.55
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 29 Sep 2020 00:54:56 -0700 (PDT)
Date:   Tue, 29 Sep 2020 09:54:54 +0200
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org, s.hauer@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: freescale: Add imx8mn ddr3l evk board
 support
Message-ID: <20200929075454.GB7139@kozik-lap>
References: <20200927094124.2714390-1-ping.bai@nxp.com>
 <20200927094124.2714390-2-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200927094124.2714390-2-ping.bai@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Sep 27, 2020 at 05:41:24PM +0800, Jacky Bai wrote:
> For i.MX8MN DDR3L EVK board, it populates with the 11x11 package
> with no GPU, no display module compared to 14x14 package. For
> the board design, it is same as LPDDR4 board except that the
> display related interface is removed.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/Makefile             |  1 +
>  arch/arm64/boot/dts/freescale/imx8mn-ddr3l-evk.dts | 11 +++++++++++
>  2 files changed, 12 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-ddr3l-evk.dts
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index f8d59433af01..4edcbd920a8f 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -33,6 +33,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-var-som-symphony.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mn-evk.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr3l-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr4-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mn-var-som-symphony.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-ddr3l-evk.dts b/arch/arm64/boot/dts/freescale/imx8mn-ddr3l-evk.dts
> new file mode 100644
> index 000000000000..854cb3a525f0
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-ddr3l-evk.dts
> @@ -0,0 +1,11 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> + /*
> +  * Copyright 2020 NXP
> +  */
> +
> +#include "imx8mn-evk.dts"

This should be an include of shared DTSI. You could avoid
splitting/renaming if you started with DTSI at beginning, knowing that
there will be multiple boards like that, with only minor differences.

> +
> +/ {
> +	model = "NXP i.MX8MNano DDR3L EVK board";

NXP advertises it as "i.MX 8M Nano" (with spaces).

Best regards,
Krzysztof
