Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7AD772FEF2D
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 16:42:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733193AbhAUPkt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 10:40:49 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:45050 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732565AbhAUPkJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 10:40:09 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LFcR4g075683;
        Thu, 21 Jan 2021 09:38:27 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611243507;
        bh=JYk6Rlmg95Y9TdnnxVZypakMMFIqrmSNgwoyHkWpnxQ=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=WM4zJ/nkGFWo6d+GS7uwEOVgk9lgXgmnn4luRRw3nepM2Np2chmJTmriXoybggtsJ
         XfW3gwlWfzVz/N5At2dRqSlJbP8CHNf5t4uTk0fdHSH1bFrzxXl6gZ0kk1ocnO8NL3
         iJ3AOPMowbZBN8+6oGbXh2Xu/QwHaEGvGLI+SXTQ=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LFcRjw088017
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 09:38:27 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 09:38:26 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 09:38:26 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LFcQ7W075532;
        Thu, 21 Jan 2021 09:38:26 -0600
Date:   Thu, 21 Jan 2021 09:38:26 -0600
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
Subject: Re: [PATCH 2/2] arm64: dts: ti: k3-j721e-main: Add ICSSG nodes
Message-ID: <20210121153826.uq2nukxggtky4p6c@profane>
References: <20210114194805.8231-1-s-anna@ti.com>
 <20210114194805.8231-3-s-anna@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20210114194805.8231-3-s-anna@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13:48-20210114, Suman Anna wrote:
[...]

> +		icssg0_intc: interrupt-controller@20000 {
> +			compatible = "ti,icssg-intc";
> +			reg = <0x20000 0x2000>;
> +			interrupt-controller;
> +			#interrupt-cells = <3>;
> +			interrupts = <GIC_SPI 254 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 257 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 258 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "host_intr0", "host_intr1",
> +					  "host_intr2", "host_intr3",
> +					  "host_intr4", "host_intr5",
> +					  "host_intr6", "host_intr7";
> +		};

Same problem here as well..
Could you look at https://pastebin.ubuntu.com/p/rbZrv3sDFk/


-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
