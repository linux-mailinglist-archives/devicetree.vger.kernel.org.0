Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 441CE326D1E
	for <lists+devicetree@lfdr.de>; Sat, 27 Feb 2021 14:21:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230053AbhB0NVU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 Feb 2021 08:21:20 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:41276 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229953AbhB0NVT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 Feb 2021 08:21:19 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11RDKTl2033600;
        Sat, 27 Feb 2021 07:20:29 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1614432029;
        bh=wBp27AmyBVyZhxBRGGDoMrwJNFH6LZH2cMDEnKwh5sE=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=Bt/cADFlZO5bnd3xWva8n/gq4Uuo7UBeGS8cZlefZqSJBuXvc3tWM2c/hm3kQ7A/0
         TPGGxC9AoQMQpo3lo1+XpOLgtOFy33fq4eKt9iM9ViIRdZauiuxKKJ8td6/GBZA6Bx
         +lZ6EofeyKUEkfchap2CG2WC2JXSKIliQOgOTDcM=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11RDKTsV126882
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Sat, 27 Feb 2021 07:20:29 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Sat, 27
 Feb 2021 07:20:29 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Sat, 27 Feb 2021 07:20:29 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11RDKTi8117506;
        Sat, 27 Feb 2021 07:20:29 -0600
Date:   Sat, 27 Feb 2021 07:20:29 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Dave Gerlach <d-gerlach@ti.com>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Suman Anna <s-anna@ti.com>, Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
Subject: Re: [PATCH v4 2/5] dt-bindings: pinctrl: k3: Introduce pinmux
 definitions for AM64
Message-ID: <20210227132029.tiocrois267kmm66@sandbox>
References: <20210226144257.5470-1-d-gerlach@ti.com>
 <20210226144257.5470-3-d-gerlach@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20210226144257.5470-3-d-gerlach@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08:42-20210226, Dave Gerlach wrote:
> Add pinctrl macros for AM64 SoC. These macro definitions are similar to
> that of previous platforms, but adding new definitions to avoid any
> naming confusions in the soc dts files.
> 
> Unlike what checkpatch insists, we do not need parentheses enclosing
> the values for this macro as we do intend it to generate two separate
> values as has been done for other similar platforms.
> 
> Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
> Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
> Reviewed-by: Suman Anna <s-anna@ti.com>
> Acked-by: Rob Herring <robh@kernel.org>
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

Just documenting for lore:
https://lore.kernel.org/linux-arm-kernel/20210209023418.GA2564097@robh.at.kernel.org/#t
is where the ack was picked up from.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D)/Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
