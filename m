Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1EEA2FED4B
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 15:48:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729365AbhAUOr1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 09:47:27 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:57722 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732100AbhAUOq0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 09:46:26 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LEidkE053118;
        Thu, 21 Jan 2021 08:44:39 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611240279;
        bh=1vW7fuU4fwrOgHJy6apMFofOX4djjcSHOVgQxQp+xUo=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=J5ydOYRDDSJb90sJviPTxqBasXkaTa3dEgqvWNEK0jj9EZTW+te9c027L+4n7RujH
         3KHFn2ub773V3yqvHIsK93zTgA0dtAIU9rzwwJmYaOcyE89tC1Z6eRAXEG/dxddhPR
         QRW5qML5E3VejOeI+TCQVmMPIVjrBFsVtQuVbqxE=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LEid40056831
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 08:44:39 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 08:44:38 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 08:44:38 -0600
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LEiZwA058201;
        Thu, 21 Jan 2021 08:44:36 -0600
Subject: Re: [PATCH v2 0/5] arm64: Initial support for Texas Instruments AM642
 Platform
To:     Nishanth Menon <nm@ti.com>
CC:     Dave Gerlach <d-gerlach@ti.com>, <devicetree@vger.kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tony Lindgren <tony@atomide.com>, Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Aswath Govindraju <a-govindraju@ti.com>,
        <linux-arm-kernel@lists.infradead.org>
References: <20210119163927.774-1-d-gerlach@ti.com>
 <efa935e2-72d3-cc9f-d182-ab852bc9ce6c@ti.com>
 <20210121142100.6n4jpqnvpgw5dhwz@defensive>
From:   Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <4a50feb2-2130-1ce3-4044-96acb7d98c96@ti.com>
Date:   Thu, 21 Jan 2021 16:44:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210121142100.6n4jpqnvpgw5dhwz@defensive>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 21/01/2021 16:21, Nishanth Menon wrote:
> On 15:22-20210121, Grygorii Strashko wrote:
>>
>>
>> On 19/01/2021 18:39, Dave Gerlach wrote:
>>> This is v2 of the series to add initial support for the latest new SoC,
>>> AM642, from Texas Instruments. Version 1 can be found at [1]. Additional
>>> detail can be found in the patch descriptions, also see AM64X Technical
>>> Reference Manual (SPRUIM2, Nov 2020) for further details:
>>> https://www.ti.com/lit/pdf/spruim2
>>>
>>> Since v1, several new bindings have made it in linux-next so we can
>>> now include those nodes using them here. The spi, i2c, and mmc nodes
>>> have now been added along with DMA support. Specifics about changes
>>> from v1 are included with each patch.
>>>
>>> Regards,
>>> Dave
>>>
>>> [1] https://lore.kernel.org/linux-arm-kernel/20201125052004.17823-1-d-gerlach@ti.com/
>>>
>>> Dave Gerlach (4):
>>>     dt-bindings: arm: ti: Add bindings for AM642 SoC
>>>     dt-bindings: pinctrl: k3: Introduce pinmux definitions for AM64
>>>     arm64: dts: ti: Add support for AM642 SoC
>>>     arm64: dts: ti: Add support for AM642 EVM
>>>
>>> Peter Ujfalusi (1):
>>>     arm64: dts: ti: k3-am64-main: Enable DMA support
>>>
>>>    .../devicetree/bindings/arm/ti/k3.yaml        |   6 +
>>>    arch/arm64/boot/dts/ti/Makefile               |   2 +
>>>    arch/arm64/boot/dts/ti/k3-am64-main.dtsi      | 406 ++++++++++++++++++
>>>    arch/arm64/boot/dts/ti/k3-am64-mcu.dtsi       |  76 ++++
>>>    arch/arm64/boot/dts/ti/k3-am64.dtsi           | 103 +++++
>>>    arch/arm64/boot/dts/ti/k3-am642-evm.dts       | 258 +++++++++++
>>>    arch/arm64/boot/dts/ti/k3-am642.dtsi          |  65 +++
>>>    include/dt-bindings/pinctrl/k3.h              |   5 +-
>>>    8 files changed, 920 insertions(+), 1 deletion(-)
>>>    create mode 100644 arch/arm64/boot/dts/ti/k3-am64-main.dtsi
>>>    create mode 100644 arch/arm64/boot/dts/ti/k3-am64-mcu.dtsi
>>>    create mode 100644 arch/arm64/boot/dts/ti/k3-am64.dtsi
>>>    create mode 100644 arch/arm64/boot/dts/ti/k3-am642-evm.dts
>>>    create mode 100644 arch/arm64/boot/dts/ti/k3-am642.dtsi
>>>
>>
>> Tested-by: Grygorii Strashko <grygorii.strashko@ti.com>
>> Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
>>
> 
> Can you see if your reviews and tested apply to V3 of the series as well?
> 
> 	https://lore.kernel.org/linux-arm-kernel/20210120202532.9011-1-d-gerlach@ti.com/
> 

Yes. They do apply.

-- 
Best regards,
grygorii
