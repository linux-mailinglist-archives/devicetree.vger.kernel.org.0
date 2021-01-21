Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 828402FECD0
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 15:24:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728354AbhAUOWn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 09:22:43 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:46410 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728539AbhAUOWA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 09:22:00 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LEL0Yr087879;
        Thu, 21 Jan 2021 08:21:00 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611238860;
        bh=9cyluZ0Wvjd2CcwbUZnc+Za+EUz3v/pH26JQhK+7jxQ=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=UjV9lqED8cOG+zRS1gh3Cw24RdFsN2mfibXbJ/UaY0ip5AXavITHNNUrC2aoUf4nU
         JKcwe4iCaY/rcLFf9y2bKgS2XUrzpqKTMxJzIzJjoFRcVEWj5NIc43dLUSM6WWqf+m
         N+E3baCSCT/RYAW65/zBxdDjmGQkCyCsRlpVy/1k=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LEL0IZ023701
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 08:21:00 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 08:21:00 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 08:21:00 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LEL07O060024;
        Thu, 21 Jan 2021 08:21:00 -0600
Date:   Thu, 21 Jan 2021 08:21:00 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Grygorii Strashko <grygorii.strashko@ti.com>
CC:     Dave Gerlach <d-gerlach@ti.com>, <devicetree@vger.kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tony Lindgren <tony@atomide.com>, Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Aswath Govindraju <a-govindraju@ti.com>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2 0/5] arm64: Initial support for Texas Instruments
 AM642 Platform
Message-ID: <20210121142100.6n4jpqnvpgw5dhwz@defensive>
References: <20210119163927.774-1-d-gerlach@ti.com>
 <efa935e2-72d3-cc9f-d182-ab852bc9ce6c@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <efa935e2-72d3-cc9f-d182-ab852bc9ce6c@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15:22-20210121, Grygorii Strashko wrote:
> 
> 
> On 19/01/2021 18:39, Dave Gerlach wrote:
> > This is v2 of the series to add initial support for the latest new SoC,
> > AM642, from Texas Instruments. Version 1 can be found at [1]. Additional
> > detail can be found in the patch descriptions, also see AM64X Technical
> > Reference Manual (SPRUIM2, Nov 2020) for further details:
> > https://www.ti.com/lit/pdf/spruim2
> > 
> > Since v1, several new bindings have made it in linux-next so we can
> > now include those nodes using them here. The spi, i2c, and mmc nodes
> > have now been added along with DMA support. Specifics about changes
> > from v1 are included with each patch.
> > 
> > Regards,
> > Dave
> > 
> > [1] https://lore.kernel.org/linux-arm-kernel/20201125052004.17823-1-d-gerlach@ti.com/
> > 
> > Dave Gerlach (4):
> >    dt-bindings: arm: ti: Add bindings for AM642 SoC
> >    dt-bindings: pinctrl: k3: Introduce pinmux definitions for AM64
> >    arm64: dts: ti: Add support for AM642 SoC
> >    arm64: dts: ti: Add support for AM642 EVM
> > 
> > Peter Ujfalusi (1):
> >    arm64: dts: ti: k3-am64-main: Enable DMA support
> > 
> >   .../devicetree/bindings/arm/ti/k3.yaml        |   6 +
> >   arch/arm64/boot/dts/ti/Makefile               |   2 +
> >   arch/arm64/boot/dts/ti/k3-am64-main.dtsi      | 406 ++++++++++++++++++
> >   arch/arm64/boot/dts/ti/k3-am64-mcu.dtsi       |  76 ++++
> >   arch/arm64/boot/dts/ti/k3-am64.dtsi           | 103 +++++
> >   arch/arm64/boot/dts/ti/k3-am642-evm.dts       | 258 +++++++++++
> >   arch/arm64/boot/dts/ti/k3-am642.dtsi          |  65 +++
> >   include/dt-bindings/pinctrl/k3.h              |   5 +-
> >   8 files changed, 920 insertions(+), 1 deletion(-)
> >   create mode 100644 arch/arm64/boot/dts/ti/k3-am64-main.dtsi
> >   create mode 100644 arch/arm64/boot/dts/ti/k3-am64-mcu.dtsi
> >   create mode 100644 arch/arm64/boot/dts/ti/k3-am64.dtsi
> >   create mode 100644 arch/arm64/boot/dts/ti/k3-am642-evm.dts
> >   create mode 100644 arch/arm64/boot/dts/ti/k3-am642.dtsi
> > 
> 
> Tested-by: Grygorii Strashko <grygorii.strashko@ti.com>
> Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
> 

Can you see if your reviews and tested apply to V3 of the series as well?

	https://lore.kernel.org/linux-arm-kernel/20210120202532.9011-1-d-gerlach@ti.com/

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
