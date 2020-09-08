Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1BFB32615BA
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 18:55:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731816AbgIHQza (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 12:55:30 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:46724 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732022AbgIHQsf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 12:48:35 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 088GmQLS000952;
        Tue, 8 Sep 2020 11:48:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599583706;
        bh=heepsa3H5CzTMHxVpknOIi6tT91C85/dF829wuRvsyY=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=HdRvKRoadIt2fB72f8D/9zcjFfVFpaKl082AgM46toOypH0t9hxNQQWc0YNUeyCFm
         lE0c+2HPmVi9iQvq/9Tltq4sLIGo95x5+igRtzO7RFphkqnevkD9r+/IkH1KDwd2+Z
         XZT+brkcpwG1NBWPEq9WddPv2i6e0UvZ4acCxlhE=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 088GmQoY098138;
        Tue, 8 Sep 2020 11:48:26 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 8 Sep
 2020 11:48:25 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 8 Sep 2020 11:48:25 -0500
Received: from [10.250.34.59] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 088GmPpd010912;
        Tue, 8 Sep 2020 11:48:25 -0500
Subject: Re: [PATCH v3 1/5] arm64: dts: ti: Makefile: Use ARCH_K3 for building
 dtbs
To:     Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>,
        Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
References: <20200908162252.17672-1-lokeshvutla@ti.com>
 <20200908162252.17672-2-lokeshvutla@ti.com>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <e18882ae-f6b2-7dd8-15ee-aa719888c91f@ti.com>
Date:   Tue, 8 Sep 2020 11:48:20 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200908162252.17672-2-lokeshvutla@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/8/20 11:22 AM, Lokesh Vutla wrote:
> To allow lesser dependency and better maintainability use CONFIG_ARCH_K3
> for building dtbs for all K3 based devices. This is as per the
> discussion in [0].
> 
> [0] https://lore.kernel.org/linux-arm-kernel/20200908112534.t5bgrjf7y3a6l2ss@akan/
> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
>  arch/arm64/boot/dts/ti/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
> index 05c0bebf65d4..e7bfb16fa816 100644
> --- a/arch/arm64/boot/dts/ti/Makefile
> +++ b/arch/arm64/boot/dts/ti/Makefile
> @@ -6,6 +6,6 @@
>  # Copyright (C) 2016-2018 Texas Instruments Incorporated - https://www.ti.com/

Please update the Copyright to use 2020, like 2016-2020. Minor comment, so can
be fixed up while applying.

regards
Suman

>  #
>  
> -dtb-$(CONFIG_ARCH_K3_AM6_SOC) += k3-am654-base-board.dtb
> +dtb-$(CONFIG_ARCH_K3) += k3-am654-base-board.dtb
>  
> -dtb-$(CONFIG_ARCH_K3_J721E_SOC) += k3-j721e-common-proc-board.dtb
> +dtb-$(CONFIG_ARCH_K3) += k3-j721e-common-proc-board.dtb
> 

