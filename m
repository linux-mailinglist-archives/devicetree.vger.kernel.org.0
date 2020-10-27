Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 21E5629B2B1
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 15:44:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1762729AbgJ0OoR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 10:44:17 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:51150 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1762718AbgJ0OoQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Oct 2020 10:44:16 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09REiA20097846;
        Tue, 27 Oct 2020 09:44:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603809850;
        bh=nE4xSB/vCCTNzG8rwTUiA5XIvB10Ug3lc8CTVWPi83Y=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=sjA1z/fRJz7lm/dIVhfuVWt3RLbL1ocKdrhe7dGXEYgytV44dNnQr0JzWa3BkW4E8
         bcsKv/jgMN7rMhhA8xcJ0Mgigk3XIMlMYNeLbpg/7o2BSsZLgNP9DqJp0qy0LwD0c0
         yx4DGbitr6aexJmbydRiF5igU11JEkrPtGNWTru4=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09REiA3S008682
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 27 Oct 2020 09:44:10 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 27
 Oct 2020 09:44:10 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 27 Oct 2020 09:44:10 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09REi8VS035660;
        Tue, 27 Oct 2020 09:44:09 -0500
Subject: Re: [PATCH 2/4] arm64: dts: ti: k3-j721e-common-proc-board: add DP to
 j7 evm
To:     Nishanth Menon <nm@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Swapnil Jakhade <sjakhade@cadence.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
References: <20201027104132.105485-1-tomi.valkeinen@ti.com>
 <20201027104132.105485-3-tomi.valkeinen@ti.com>
 <20201027122054.zdjbjfpjkhnc7wdr@silenced>
From:   Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <5e095a0b-9369-c15b-f00c-ec5b2b27b870@ti.com>
Date:   Tue, 27 Oct 2020 16:44:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201027122054.zdjbjfpjkhnc7wdr@silenced>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/10/2020 14:20, Nishanth Menon wrote:
> On 12:41-20201027, Tomi Valkeinen wrote:
> [...]
> 
>> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
>> index 52e121155563..5a36d65755ee 100644
>> --- a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
>> +++ b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
>> @@ -83,6 +83,31 @@ sound0: sound@0 {
>>  			      "cpb-codec-scki",
>>  			      "cpb-codec-scki-48000", "cpb-codec-scki-44100";
>>  	};
>> +
>> +	dp_pwr_3v3: fixedregulator-dp-prw {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "dp-pwr";
>> +		regulator-min-microvolt = <3300000>;
>> +		regulator-max-microvolt = <3300000>;
>> +		gpio = <&exp4 0 0>;	/* P0 - DP0_PWR_SW_EN */
>> +		enable-active-high;
>> +
>> +		/* Always on for now, until dp-connector driver can handle this */
>> +		regulator-always-on;
>> +	};
>> +
>> +	dp0: connector {
>> +		compatible = "dp-connector";
> 
> This is not documented? I see the following on checkpatch:
> +WARNING: DT compatible string "dp-connector" appears un-documented -- check ./Documentation/devicetree/bindings/
> +#42: FILE: arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts:100:
> ++              compatible = "dp-connector";
> +      mechanically convert to the typical style using --fix or --fix-inplace.
> +      them to the maintainer, see CHECKPATCH in MAINTAINERS.

Yes, I mentioned this in the cover letter.

> 
>> +		label = "DP0";
>> +		type = "full-size";
>> +		dp-pwr-supply = <&dp_pwr_3v3>;
>> +
>> +		port {
>> +			dp_connector_in: endpoint {
>> +				remote-endpoint = <&dp0_out>;
>> +			};
>> +		};
>> +	};
>>  };
>>
>>  &main_pmx0 {
>> @@ -119,6 +144,12 @@ J721E_IOPAD(0x214, PIN_OUTPUT, 4) /* (V4) MCAN1_TX.USB1_DRVVBUS */
>>  		>;
>>  	};
>>
>> +	dp0_pins_default: dp0_pins_default {
> 
> please don't use _ in node names dp0-pins-default perhaps?

Ok.

 Tomi

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
