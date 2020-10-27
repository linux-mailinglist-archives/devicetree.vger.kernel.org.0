Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69F6B29B2CD
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 15:46:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1763940AbgJ0Opo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 10:45:44 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:51488 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1763954AbgJ0Opn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Oct 2020 10:45:43 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09REjeY0098350;
        Tue, 27 Oct 2020 09:45:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603809940;
        bh=PpvfvVJITwIWaOIQskfzzcC+SYgGuYE9UuZJHn3ozck=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=ba2IYYrCYjxP9kGiCxjvO7BVqlVzBNlelGnBmmerGUlO+EANXlGi0Sbetr3UHqIg4
         wxit2YnsuxeMH5Gw2ddNwnjgxY5MilS6iCW5oEtUBhIreOyT6oFvcMe1S3/rW1/417
         CA11ttNSs/4BIYXNBre+25wHx36ZZDvHVD+SD9Bo=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09REjewK010647
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 27 Oct 2020 09:45:40 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 27
 Oct 2020 09:45:39 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 27 Oct 2020 09:45:39 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09REjb6Z102122;
        Tue, 27 Oct 2020 09:45:38 -0500
Subject: Re: [PATCH 3/4] arm64: dts: ti: k3-am65: mark dss as dma-coherent
To:     Nishanth Menon <nm@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Swapnil Jakhade <sjakhade@cadence.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
References: <20201027104132.105485-1-tomi.valkeinen@ti.com>
 <20201027104132.105485-4-tomi.valkeinen@ti.com>
 <20201027123412.ghwb5p3ruzm7lpqo@repent>
From:   Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <25f63a9b-7473-949b-2310-5c00440fb830@ti.com>
Date:   Tue, 27 Oct 2020 16:45:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201027123412.ghwb5p3ruzm7lpqo@repent>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/10/2020 14:34, Nishanth Menon wrote:
> On 12:41-20201027, Tomi Valkeinen wrote:
>> DSS is IO coherent on AM65, so we can mark it as such with
>> 'dma-coherent' property in the DT file.
>>
>> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
>> ---
>>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
>> index 533525229a8d..a0b4a421026f 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
>> @@ -867,6 +867,8 @@ dss: dss@04a00000 {
>>  
>>  		status = "disabled";
>>  
>> +		dma-coherent;
>> +
>>  		dss_ports: ports {
>>  			#address-cells = <1>;
>>  			#size-cells = <0>;
>> -- 
>> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
>> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
>>
> 
> Does it need to be part of this series?

No. The two DP patches should go together, but the am6 ones can be applied independently.

 Tomi

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
