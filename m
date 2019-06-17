Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DB3E648FBE
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2019 21:42:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727462AbfFQTmc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jun 2019 15:42:32 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:33466 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726026AbfFQTmb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jun 2019 15:42:31 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5HJgQhb014546;
        Mon, 17 Jun 2019 14:42:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1560800546;
        bh=OXjiS+8UpF2zY/61W6xFfGT6Jb8eSjrF0tnxlXIhGpI=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=LArX8aBJp/5jwJJ0zcvOANjmJJgDDxPXINd+/m79fJ6Jy+KwLIdhFogW2vSiahtmA
         xxv+fFkw/23U9IU349WmEeQNpX1OQcFpEKIMJ64kl+krU/OBH/Di5UCTgsnWz5NW/K
         SNLsoOpGijZjUE+xkM8tN3YOodQvnk/iKhGY22XU=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5HJgQXB084710
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 17 Jun 2019 14:42:26 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 17
 Jun 2019 14:42:25 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 17 Jun 2019 14:42:25 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5HJgNvD058998;
        Mon, 17 Jun 2019 14:42:24 -0500
Subject: Re: [PATCH] arm64: dts: ti: k3-am65: Add MSMC RAM ranges in
 interconnect node
To:     Suman Anna <s-anna@ti.com>, Nishanth Menon <nm@ti.com>
CC:     Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Roger Quadros <rogerq@ti.com>
References: <20190529211344.18014-1-s-anna@ti.com>
 <20190530104903.ldcmkunjnk7a5y3c@akan>
 <3c53679c-4246-43e1-e6d6-2e1c7db201d7@ti.com>
 <b1f7aa31-4f3b-b9d9-6951-092f3a87d078@ti.com>
From:   Tero Kristo <t-kristo@ti.com>
Message-ID: <ac862030-6843-2906-3823-8e93da1b22da@ti.com>
Date:   Mon, 17 Jun 2019 22:42:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <b1f7aa31-4f3b-b9d9-6951-092f3a87d078@ti.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/06/2019 18:53, Suman Anna wrote:
> On 6/17/19 9:54 AM, Tero Kristo wrote:
>> On 30/05/2019 13:49, Nishanth Menon wrote:
>>> On 16:13-20190529, Suman Anna wrote:
>>>> From: Roger Quadros <rogerq@ti.com>
>>>>
>>>> Add the MSCM RAM address space to the ranges property of the cbass_main
>>>> interconnect node so that the addresses can be translated properly.
>>>>
>>>> This fixes the probe failure in the sram driver for the MSMC RAM node.
>>>>
>>>> Signed-off-by: Roger Quadros <rogerq@ti.com>
>>>> Signed-off-by: Suman Anna <s-anna@ti.com>
>>>> ---
>>>>
>>>> The following error message is seen without this:
>>>> [    0.480261] sram interconnect@100000:sram@70000000: found no
>>>> memory resource
>>>> [    0.487497] sram: probe of interconnect@100000:sram@70000000
>>>> failed with error -22
>>>>
>>>> regards
>>>> Suman
>>>>
>>>>    arch/arm64/boot/dts/ti/k3-am65.dtsi | 1 +
>>>>    1 file changed, 1 insertion(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/ti/k3-am65.dtsi
>>>> b/arch/arm64/boot/dts/ti/k3-am65.dtsi
>>>> index 50f4be2047a9..68b3f954f1d1 100644
>>>> --- a/arch/arm64/boot/dts/ti/k3-am65.dtsi
>>>> +++ b/arch/arm64/boot/dts/ti/k3-am65.dtsi
>>>> @@ -68,6 +68,7 @@
>>>>                 <0x00 0x00900000 0x00 0x00900000 0x00 0x00012000>, /*
>>>> serdes */
>>>>                 <0x00 0x01000000 0x00 0x01000000 0x00 0x0af02400>, /*
>>>> Most peripherals */
>>>>                 <0x00 0x30800000 0x00 0x30800000 0x00 0x0bc00000>, /*
>>>> MAIN NAVSS */
>>>> +             <0x00 0x70000000 0x00 0x70000000 0x00 0x00200000>, /*
>>>> MSMC SRAM */
>>>>                 /* MCUSS Range */
>>>>                 <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
>>>>                 <0x00 0x40200000 0x00 0x40200000 0x00 0x00900100>,
>>>> -- 
>>>> 2.21.0
>>>>
>>>
>>> Arrgh.. Nice catch. Thanks. We should consider pulling this in as part
>>> of early rc fixes please.
>>>
>>> Acked-by: Nishanth Menon <nm@ti.com>
>>
>> Hmm, what is the failure this causes, except the probe message? SRAM
>> driver obviously won't work but is it used for anything at the moment
>> anyways?
>>
>> I would rather queue this towards 5.3.
> 
> OK, I am fine either way.
> 
> regards
> Suman
> 

Ok thanks, queued towards 5.3.

That basically saves me one pull-request. :)

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
