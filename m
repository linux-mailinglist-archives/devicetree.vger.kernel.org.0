Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 672E82FEF2B
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 16:42:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733058AbhAUPjK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 10:39:10 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:44912 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733244AbhAUPiy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 10:38:54 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LFbvKL075454;
        Thu, 21 Jan 2021 09:37:57 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611243477;
        bh=sccTMsDumYePut3U4kZmgrZPlKDI7gFo8qWSL7vNxzs=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=vSbAx3VQYi2FXca0QO7qRaG9BPJOsN3b7bxc/P3XeAd2zgwAgbvev8XmjgKono4gA
         e5ikg8p0S02Amkb+GrfZW3xX850vv8WOLQfgXTAOVgTyqC+mwMknhBmOzfwfhDEzXw
         gejFcJj5Tc9akuDgsOYpk0jChpy3Km4HigwwJdNA=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LFbvPe086149
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 09:37:57 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 09:37:57 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 09:37:57 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LFbvl9031115;
        Thu, 21 Jan 2021 09:37:57 -0600
Date:   Thu, 21 Jan 2021 09:37:57 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Tero Kristo <kristo@kernel.org>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Roger Quadros <rogerq@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH 1/2] arm64: dts: ti: k3-am65-main: Add ICSSG nodes
Message-ID: <20210121153757.kuknwzrzc3xmnase@machine>
References: <20210114194805.8231-1-s-anna@ti.com>
 <20210114194805.8231-2-s-anna@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20210114194805.8231-2-s-anna@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13:48-20210114, Suman Anna wrote:
[...]

> +
> +		icssg1_intc: interrupt-controller@20000 {
> +			compatible = "ti,icssg-intc";
> +			reg = <0x20000 0x2000>;
> +			interrupt-controller;
> +			#interrupt-cells = <3>;
> +			interrupts = <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 264 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 267 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 269 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "host_intr0", "host_intr1",
> +					  "host_intr2", "host_intr3",
> +					  "host_intr4", "host_intr5",
> +					  "host_intr6", "host_intr7";


Could you look at https://pastebin.ubuntu.com/p/rbZrv3sDFk/


-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
