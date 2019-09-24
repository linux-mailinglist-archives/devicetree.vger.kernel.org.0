Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D9721BD127
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2019 20:04:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2407280AbfIXSEm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Sep 2019 14:04:42 -0400
Received: from foss.arm.com ([217.140.110.172]:35108 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2407040AbfIXSEl (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 24 Sep 2019 14:04:41 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3BF1F142F;
        Tue, 24 Sep 2019 11:04:41 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6E93E3F694;
        Tue, 24 Sep 2019 11:04:37 -0700 (PDT)
Subject: Re: [PATCH 3/3] arm64: dts: mark lx2160a esdhc controllers dma
 coherent
To:     Leo Li <leoyang.li@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
        Russell King <rmk+kernel@armlinux.org.uk>
Cc:     dann frazier <dann.frazier@canonical.com>,
        Will Deacon <will.deacon@arm.com>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        "Y.b. Lu" <yangbo.lu@nxp.com>, Christoph Hellwig <hch@lst.de>,
        Mark Rutland <mark.rutland@arm.com>,
        DTML <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <20190922102341.GO25745@shell.armlinux.org.uk>
 <E1iBz55-0008Mj-CX@rmk-PC.armlinux.org.uk>
 <CAPDyKFpQn+O-M60q-Tc4QOBM+WhFhmnkU6_-t5hnQcndLo==YA@mail.gmail.com>
 <AM0PR04MB66766AC0807A85B3E5428E028F840@AM0PR04MB6676.eurprd04.prod.outlook.com>
From:   Robin Murphy <robin.murphy@arm.com>
Message-ID: <4cb91a30-ed1b-1fef-58df-fbc46757bd5d@arm.com>
Date:   Tue, 24 Sep 2019 19:04:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <AM0PR04MB66766AC0807A85B3E5428E028F840@AM0PR04MB6676.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/09/2019 04:41, Leo Li wrote:
> 
> 
>> -----Original Message-----
>> From: Ulf Hansson <ulf.hansson@linaro.org>
>> Sent: Monday, September 23, 2019 4:27 PM
>> To: Russell King <rmk+kernel@armlinux.org.uk>
>> Cc: Robin Murphy <robin.murphy@arm.com>; dann frazier
>> <dann.frazier@canonical.com>; Will Deacon <will.deacon@arm.com>;
>> Nicolin Chen <nicoleotsuka@gmail.com>; Y.b. Lu <yangbo.lu@nxp.com>;
>> Christoph Hellwig <hch@lst.de>; Mark Rutland <mark.rutland@arm.com>;
>> DTML <devicetree@vger.kernel.org>; Leo Li <leoyang.li@nxp.com>; Rob
>> Herring <robh+dt@kernel.org>; Shawn Guo <shawnguo@kernel.org>; Linux
>> ARM <linux-arm-kernel@lists.infradead.org>
>> Subject: Re: [PATCH 3/3] arm64: dts: mark lx2160a esdhc controllers dma
>> coherent
>>
>> On Sun, 22 Sep 2019 at 12:29, Russell King <rmk+kernel@armlinux.org.uk>
>> wrote:
>>>
>>> The LX2160A esdhc controllers are setup by the driver to be DMA
>>> coherent, but without marking them as such in DT, Linux thinks they
>>> are not.  This can lead to random sporadic DMA errors, even to the
>>> extent of preventing boot, such as:
>>>
>>> mmc0: ADMA error
>>> mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
>>> mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00002202
>>> mmc0: sdhci: Blk size:  0x00000008 | Blk cnt:  0x00000001
>>> mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
>>> mmc0: sdhci: Present:   0x01f50008 | Host ctl: 0x00000038
>>> mmc0: sdhci: Power:     0x00000003 | Blk gap:  0x00000000
>>> mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x000040d8
>>> mmc0: sdhci: Timeout:   0x00000003 | Int stat: 0x00000001
>>> mmc0: sdhci: Int enab:  0x037f108f | Sig enab: 0x037f108b
>>> mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00002202
>>> mmc0: sdhci: Caps:      0x35fa0000 | Caps_1:   0x0000af00
>>> mmc0: sdhci: Cmd:       0x0000333a | Max curr: 0x00000000
>>> mmc0: sdhci: Resp[0]:   0x00000920 | Resp[1]:  0x001d8a33
>>> mmc0: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x3f400e00
>>> mmc0: sdhci: Host ctl2: 0x00000000
>>> mmc0: sdhci: ADMA Err:  0x00000009 | ADMA Ptr: 0x000000236d43820c
>>> mmc0: sdhci: ============================================
>>> mmc0: error -5 whilst initialising SD card
>>>
>>> These are caused by the device's descriptor fetch hitting
>>> speculatively loaded CPU cache lines that the CPU does not see through
>>> the normal, non-cacheable DMA coherent mapping that it uses for
>>> non-coherent devices.
>>>
>>> DT and the device must agree wrt whether the device is DMA coherent or
>>> not.
>>>
>>> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
>>
>> As I am picking up patch1 and patch2 from this series, I can also help out and
>> pick up this one, if that is okay by people?
> 
> There is some concern recently from linux-next maintainer about this causing potential conflicts.  https://lkml.org/lkml/2019/9/15/225

In principle, it should be fine for #2 and #3 to go via separate trees - 
#3 aligns the DT with the existing behaviour of the driver, while #2 
will make the driver behave correctly whichever state the DT is in.

Robin.
