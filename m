Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DC048485F8
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2019 16:49:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727997AbfFQOtl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jun 2019 10:49:41 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:57176 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726151AbfFQOtl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jun 2019 10:49:41 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5HEncSo073160;
        Mon, 17 Jun 2019 09:49:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1560782978;
        bh=PThIYnKzWiBgx4IKcZ45yCLr5ztnCcprEnbFD/SZiLo=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=VwF6uu+P4VRhjt+xeIlp+cNVvszMg5d6JN2gxJfakcDPevDW8CQJveqiuMDV3J/1D
         ru5/ZFhmZh+N/NW1EDLLmNv6XQ432dsSiI5l7pNBPtVgmC1bOPalXtNK7rmLRPQigf
         EFEhaEXeQDD6zRDwEG33wDrmCtBCIJVL2N+f/ZLU=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5HEnc9N058086
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 17 Jun 2019 09:49:38 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 17
 Jun 2019 09:49:36 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 17 Jun 2019 09:49:36 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5HEnZ4J037757;
        Mon, 17 Jun 2019 09:49:35 -0500
Subject: Re: [PATCH 0/4] Add MCU SRAM nodes for TI K3 SoCs
To:     Suman Anna <s-anna@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20190605163434.23173-1-s-anna@ti.com>
From:   Tero Kristo <t-kristo@ti.com>
Message-ID: <e0c07124-3191-13c7-432f-4099c842059b@ti.com>
Date:   Mon, 17 Jun 2019 17:49:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190605163434.23173-1-s-anna@ti.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/06/2019 19:34, Suman Anna wrote:
> Hi Tero,
> 
> The following series adds the DT nodes for the MCU SRAM present within
> the MCU domain for both AM65x and J721E SoCs. The first 2 patches enable
> the MCU SRAM node to be probed properly on AM65x SoCs, and the third
> patch the equivalent for J721E SoCs. The third patch depends on the
> base J721E support patch series from Nishanth [1].
> 
> The last patch is not related to MCU SRAM, but adds the ranges for the
> R5F cluster that is also present in the MCU domain in preparation for
> the R5F nodes.
> 
> regards
> Suman
> 
> [1] https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=121189

Queuing patches 1,2 and 4 towards 5.3 thanks.

Patch #3 is waiting until I can sort out j7 dependencies, which should 
happen later this week.

-Tero

> 
> Suman Anna (4):
>    arm64: dts: ti: k3-am65: Add MCU SRAM ranges in interconnect nodes
>    arm64: dts: ti: k3-am65-mcu: Add the MCU RAM node
>    arm64: dts: ti: k3-j721e: Add the MCU SRAM node
>    arm64: dts: ti: k3-am65: Add R5F ranges in interconnect nodes
> 
>   arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi         | 8 ++++++++
>   arch/arm64/boot/dts/ti/k3-am65.dtsi             | 6 ++++++
>   arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 8 ++++++++
>   3 files changed, 22 insertions(+)
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
