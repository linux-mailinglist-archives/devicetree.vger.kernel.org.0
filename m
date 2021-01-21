Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C61BC2FF318
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 19:27:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726533AbhAUSZb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 13:25:31 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:59588 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728901AbhAUSPm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 13:15:42 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LIDqDc054677;
        Thu, 21 Jan 2021 12:13:52 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611252832;
        bh=SVoJMpFjcXZUAp3amM4tD1iVoWQhrYMVdaSU/VpM2Fc=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=Rhm6HSO70F+a7Cx6ARa9LaUc4HbDp4SpL9ch27UQDSVQZy2lxhjD/ohMqBBaNUqte
         soiMGSzs76r4C+kZ3ty1kLxnzyboozErbxuyx5RwVDE7K6mpQpJaeA//mU1WuKbKup
         p9KK/LCvBC+iamPdRQ062EYqfF+vmjf3BAhfAEag=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LIDqGA072707
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 12:13:52 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 12:13:52 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 12:13:51 -0600
Received: from [10.250.35.71] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LIDpST113912;
        Thu, 21 Jan 2021 12:13:51 -0600
Subject: Re: [PATCH v3 3/5] arm64: dts: ti: Add support for AM642 SoC
To:     Nishanth Menon <nm@ti.com>
CC:     Dave Gerlach <d-gerlach@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
References: <20210120202532.9011-1-d-gerlach@ti.com>
 <20210120202532.9011-4-d-gerlach@ti.com>
 <197af185-d2ea-3c76-d0bf-714485f8f195@ti.com>
 <20210121174639.jqbvem6b4ozd3six@sterling>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <4ee6f005-2eee-42b2-b573-e10602839e1b@ti.com>
Date:   Thu, 21 Jan 2021 12:13:46 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210121174639.jqbvem6b4ozd3six@sterling>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 1/21/21 11:46 AM, Nishanth Menon wrote:
> On 11:25-20210121, Suman Anna wrote:
>> On 1/20/21 2:25 PM, Dave Gerlach wrote:
>>> The AM642 SoC belongs to the K3 Multicore SoC architecture platform,
>>> providing advanced system integration to enable applications such as
>>> Motor Drives, PLC, Remote IO and IoT Gateways.
>>>
>>> Some highlights of this SoC are:
>>> * Dual Cortex-A53s in a single cluster, two clusters of dual Cortex-R5F
>>>   MCUs, and a single Cortex-M4F.
>>> * Two Gigabit Industrial Communication Subsystems (ICSSG).
>>> * Integrated Ethernet switch supporting up to a total of two external
>>>   ports.
>>> * PCIe-GEN2x1L, USB3/USB2, 2xCAN-FD, eMMC and SD, UFS, OSPI memory
>>>   controller, QSPI, I2C, eCAP/eQEP, ePWM, ADC, among other
>>>   peripherals.
>>> * Centralized System Controller for Security, Power, and Resource
>>>   Management (DMSC).
>>>
>>> See AM64X Technical Reference Manual (SPRUIM2, Nov 2020)
>>> for further details: https://www.ti.com/lit/pdf/spruim2
>>>
>>> Introduce basic support for the AM642 SoC to enable ramdisk or MMC
>>> boot. Introduce the sdhci, i2c, spi, and uart MAIN domain periperhals
>>> under cbass_main and the i2c, spi, and uart MCU domain periperhals
>>> under cbass_mcu.
>>>
>>> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
>>> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
>>
>> Hmm, there are a few pieces contributed by me, so please do add
>>
>> Signed-off-by: Suman Anna <s-anna@ti.com>
> 
> Sure, thanks..
> 
> [...]
> 
>>> +
>>> +	sdhci0: mmc@fa10000 {
>>> +		compatible = "ti,am64-sdhci-8bit";
>>
>> Hmm, I tried booting this series on top of 5.11-rc1 + Nishanth's current
>> ti-k3-dts-next. So, boot of these patches using this baseline fails when using
>> MMC rootfs, but is ok when using initramfs. This particular compatible and the
>> corresponding driver change are only in linux-next coming through couple of
>> patches from the MMC subsystem.
>>
>> I am not sure why we would be including stuff that's dependent on some other
>> patches being merged from a different sub-system? Strangely, this ought to be
>> caught by dtbs_check, but it is not throwing any errors.
>>
>> IMHO, these should only be added if you have no other external dependencies
>> especially when you are applying on a 5.11-rc baseline. The MMC pull-requests
>> would not go through arm-soc either.
>>
> 
> Yes, I am aware of this - this is no different from integration we have
> done in the past as well.. intent is to get bindings in via subsystem
> trees and dts changes via arm-soc. I always insist that basic ramdisk
> boot always in the basic introduction tree. mmc, nfs are add-ons that
> get added via subsystem tree and I host the dts changes - in this case
> every dts node binding is fine with subsystems already queued in
> linux-next. And this is no different from what I have noticed on other
> ARM SoC maintainer trees as well.
> 

Hmm, this is kinda counter-intuitive. When I see a dts node, I am expecting the
required driver functionality to have been in (or atleast the binding as per
documentation), and not having to need to pick additional patches.

If the intent is to verify/test everything against linux-next and not the
baseline tree, then I guess this works. But in general, this kinda goes against
the rules set in submitting patches. For example, see
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/submitting-patches.rst#n44

And sure enough, this is what I get when I run checkpatch against your tree.

WARNING: DT compatible string "ti,am64-sdhci-8bit" appears un-documented --
check ./Documentation/devicetree/bindings/
#347: FILE: arch/arm64/boot/dts/ti/k3-am64-main.dtsi:298:
+		compatible = "ti,am64-sdhci-8bit";

WARNING: DT compatible string "ti,am64-sdhci-4bit" appears un-documented --
check ./Documentation/devicetree/bindings/
#365: FILE: arch/arm64/boot/dts/ti/k3-am64-main.dtsi:316:
+		compatible = "ti,am64-sdhci-4bit";

regards
Suman


