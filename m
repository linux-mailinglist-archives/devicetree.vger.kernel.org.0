Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 91E65487F4
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2019 17:54:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727782AbfFQPyC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jun 2019 11:54:02 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:47164 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727750AbfFQPyC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jun 2019 11:54:02 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5HFrq23004775;
        Mon, 17 Jun 2019 10:53:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1560786832;
        bh=erG+uvBOMa+8xX2nRvZBiq/ybYqVpwg2fajITY2mcv0=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=Ns8A78edmhW8KxAcDpphcGuin44oJRy4uhhFbMKdZjGmerj2adWQ1IwKOStleCYun
         Ek/EgOnAKR2/mnS82XYpS2iXDuh99AKCtqVbnpXatMLIAtmkuKIkuFK5jFciarKCvN
         O3Jfxi5zPuMmjEpdSicjGCaqZyYpicDGw+92JaLY=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5HFrqAk125367
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 17 Jun 2019 10:53:52 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 17
 Jun 2019 10:53:51 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 17 Jun 2019 10:53:51 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5HFrprR061194;
        Mon, 17 Jun 2019 10:53:51 -0500
Subject: Re: [PATCH] arm64: dts: ti: k3-am65: Add MSMC RAM ranges in
 interconnect node
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Roger Quadros <rogerq@ti.com>
References: <20190529211344.18014-1-s-anna@ti.com>
 <20190530104903.ldcmkunjnk7a5y3c@akan>
 <3c53679c-4246-43e1-e6d6-2e1c7db201d7@ti.com>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <b1f7aa31-4f3b-b9d9-6951-092f3a87d078@ti.com>
Date:   Mon, 17 Jun 2019 10:53:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <3c53679c-4246-43e1-e6d6-2e1c7db201d7@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/17/19 9:54 AM, Tero Kristo wrote:
> On 30/05/2019 13:49, Nishanth Menon wrote:
>> On 16:13-20190529, Suman Anna wrote:
>>> From: Roger Quadros <rogerq@ti.com>
>>>
>>> Add the MSCM RAM address space to the ranges property of the cbass_main
>>> interconnect node so that the addresses can be translated properly.
>>>
>>> This fixes the probe failure in the sram driver for the MSMC RAM node.
>>>
>>> Signed-off-by: Roger Quadros <rogerq@ti.com>
>>> Signed-off-by: Suman Anna <s-anna@ti.com>
>>> ---
>>>
>>> The following error message is seen without this:
>>> [    0.480261] sram interconnect@100000:sram@70000000: found no
>>> memory resource
>>> [    0.487497] sram: probe of interconnect@100000:sram@70000000
>>> failed with error -22
>>>
>>> regards
>>> Suman
>>>
>>>   arch/arm64/boot/dts/ti/k3-am65.dtsi | 1 +
>>>   1 file changed, 1 insertion(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/ti/k3-am65.dtsi
>>> b/arch/arm64/boot/dts/ti/k3-am65.dtsi
>>> index 50f4be2047a9..68b3f954f1d1 100644
>>> --- a/arch/arm64/boot/dts/ti/k3-am65.dtsi
>>> +++ b/arch/arm64/boot/dts/ti/k3-am65.dtsi
>>> @@ -68,6 +68,7 @@
>>>                <0x00 0x00900000 0x00 0x00900000 0x00 0x00012000>, /*
>>> serdes */
>>>                <0x00 0x01000000 0x00 0x01000000 0x00 0x0af02400>, /*
>>> Most peripherals */
>>>                <0x00 0x30800000 0x00 0x30800000 0x00 0x0bc00000>, /*
>>> MAIN NAVSS */
>>> +             <0x00 0x70000000 0x00 0x70000000 0x00 0x00200000>, /*
>>> MSMC SRAM */
>>>                /* MCUSS Range */
>>>                <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
>>>                <0x00 0x40200000 0x00 0x40200000 0x00 0x00900100>,
>>> -- 
>>> 2.21.0
>>>
>>
>> Arrgh.. Nice catch. Thanks. We should consider pulling this in as part
>> of early rc fixes please.
>>
>> Acked-by: Nishanth Menon <nm@ti.com>
> 
> Hmm, what is the failure this causes, except the probe message? SRAM
> driver obviously won't work but is it used for anything at the moment
> anyways?
> 
> I would rather queue this towards 5.3.

OK, I am fine either way.

regards
Suman
