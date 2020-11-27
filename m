Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C3182C65D0
	for <lists+devicetree@lfdr.de>; Fri, 27 Nov 2020 13:41:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725985AbgK0MjT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Nov 2020 07:39:19 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:33544 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729055AbgK0MjT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Nov 2020 07:39:19 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ARCdBAJ108578;
        Fri, 27 Nov 2020 06:39:11 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1606480751;
        bh=6ow0M5W2hZ+hQ03nILTWyoWhcBoivRE0XdEdDu/ippI=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=ngg7/U01qCWM2oSHiT7DEQTKhqOTyD0EahnodtSe0Am00AwytShA8qVXj6HdsGdFy
         XXxnISDf4nmddIyvx7hTY67lEJO1ebaSFj+mhfzufyGTG6JVYEyhFCHFfRZ/ARBeIK
         LyzXDmVtnWNO4zZw1lAcflnEgasAeOOnKgEDfhoA=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ARCdBmN059872
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 27 Nov 2020 06:39:11 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 27
 Nov 2020 06:39:11 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 27 Nov 2020 06:39:11 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ARCd80x102044;
        Fri, 27 Nov 2020 06:39:08 -0600
Subject: Re: [PATCH 0/3] arm64: Initial support for Texas Instruments AM642
 Platform
To:     Dave Gerlach <d-gerlach@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Nishanth Menon <nm@ti.com>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Suman Anna <s-anna@ti.com>, Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
References: <20201125052004.17823-1-d-gerlach@ti.com>
From:   Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <fbec746d-f629-dd13-1ab9-5f530171748c@ti.com>
Date:   Fri, 27 Nov 2020 14:40:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201125052004.17823-1-d-gerlach@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dave,

On 25/11/2020 7.20, Dave Gerlach wrote:
> This series adds initial support for the latest new SoC, AM642,
> from Texas Instruments.
> 
> Additional detail can be found in the patch descriptions, also
> see AM64X Technical Reference Manual (SPRUIM2, Nov 2020) for
> further details: https://www.ti.com/lit/pdf/spruim2

Tested-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
Reviewed-by: Peter Ujfalusi <peter.ujfalusi@ti.com>

fwiw, with these, plus the BCDMA/PKTDMA series [1] and one local dt
patch to enable the DMAs on linux-next:
https://pastebin.ubuntu.com/p/W5QkTMhrVp/

[1]
https://lore.kernel.org/lkml/20201117105656.5236-1-peter.ujfalusi@ti.com/

> Regards,
> Dave
> 
> Dave Gerlach (3):
>   dt-bindings: arm: ti: Add bindings for AM642 SoC
>   arm64: dts: ti: Add Support for AM642 SoC
>   arm64: dts: ti: Add support for AM642 EVM
> 
>  .../devicetree/bindings/arm/ti/k3.yaml        |   6 +
>  arch/arm64/boot/dts/ti/Makefile               |   2 +
>  arch/arm64/boot/dts/ti/k3-am64-main.dtsi      | 178 ++++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-am64.dtsi           |  95 ++++++++++
>  arch/arm64/boot/dts/ti/k3-am642-evm.dts       |  61 ++++++
>  arch/arm64/boot/dts/ti/k3-am642.dtsi          |  65 +++++++
>  6 files changed, 407 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am64-main.dtsi
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am64.dtsi
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am642-evm.dts
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am642.dtsi
> 

- Péter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
