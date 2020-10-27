Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6374E29C0F0
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 18:22:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1752842AbgJ0RQg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 13:16:36 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:55034 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1781419AbgJ0Ozi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Oct 2020 10:55:38 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09REtY8K103316;
        Tue, 27 Oct 2020 09:55:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603810534;
        bh=GETjUaNBxIQa48fzWEmCGlAA4gPzYeNK+MzMSCrBzcc=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=y/8MoCDm4Ky7HOFZa7NpHpgwdk7+6e/U3IhyG/AwfevNABzLfm+8RGXTws6Ji3eZW
         5F2T2QRBH5/uB22Mc2q5C9jktJUwl3lYBqkvcJa3MukgwXoJCftkhfpIY9XCJw1uus
         hb75HRF1bXkcznFJ7rO/yGSSrWWtZq1bAqFfMHDM=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09REtY38024543
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 27 Oct 2020 09:55:34 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 27
 Oct 2020 09:55:34 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 27 Oct 2020 09:55:34 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09REtWjj119312;
        Tue, 27 Oct 2020 09:55:32 -0500
Subject: Re: [PATCH 4/4] arm64: dts: ti: am654-base-board: fix clock node name
To:     Nishanth Menon <nm@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Swapnil Jakhade <sjakhade@cadence.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
References: <20201027104132.105485-1-tomi.valkeinen@ti.com>
 <20201027104132.105485-5-tomi.valkeinen@ti.com>
 <20201027123941.tgkqxx4rk56sl5tf@crafty>
From:   Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <ffcaa8a3-539d-62ed-2d46-560f2173dd83@ti.com>
Date:   Tue, 27 Oct 2020 16:55:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201027123941.tgkqxx4rk56sl5tf@crafty>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/10/2020 14:39, Nishanth Menon wrote:
> On 12:41-20201027, Tomi Valkeinen wrote:
>> The fixed clock for OV5640 is named 'clock' which is a very generic name
>> and easily leads to conflicts. I encountered this with a similarly named
>> fixed-clock node in k3-am654-evm-tc358876.dtso, which then overrode the
>> OV5640 fixed clock, causing OV5640 not to work when tc358876 overlay had
>> been loaded.
>>
>> Rename the node to 'fixed-clock-ov5640'.
>>
>> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
>> ---
>>  arch/arm64/boot/dts/ti/k3-am654-base-board.dts | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
>> index d12dd89f3405..6801dbddeac5 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
>> +++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
>> @@ -55,7 +55,7 @@ sw6 {
>>  		};
>>  	};
>>  
>> -	clk_ov5640_fixed: clock {
>> +	clk_ov5640_fixed: fixed-clock-ov5640 {
>>  		compatible = "fixed-clock";
>>  		#clock-cells = <0>;
>>  		clock-frequency = <24000000>;
>> -- 
>> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
>> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
>>
> 
> I think you could post this independently as well.
> 
> https://github.com/devicetree-org/devicetree-specification/blob/v0.3/source/devicetree-basics.rst#generic-names-recommendation
> 
> There is a strong desire to use standard node names and
> clock is recommended. even though there are tons of fixed-clock
> compatible clocks in the kernel today, as of v5.10-rc1:
> 
> $ git grep fixed-clock- arch/arm64/boot/dts/
> $ git grep fixed-clock- arch/arm/boot/dts/
> 
> As a node name is not used. Do you want to see how other
> platforms are trying to resolve similar issues?

There doesn't seem to be a standard:

$ git grep -B2 fixed-clock arch/arm/boot/dts/

The node names are just about everything.

 Tomi

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
