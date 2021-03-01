Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 168E332818C
	for <lists+devicetree@lfdr.de>; Mon,  1 Mar 2021 15:57:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236721AbhCAO5K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Mar 2021 09:57:10 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:58898 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236641AbhCAO5C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Mar 2021 09:57:02 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 121Eu6uo125708;
        Mon, 1 Mar 2021 08:56:06 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1614610566;
        bh=Jc3BBhD+EE93zulcwsqW1H8QIzZQv9jR/2i+FWLRX5E=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=mdqIF5e0oSAO8TU3QPvpLqPaFfkpyvgi2yZSU3udcH2J8o0W118+DYB3tvlK2AGZm
         t7vV858S6JrsiudVrRR/cGzc1nRl57amkVJjDEGtcZ7ZnPblxiPSn836wS8Qwvr33B
         7dF1FGPfRBTld7kg9H0SOwv3kDrkMmwuXq3OdSrA=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 121Eu6Qr046682
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 1 Mar 2021 08:56:06 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Mar
 2021 08:56:06 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Mar 2021 08:56:06 -0600
Received: from [10.250.232.211] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 121Eu1Kr017322;
        Mon, 1 Mar 2021 08:56:02 -0600
Subject: Re: [PATCH v4 0/5] arm64: Initial support for Texas Instruments AM642
 Platform
To:     Dave Gerlach <d-gerlach@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Suman Anna <s-anna@ti.com>, Sekhar Nori <nsekhar@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
References: <20210226144257.5470-1-d-gerlach@ti.com>
From:   Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <3bc3cc02-fdbc-234e-f6dd-45a00b0cc566@ti.com>
Date:   Mon, 1 Mar 2021 20:26:01 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210226144257.5470-1-d-gerlach@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 26/02/21 8:12 pm, Dave Gerlach wrote:
> Hi,
> This is v4 of the series to add initial support for the latest new SoC,
> AM642, from Texas Instruments. Additional detail can be found in the
> patch descriptions, also see AM64X Technical Reference Manual (SPRUIM2,
> Nov 2020) for further details: https://www.ti.com/lit/pdf/spruim2
> 
> This version contains a few minor fixes from v3:
> 
> * Add Rob's Ack to patch 2
> * Drop address-cells from interrupt controller node in patch 4 as [1] was dropped
> * Add Suman's Signed-off-by to patch 3
> * Fix date range in Makefile for TI dtbs in patch 5
> * Include Reviewed-by from several people from v3 for multiple patches
> 
> v3: https://lore.kernel.org/linux-arm-kernel/20210120202532.9011-1-d-gerlach@ti.com/
> v2: https://lore.kernel.org/linux-arm-kernel/20210119163927.774-1-d-gerlach@ti.com/
> v1: https://lore.kernel.org/linux-arm-kernel/20201125052004.17823-1-d-gerlach@ti.com/


Kernel Boot logs: https://pastebin.ubuntu.com/p/hFV56bM6Jx/

Tested-by: Kishon Vijay Abraham I <kishon@ti.com>

> 
> Regards,
> Dave
> 
> [1] https://lore.kernel.org/linux-arm-kernel/161131973654.21299.8023411678794984222.b4-ty@ti.com/
> 
> Dave Gerlach (4):
>   dt-bindings: arm: ti: Add bindings for AM642 SoC
>   dt-bindings: pinctrl: k3: Introduce pinmux definitions for AM64
>   arm64: dts: ti: Add support for AM642 SoC
>   arm64: dts: ti: Add support for AM642 EVM
> 
> Peter Ujfalusi (1):
>   arm64: dts: ti: k3-am64-main: Enable DMA support
> 
>  .../devicetree/bindings/arm/ti/k3.yaml        |   6 +
>  arch/arm64/boot/dts/ti/Makefile               |   4 +-
>  arch/arm64/boot/dts/ti/k3-am64-main.dtsi      | 405 ++++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-am64-mcu.dtsi       |  76 ++++
>  arch/arm64/boot/dts/ti/k3-am64.dtsi           | 103 +++++
>  arch/arm64/boot/dts/ti/k3-am642-evm.dts       | 246 +++++++++++
>  arch/arm64/boot/dts/ti/k3-am642.dtsi          |  65 +++
>  include/dt-bindings/pinctrl/k3.h              |   5 +-
>  8 files changed, 908 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am64-main.dtsi
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am64-mcu.dtsi
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am64.dtsi
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am642-evm.dts
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am642.dtsi
> 
