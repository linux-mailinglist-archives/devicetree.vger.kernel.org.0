Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F0D93AA7C1
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 01:51:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234772AbhFPXxr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 19:53:47 -0400
Received: from mail-il1-f181.google.com ([209.85.166.181]:36408 "EHLO
        mail-il1-f181.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234797AbhFPXxr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Jun 2021 19:53:47 -0400
Received: by mail-il1-f181.google.com with SMTP id i13so3841030ilk.3
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 16:51:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=1/LPNjflpwH0nEjNfgG8CPd5h5NYQKMqHPnlOWT3lAo=;
        b=F1SsFdaEiYpB9r+0xE0NiYyoPtfcC8VfdEwOq5fLpqY5jJLwSqX/nOZaYoirG6ihyT
         YSJ0uoTbvPUCJk3jSbRxrOfmu8odMDPrvvoC4hOfeRnd1ergC9lAKdyEf4irFoDAKVVc
         xiswAWUsPDnQl2OP54aPO6RQqLmKZAkvTC6B549i+CC9lAb4P+rz/AKSzzxfkxYK9l0S
         U0ubAe9U/DnJi4ONmkCbFs7E58AjYJfsqDyoY8zK1yktIEe1bb25BoWvGgVoaN7sfVCl
         IGkalOMB+8h9+O0AOjsCDa3Zf2BkK4VPCxUWqho/dlWK1aZPAlP4yMoF2Db1tsgh7zm0
         nGOw==
X-Gm-Message-State: AOAM530SH6L2c3Wk4T64rh8tLtf6SuAzbNC4LG9M/ddAGVwbuZJIJzqz
        tpjlLqWGMH3q6fUsnhvFaA==
X-Google-Smtp-Source: ABdhPJw/QyhlP3M8I9zUkNBJv+/DGDxm7Bi4aF6+vlZAZXnOW3ejqG6MMVNcahx5MR9iJxylpfZRyA==
X-Received: by 2002:a92:3647:: with SMTP id d7mr1422890ilf.231.1623887500149;
        Wed, 16 Jun 2021 16:51:40 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id g14sm1955451ioo.19.2021.06.16.16.51.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 16:51:38 -0700 (PDT)
Received: (nullmailer pid 316412 invoked by uid 1000);
        Wed, 16 Jun 2021 23:51:37 -0000
Date:   Wed, 16 Jun 2021 17:51:37 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, sboyd@kernel.org, s.hauer@pengutronix.de,
        linus.walleij@linaro.org, aisheng.dong@nxp.com, festevam@gmail.com,
        kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 10/11] arm64: dts: imx8ulp: Add the basic dtsi file for
 imx8ulp
Message-ID: <20210616235137.GA311711@robh.at.kernel.org>
References: <20210607083921.2668568-1-ping.bai@nxp.com>
 <20210607083921.2668568-11-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210607083921.2668568-11-ping.bai@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 07, 2021 at 04:39:20PM +0800, Jacky Bai wrote:
> Add the basic dtsi support for i.MX8ULP.
> 
> i.MX 8ULP is part of the ULP family with emphasis on extreme
> low-power techniques using the 28 nm fully depleted silicon on
> insulator process. Like i.MX 7ULP, i.MX 8ULP continues to be
> based on asymmetric architecture, however will add a third DSP
> domain for advanced voice/audio capability and a Graphics domain
> where it is possible to access graphics resources from the
> application side or the realtime side.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  .../boot/dts/freescale/imx8ulp-pinfunc.h      | 978 ++++++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8ulp.dtsi    | 474 +++++++++
>  2 files changed, 1452 insertions(+)
>  create mode 100755 arch/arm64/boot/dts/freescale/imx8ulp-pinfunc.h
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8ulp.dtsi
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8ulp-pinfunc.h b/arch/arm64/boot/dts/freescale/imx8ulp-pinfunc.h
> new file mode 100755
> index 000000000000..faa702634a38
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8ulp-pinfunc.h
> @@ -0,0 +1,978 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */


> diff --git a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
> new file mode 100644
> index 000000000000..469c2dcd4636
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
> @@ -0,0 +1,474 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)

How can I use MIT when GPL only header is included? Dual license the 
header please.

And NXP is good with GPLv3, GPLv4, etc.?

> +/*
> + * Copyright 2021 NXP
> + */
> +
> +#include <dt-bindings/clock/imx8ulp-clock.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +#include "imx8ulp-pinfunc.h"
