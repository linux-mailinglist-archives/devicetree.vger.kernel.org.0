Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5DF6D4A43C
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 16:43:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729079AbfFROn0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 10:43:26 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:56622 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727105AbfFROn0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jun 2019 10:43:26 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5IEhM8g070320;
        Tue, 18 Jun 2019 09:43:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1560869002;
        bh=OD/7aM+GBajZ0tYxC1X/lF5btDJMS2SHBfug2bvucPs=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=W3NSCoRaf30bMLwbARC0rVC2D2L7/b3GjLM06E1QKGkvf6SNYk2inpQuWx/2WlxQQ
         LDbMCFDgbbMy7mnYJihIBSbnEOQLQO/CtaOsWISNuqis1E4qMOkgdJugLtQYrwq/FT
         DmgqEYxU7nB6XRlhbkGqzQuRvI7anCOSQlSsKLEo=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5IEhMtd019174
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 18 Jun 2019 09:43:22 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 18
 Jun 2019 09:43:21 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 18 Jun 2019 09:43:21 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5IEhJdL016389;
        Tue, 18 Jun 2019 09:43:19 -0500
Subject: Re: [PATCH] arm64: dts: ti: k3-j721e-main: Add Main NavSS Interrupt
 controller node
To:     Lokesh Vutla <lokeshvutla@ti.com>, Suman Anna <s-anna@ti.com>,
        Nishanth Menon <nm@ti.com>
CC:     Rob Herring <robh+dt@kernel.org>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20190531004848.32061-1-s-anna@ti.com>
 <5e8fa7b4-6c44-85dc-0a33-bcf930b6d795@ti.com>
From:   Tero Kristo <t-kristo@ti.com>
Message-ID: <148be27b-b4ca-dacc-0218-fef489931224@ti.com>
Date:   Tue, 18 Jun 2019 17:43:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5e8fa7b4-6c44-85dc-0a33-bcf930b6d795@ti.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/06/2019 17:47, Lokesh Vutla wrote:
> 
> 
> On 31/05/19 6:18 AM, Suman Anna wrote:
>> Add the Interrupt controller node for the Interrupt Router present within
>> the Main NavSS module. This Interrupt Router can route 192 interrupts to
>> the GIC_SPI in 3 sets of 64 interrupts each. Note that the last set is
>> reserved for the host ID A72_3 for hypervisor usecases, so the node is
>> added only with 2 sets for the Linux kernel context (host id A72_2). This
>> is specified through the ti,sci-rm-range-girq property.
>>
>> Signed-off-by: Suman Anna <s-anna@ti.com>
> 
> Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>

Queuing for 5.3, thanks.

-Tero

> 
> Thanks and regards,
> Lokesh
> 
>> ---
>> Hi Tero,
>>
>> This patch depends on the J721E series [1] from Nishanth. Patch tested
>> using additional patches exercising Mailbox IP.
>>
>> regards
>> Suman
>>
>> [1] https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=121189
>>
>>   arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 18 ++++++++++++++++++
>>   1 file changed, 18 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> index d42912044a5d..36c51ff9a898 100644
>> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> @@ -50,6 +50,24 @@
>>   		#iommu-cells = <1>;
>>   	};
>>   
>> +	cbass_main_navss: interconnect0 {
>> +		compatible = "simple-bus";
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		ranges;
>> +
>> +		main_navss_intr: interrupt-controller1 {
>> +			compatible = "ti,sci-intr";
>> +			ti,intr-trigger-type = <4>;
>> +			interrupt-controller;
>> +			interrupt-parent = <&gic500>;
>> +			#interrupt-cells = <2>;
>> +			ti,sci = <&dmsc>;
>> +			ti,sci-dst-id = <14>;
>> +			ti,sci-rm-range-girq = <0>, <2>;
>> +		};
>> +	};
>> +
>>   	secure_proxy_main: mailbox@32c00000 {
>>   		compatible = "ti,am654-secure-proxy";
>>   		#mbox-cells = <1>;
>>

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
