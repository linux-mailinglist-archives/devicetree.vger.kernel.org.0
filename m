Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1384731874C
	for <lists+devicetree@lfdr.de>; Thu, 11 Feb 2021 10:49:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229965AbhBKJpY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Feb 2021 04:45:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230122AbhBKJjM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Feb 2021 04:39:12 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B12A9C0613D6
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 01:38:31 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id i8so9015995ejc.7
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 01:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=xe9/ZM2MZ1zYKLP1SWwA8ED/41ucdulv75xXMBjRsV4=;
        b=BqAdxk+9ShzfdbfVXZJJFCTqVw5mLQUICMu+vtCM0ytFG2KA77qNETJm1XGzFumSx1
         gWbFMBUc7Cb6++jZtwYuM2KvNVsRt+AKLxr2Z9pW55Y5Ji/553X+R1lThZln5eHJwPC9
         nSfZyQaksmmeguuKKnh3ruFl6eq7LNcqwqZ9pO77Rre+3WE1Sv5WWMf8XqEjS49PLfc0
         CwQf/JVRYPli7gujKpmkSpiCfXL+EwknsUbzkmRpGUbRCFOTFl9YLuJZQxj1yRr0+eEF
         B540Yl6+vbQyfBH5sXa0MT9PR/bcPR6ctrsOw3w2z7+9DFS9aVA2KF79u5Z7Kr38JQ5L
         +DKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=xe9/ZM2MZ1zYKLP1SWwA8ED/41ucdulv75xXMBjRsV4=;
        b=nhuuy8xglxhAiLLL1IDixxLXvHq4+zEq04Vp8MjPBYnZxzHJBJfr5jvpAiG9zt0AzH
         7k9L6+pTZOelAUGVuSY4FObdK54Xu8VkuKlLoCywR3BRvaf/CSs89UM+ihqsVsMO7iEy
         F9Kd3OZKEO1zT+9SssHWtG03Z+gE+kJyk9CcqsYd+CFEo/wQznrdqrjroiI4IPEe2DZs
         OJzN38BtEoTGXqzZB+dvvGjnKEsgmHJKxSTd97WAQuZyUNd42Cm4V5LHf9FuOk/sBcxj
         9U3TpT4EwQKuruPLM4ygxqCqA1FrvTu1bO77uoqjxlnCi6nOE+EyLLZTpNGRLSd4cgaf
         I4+g==
X-Gm-Message-State: AOAM532N8ybel3H89wYQJT8MAZdWp3YqKsgpxUV7FK1WWAUZP35qpXEJ
        vNsSDK13JrFOJ6Ssxi9gLsT6pw6842Qlj0FgS5RWvA==
X-Google-Smtp-Source: ABdhPJwhY2EjzrR41rSyfXYixfPf0w6CMi0rfopWHMDowsy37L+u/jlVF9SURDIvUMNvQ0PvlfvPciUFChzGYZUN/lc=
X-Received: by 2002:a17:906:af58:: with SMTP id ly24mr7774029ejb.208.1613036310406;
 Thu, 11 Feb 2021 01:38:30 -0800 (PST)
MIME-Version: 1.0
References: <ac55738da7710848ef4824d45bdac18fa1d11392.1612189714.git.michal.simek@xilinx.com>
In-Reply-To: <ac55738da7710848ef4824d45bdac18fa1d11392.1612189714.git.michal.simek@xilinx.com>
From:   Michal Simek <monstr@monstr.eu>
Date:   Thu, 11 Feb 2021 10:38:19 +0100
Message-ID: <CAHTX3dJAe2s7S=NORTJQ_UQH9KOf6f7H0qy8okG9Zt6udU498w@mail.gmail.com>
Subject: Re: [PATCH] ARM: zynq: Update Copyright date in DTS
To:     LKML <linux-kernel@vger.kernel.org>,
        Michal Simek <monstr@monstr.eu>, git <git@xilinx.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-arm <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

po 1. 2. 2021 v 15:28 odes=C3=ADlatel Michal Simek <michal.simek@xilinx.com=
> napsal:
>
> Update years in header to be up2date.
>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
>
>  arch/arm/boot/dts/zynq-7000.dtsi       | 2 +-
>  arch/arm/boot/dts/zynq-cc108.dts       | 2 +-
>  arch/arm/boot/dts/zynq-zc702.dts       | 2 +-
>  arch/arm/boot/dts/zynq-zc706.dts       | 2 +-
>  arch/arm/boot/dts/zynq-zc770-xm010.dts | 2 +-
>  arch/arm/boot/dts/zynq-zc770-xm011.dts | 2 +-
>  arch/arm/boot/dts/zynq-zc770-xm012.dts | 2 +-
>  arch/arm/boot/dts/zynq-zc770-xm013.dts | 2 +-
>  arch/arm/boot/dts/zynq-zed.dts         | 2 +-
>  arch/arm/boot/dts/zynq-zybo.dts        | 2 +-
>  10 files changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/arch/arm/boot/dts/zynq-7000.dtsi b/arch/arm/boot/dts/zynq-70=
00.dtsi
> index c4810d58540b..d46c1e2652e7 100644
> --- a/arch/arm/boot/dts/zynq-7000.dtsi
> +++ b/arch/arm/boot/dts/zynq-7000.dtsi
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /*
> - * Copyright (C) 2011 - 2014 Xilinx
> + * Copyright (C) 2011 - 2021 Xilinx
>   */
>
>  / {
> diff --git a/arch/arm/boot/dts/zynq-cc108.dts b/arch/arm/boot/dts/zynq-cc=
108.dts
> index 8b9ab9bba23b..33546e13bb46 100644
> --- a/arch/arm/boot/dts/zynq-cc108.dts
> +++ b/arch/arm/boot/dts/zynq-cc108.dts
> @@ -2,7 +2,7 @@
>  /*
>   * Xilinx CC108 board DTS
>   *
> - * (C) Copyright 2007-2018 Xilinx, Inc.
> + * (C) Copyright 2007-2021 Xilinx, Inc.
>   * (C) Copyright 2007-2013 Michal Simek
>   * (C) Copyright 2007-2012 PetaLogix Qld Pty Ltd
>   *
> diff --git a/arch/arm/boot/dts/zynq-zc702.dts b/arch/arm/boot/dts/zynq-zc=
702.dts
> index cf70aff26c66..a226498364af 100644
> --- a/arch/arm/boot/dts/zynq-zc702.dts
> +++ b/arch/arm/boot/dts/zynq-zc702.dts
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /*
> - *  Copyright (C) 2011 - 2014 Xilinx
> + *  Copyright (C) 2011 - 2021 Xilinx
>   *  Copyright (C) 2012 National Instruments Corp.
>   */
>  /dts-v1/;
> diff --git a/arch/arm/boot/dts/zynq-zc706.dts b/arch/arm/boot/dts/zynq-zc=
706.dts
> index 77943c16d33f..73d8b7a78415 100644
> --- a/arch/arm/boot/dts/zynq-zc706.dts
> +++ b/arch/arm/boot/dts/zynq-zc706.dts
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /*
> - *  Copyright (C) 2011 - 2014 Xilinx
> + *  Copyright (C) 2011 - 2021 Xilinx
>   *  Copyright (C) 2012 National Instruments Corp.
>   */
>  /dts-v1/;
> diff --git a/arch/arm/boot/dts/zynq-zc770-xm010.dts b/arch/arm/boot/dts/z=
ynq-zc770-xm010.dts
> index 0dd352289a45..e54a229b1f78 100644
> --- a/arch/arm/boot/dts/zynq-zc770-xm010.dts
> +++ b/arch/arm/boot/dts/zynq-zc770-xm010.dts
> @@ -2,7 +2,7 @@
>  /*
>   * Xilinx ZC770 XM010 board DTS
>   *
> - * Copyright (C) 2013-2018 Xilinx, Inc.
> + * Copyright (C) 2013-2021 Xilinx, Inc.
>   */
>  /dts-v1/;
>  #include "zynq-7000.dtsi"
> diff --git a/arch/arm/boot/dts/zynq-zc770-xm011.dts b/arch/arm/boot/dts/z=
ynq-zc770-xm011.dts
> index 56732e8f6ca1..a4ce58e1e648 100644
> --- a/arch/arm/boot/dts/zynq-zc770-xm011.dts
> +++ b/arch/arm/boot/dts/zynq-zc770-xm011.dts
> @@ -2,7 +2,7 @@
>  /*
>   * Xilinx ZC770 XM011 board DTS
>   *
> - * Copyright (C) 2013-2018 Xilinx, Inc.
> + * Copyright (C) 2013-2021 Xilinx, Inc.
>   */
>  /dts-v1/;
>  #include "zynq-7000.dtsi"
> diff --git a/arch/arm/boot/dts/zynq-zc770-xm012.dts b/arch/arm/boot/dts/z=
ynq-zc770-xm012.dts
> index d2359b789eb8..f842e7ad4f9d 100644
> --- a/arch/arm/boot/dts/zynq-zc770-xm012.dts
> +++ b/arch/arm/boot/dts/zynq-zc770-xm012.dts
> @@ -2,7 +2,7 @@
>  /*
>   * Xilinx ZC770 XM012 board DTS
>   *
> - * Copyright (C) 2013-2018 Xilinx, Inc.
> + * Copyright (C) 2013-2021 Xilinx, Inc.
>   */
>  /dts-v1/;
>  #include "zynq-7000.dtsi"
> diff --git a/arch/arm/boot/dts/zynq-zc770-xm013.dts b/arch/arm/boot/dts/z=
ynq-zc770-xm013.dts
> index 38d96adc870c..fe4cd75bc9db 100644
> --- a/arch/arm/boot/dts/zynq-zc770-xm013.dts
> +++ b/arch/arm/boot/dts/zynq-zc770-xm013.dts
> @@ -2,7 +2,7 @@
>  /*
>   * Xilinx ZC770 XM013 board DTS
>   *
> - * Copyright (C) 2013 Xilinx, Inc.
> + * Copyright (C) 2013-2021 Xilinx, Inc.
>   */
>  /dts-v1/;
>  #include "zynq-7000.dtsi"
> diff --git a/arch/arm/boot/dts/zynq-zed.dts b/arch/arm/boot/dts/zynq-zed.=
dts
> index 6a5a93aa6552..fd2b562d374d 100644
> --- a/arch/arm/boot/dts/zynq-zed.dts
> +++ b/arch/arm/boot/dts/zynq-zed.dts
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /*
> - *  Copyright (C) 2011 - 2014 Xilinx
> + *  Copyright (C) 2011 - 2021 Xilinx
>   *  Copyright (C) 2012 National Instruments Corp.
>   */
>  /dts-v1/;
> diff --git a/arch/arm/boot/dts/zynq-zybo.dts b/arch/arm/boot/dts/zynq-zyb=
o.dts
> index 755f6f109d5a..f163f9d69f80 100644
> --- a/arch/arm/boot/dts/zynq-zybo.dts
> +++ b/arch/arm/boot/dts/zynq-zybo.dts
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /*
> - *  Copyright (C) 2011 - 2014 Xilinx
> + *  Copyright (C) 2011 - 2021 Xilinx
>   *  Copyright (C) 2012 National Instruments Corp.
>   */
>  /dts-v1/;
> --
> 2.30.0
>

Applied.
M


--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs
