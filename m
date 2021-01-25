Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C172303306
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 05:45:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727180AbhAZEop (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 23:44:45 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:51278 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729681AbhAYOlG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 09:41:06 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10PEdE2j043042;
        Mon, 25 Jan 2021 08:39:14 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611585554;
        bh=meyGc8VfIK05SKEQ/tVeeAe4qecMSgqA+fRYr+q07vA=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=GvYX/5cBYxoedt2d4SqIGXm8G+kqLCYatbu1iQKFvHoKGZTxhWvC12vLG4blKMK53
         hEzwkhG49XZUXFqW+iWSnH3lKqyGNhcwCVjKDszMcRccZ60mh3r7CaN+kIldbKe3M8
         AEkSD6jxMmo/ac9hnSt7O4gPZMWni+IGP4JT/LOY=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10PEdE5u071173
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 25 Jan 2021 08:39:14 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 25
 Jan 2021 08:39:13 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 25 Jan 2021 08:39:14 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10PEdDRo113591;
        Mon, 25 Jan 2021 08:39:14 -0600
Date:   Mon, 25 Jan 2021 08:39:13 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Dave Gerlach <d-gerlach@ti.com>, Rob Herring <robh+dt@kernel.org>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Suman Anna <s-anna@ti.com>, Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
Subject: Re: [PATCH v3 2/5] dt-bindings: pinctrl: k3: Introduce pinmux
 definitions for AM64
Message-ID: <20210125143913.2cfuyk2dri33xbz2@foothold>
References: <20210120202532.9011-1-d-gerlach@ti.com>
 <20210120202532.9011-3-d-gerlach@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20210120202532.9011-3-d-gerlach@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14:25-20210120, Dave Gerlach wrote:
> Add pinctrl macros for AM64 SoC. These macro definitions are similar to
> that of previous platforms, but adding new definitions to avoid any
> naming confusions in the soc dts files.
> 
> Unlike what checkpatch insists, we do not need parentheses enclosing
> the values for this macro as we do intend it to generate two separate
> values as has been done for other similar platforms.
> 
> Signed-off-by: Dave Gerlach <d-gerlach@ti.com>

I need Rob's ack to apply this patch.

> ---
>  include/dt-bindings/pinctrl/k3.h | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/include/dt-bindings/pinctrl/k3.h b/include/dt-bindings/pinctrl/k3.h
> index b0eea7cc6e23..e085f102b283 100644
> --- a/include/dt-bindings/pinctrl/k3.h
> +++ b/include/dt-bindings/pinctrl/k3.h
> @@ -3,7 +3,7 @@
>   * This header provides constants for pinctrl bindings for TI's K3 SoC
>   * family.
>   *
> - * Copyright (C) 2018 Texas Instruments Incorporated - https://www.ti.com/
> + * Copyright (C) 2018-2021 Texas Instruments Incorporated - https://www.ti.com/
>   */
>  #ifndef _DT_BINDINGS_PINCTRL_TI_K3_H
>  #define _DT_BINDINGS_PINCTRL_TI_K3_H
> @@ -35,4 +35,7 @@
>  #define J721E_IOPAD(pa, val, muxmode)		(((pa) & 0x1fff)) ((val) | (muxmode))
>  #define J721E_WKUP_IOPAD(pa, val, muxmode)	(((pa) & 0x1fff)) ((val) | (muxmode))
>  
> +#define AM64X_IOPAD(pa, val, muxmode)		(((pa) & 0x1fff)) ((val) | (muxmode))
> +#define AM64X_MCU_IOPAD(pa, val, muxmode)	(((pa) & 0x1fff)) ((val) | (muxmode))
> +
>  #endif
> -- 
> 2.28.0
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
