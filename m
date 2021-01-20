Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D71B2FDB8E
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 22:26:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732648AbhATU4R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 15:56:17 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:48986 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388714AbhATUvh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 15:51:37 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10KKobGZ092368;
        Wed, 20 Jan 2021 14:50:37 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611175837;
        bh=2vV9gs//LMB4/Bs09TdtFRUOhLnpkCX1eP7ABeNkuOc=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=ie3lu0ysjusuyuqsivWK5h3m+JBk7jL0jKifIG96qOeHP6mh0lFXMEZ/iYzy/exef
         PoVP5QQAC1GEQmp5kMIRbuMHIyo7r2Wgb+DJMIop+H4wi9BUVMZohJarnCqoXfEkhy
         9ZTQg2Y4Md79VvnGGr/6LQyu1ArhXA7B041B5rm8=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10KKobfl049604
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 20 Jan 2021 14:50:37 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 20
 Jan 2021 14:50:37 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 20 Jan 2021 14:50:37 -0600
Received: from [10.250.35.71] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10KKoadD058607;
        Wed, 20 Jan 2021 14:50:36 -0600
Subject: Re: [PATCH v3 2/5] dt-bindings: pinctrl: k3: Introduce pinmux
 definitions for AM64
To:     Dave Gerlach <d-gerlach@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
References: <20210120202532.9011-1-d-gerlach@ti.com>
 <20210120202532.9011-3-d-gerlach@ti.com>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <e31b5b8c-90e6-901b-cc99-06341ee8a144@ti.com>
Date:   Wed, 20 Jan 2021 14:50:36 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210120202532.9011-3-d-gerlach@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 1/20/21 2:25 PM, Dave Gerlach wrote:
> Add pinctrl macros for AM64 SoC. These macro definitions are similar to
> that of previous platforms, but adding new definitions to avoid any
> naming confusions in the soc dts files.
> 
> Unlike what checkpatch insists, we do not need parentheses enclosing
> the values for this macro as we do intend it to generate two separate
> values as has been done for other similar platforms.
> 
> Signed-off-by: Dave Gerlach <d-gerlach@ti.com>

Reviewed-by: Suman Anna <s-anna@ti.com>

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
> 

