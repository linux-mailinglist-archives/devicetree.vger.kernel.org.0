Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3779B26AC4E
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 20:42:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727912AbgIOSm0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 14:42:26 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:60624 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727411AbgIOSmX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 14:42:23 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08FFSZH8003003;
        Tue, 15 Sep 2020 10:28:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1600183715;
        bh=5YEG58vp36XEtrLiFHp7hH8PxMIK04OPrC7zfgkpCAY=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=TWp27ilKjQiD5DrBrcG2xgbRnlgthaIhbkRki4Pw+uTDH3wcHWcTOFxumyzkkPw6G
         rlTp5rL4Yx0+mULSArO3+IZt7ff0gwgZph5b2EsmDR3ol0lIHh9UgxwFaF32ZVmeEw
         syn1/IyeA764TaxNn+S8hFpw0ONPvAO0OrHb7N4k=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08FFSZaY103659;
        Tue, 15 Sep 2020 10:28:35 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 15
 Sep 2020 10:28:34 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 15 Sep 2020 10:28:34 -0500
Received: from [10.250.66.210] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08FFSYVv070966;
        Tue, 15 Sep 2020 10:28:34 -0500
Subject: Re: [PATCH v4 1/5] arm64: dts: ti: Makefile: Use ARCH_K3 for building
 dtbs
To:     Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>,
        Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
References: <20200914162231.2535-1-lokeshvutla@ti.com>
 <20200914162231.2535-2-lokeshvutla@ti.com>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <dd468000-e275-bcb9-3d07-349a27c4c92b@ti.com>
Date:   Tue, 15 Sep 2020 10:28:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200914162231.2535-2-lokeshvutla@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/14/20 11:22 AM, Lokesh Vutla wrote:
> To allow lesser dependency and better maintainability use CONFIG_ARCH_K3
> for building dtbs for all K3 based devices. This is as per the
> discussion in [0].
> 
> [0] https://lore.kernel.org/linux-arm-kernel/20200908112534.t5bgrjf7y3a6l2ss@akan/
> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>

Reviewed-by: Suman Anna <s-anna@ti.com>

regards
Suman

> ---
>  arch/arm64/boot/dts/ti/Makefile | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
> index 05c0bebf65d4..7f28be62b8da 100644
> --- a/arch/arm64/boot/dts/ti/Makefile
> +++ b/arch/arm64/boot/dts/ti/Makefile
> @@ -3,9 +3,9 @@
>  # Make file to build device tree binaries for boards based on
>  # Texas Instruments Inc processors
>  #
> -# Copyright (C) 2016-2018 Texas Instruments Incorporated - https://www.ti.com/
> +# Copyright (C) 2016-2020 Texas Instruments Incorporated - https://www.ti.com/
>  #
>  
> -dtb-$(CONFIG_ARCH_K3_AM6_SOC) += k3-am654-base-board.dtb
> +dtb-$(CONFIG_ARCH_K3) += k3-am654-base-board.dtb
>  
> -dtb-$(CONFIG_ARCH_K3_J721E_SOC) += k3-j721e-common-proc-board.dtb
> +dtb-$(CONFIG_ARCH_K3) += k3-j721e-common-proc-board.dtb
> 

