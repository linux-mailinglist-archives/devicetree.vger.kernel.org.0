Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5880126BA7F
	for <lists+devicetree@lfdr.de>; Wed, 16 Sep 2020 05:06:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726069AbgIPDGC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 23:06:02 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:57750 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726023AbgIPDGA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 23:06:00 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08G35tj5016117;
        Tue, 15 Sep 2020 22:05:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1600225555;
        bh=+mw4dZ7Q6EFWL1p0anBoew3DexgHj4u+eruxZMbJXZs=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=E5u3DSHgPErv6jCxC8rTyef29u6nM94suaZ30ImcUVmz8nNwQlGcz64ZnmcvlCnWY
         agwsmjonjqLhbU/UhsoTvSNCi1APRA1yzxvFAS0u9BUAQZZAExVwIuqi2f+FGNWfj2
         iBSl0qztnkhzYGtM3pwuJxmKb8zoEhHfkaIQGzs0=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08G35td9017529
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 15 Sep 2020 22:05:55 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 15
 Sep 2020 22:05:54 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 15 Sep 2020 22:05:54 -0500
Received: from [10.250.66.210] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08G35srA127593;
        Tue, 15 Sep 2020 22:05:54 -0500
Subject: Re: [PATCH v4 5/5] arm64: dts: ti: Add support for J7200 Common
 Processor Board
To:     Nishanth Menon <nm@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
References: <20200914162231.2535-1-lokeshvutla@ti.com>
 <20200914162231.2535-6-lokeshvutla@ti.com>
 <7d7f3ba2-d687-a90b-e4e9-6bec835e093f@ti.com>
 <20200916011552.armvw6s7jxr4gxca@akan>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <5494f50f-62d9-ad3e-f30a-95a5cd4bf4fc@ti.com>
Date:   Tue, 15 Sep 2020 22:05:54 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200916011552.armvw6s7jxr4gxca@akan>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/15/20 8:15 PM, Nishanth Menon wrote:
> On 10:33-20200915, Suman Anna wrote:
>> On 9/14/20 11:22 AM, Lokesh Vutla wrote:
>>> Add support for J7200 Common Processor Board.
>>> The EVM architecture is very similar to J721E as follows:
>>>
>>> +------------------------------------------------------+
>>> |   +-------------------------------------------+      |
>>> |   |                                           |      |
>>> |   |        Add-on Card 1 Options              |      |
>>> |   |                                           |      |
>>> |   +-------------------------------------------+      |
>>> |                                                      |
>>> |                                                      |
>>> |                     +-------------------+            |
>>> |                     |                   |            |
>>> |                     |   SOM             |            |
>>> |  +--------------+   |                   |            |
>>> |  |              |   |                   |            |
>>> |  |  Add-on      |   +-------------------+            |
>>> |  |  Card 2      |                                    |    Power Supply
>>> |  |  Options     |                                    |    |
>>> |  |              |                                    |    |
>>> |  +--------------+                                    | <---
>>> +------------------------------------------------------+
>>>                                 Common Processor Board
>>>
>>> Common Processor board is the baseboard that has most of the actual
>>> connectors, power supply etc. A SOM (System on Module) is plugged on
>>> to the common processor board and this contains the SoC, PMIC, DDR and
>>> basic high speed components necessary for functionality.
>>>
>>> Note:
>>> * The minimum configuration required to boot up the board is System On
>>>   Module(SOM) + Common Processor Board.
>>> * Since there is just a single SOM and Common Processor Board, we are
>>>   maintaining common processor board as the base dts and SOM as the dtsi
>>>   that we include. In the future as more SOM's appear, we should move
>>>   common processor board as a dtsi and include configurations as dts.
>>> * All daughter cards beyond the basic boards shall be maintained as
>>>   overlays.
>>>
>>> Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
>>> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
>>> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
>>> ---
>>>  arch/arm64/boot/dts/ti/Makefile               |  2 +
>>>  .../dts/ti/k3-j7200-common-proc-board.dts     | 64 +++++++++++++++++++
>>>  arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi   | 29 +++++++++
>>>  3 files changed, 95 insertions(+)
>>>  create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
>>>  create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
>>>
>>> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
>>> index 7f28be62b8da..65506f21ba30 100644
>>> --- a/arch/arm64/boot/dts/ti/Makefile
>>> +++ b/arch/arm64/boot/dts/ti/Makefile
>>> @@ -9,3 +9,5 @@
>>>  dtb-$(CONFIG_ARCH_K3) += k3-am654-base-board.dtb
>>>  
>>>  dtb-$(CONFIG_ARCH_K3) += k3-j721e-common-proc-board.dtb
>>> +
>>> +dtb-$(CONFIG_ARCH_K3) += k3-j7200-common-proc-board.dtb
>>> diff --git a/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
>>> new file mode 100644
>>> index 000000000000..e27069317c4e
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
>>> @@ -0,0 +1,64 @@
>>> +// SPDX-License-Identifier: GPL-2.0
>>> +/*
>>> + * Copyright (C) 2020 Texas Instruments Incorporated - https://www.ti.com/
>>> + */
>>> +
>>> +/dts-v1/;
>>> +
>>> +#include "k3-j7200-som-p0.dtsi"
>>> +
>>> +/ {
>>> +	chosen {
>>> +		stdout-path = "serial2:115200n8";
>>> +		bootargs = "console=ttyS2,115200n8 earlycon=ns16550a,mmio32,0x02800000";
>>> +	};
>>> +};
>>> +
>>> +&wkup_uart0 {
>>> +	/* Wakeup UART is used by System firmware */
>>> +	status = "disabled";
>>> +};
>>> +
>>> +&main_uart0 {
>>> +	power-domains = <&k3_pds 146 TI_SCI_PD_SHARED>;
>>
>> Perhaps a comment here to explain why this is being overwritten to use
>> PD_SHARED. I don't see anything in the Changelog either.
> Shared with ATF on this platform -> I can add this comment on applying.
>>
>> Otherwise, looks good.
> 
> Would that be a reviewed-by?
> 

Yes, with the comment added,

Reviewed-by: Suman Anna <s-anna@ti.com>

regards
Suman

