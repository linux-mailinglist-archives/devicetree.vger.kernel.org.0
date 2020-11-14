Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AAF9D2B3160
	for <lists+devicetree@lfdr.de>; Sun, 15 Nov 2020 00:28:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726136AbgKNX1q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 18:27:46 -0500
Received: from mx2.suse.de ([195.135.220.15]:43018 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726125AbgKNX1q (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 18:27:46 -0500
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id D17A7AC1F;
        Sat, 14 Nov 2020 23:27:44 +0000 (UTC)
Subject: Re: [PATCH mvebu-dt v2 4/6] ARM: dts: turris-omnia: add SFP node
From:   =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
To:     =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>
Cc:     arm@kernel.org, Andrew Lunn <andrew@lunn.ch>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Gregory CLEMENT <gregory.clement@bootlin.com>
References: <20201114183217.1352-1-kabel@kernel.org>
 <20201114183217.1352-5-kabel@kernel.org>
 <972cde9c-9e4a-0e43-c9c3-9528581d8738@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <9135e412-4062-18bf-4d7f-5096e5c742d5@suse.de>
Date:   Sun, 15 Nov 2020 00:27:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <972cde9c-9e4a-0e43-c9c3-9528581d8738@suse.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14.11.20 22:36, Andreas Färber wrote:
> Hi Marek,
> 
> On 14.11.20 19:32, Marek Behún wrote:
>> diff --git a/arch/arm/boot/dts/armada-385-turris-omnia.dts b/arch/arm/boot/dts/armada-385-turris-omnia.dts
>> index 7ccebf7d1757..14c21cddef72 100644
>> --- a/arch/arm/boot/dts/armada-385-turris-omnia.dts
>> +++ b/arch/arm/boot/dts/armada-385-turris-omnia.dts
>> @@ -82,6 +82,22 @@ pcie@3,0 {
>>  			};
>>  		};
>>  	};
>> +
>> +	sfp: sfp {
>> +		compatible = "sff,sfp";
>> +		i2c-bus = <&sfp_i2c>;
>> +		tx-fault-gpios = <&pcawan 0 GPIO_ACTIVE_HIGH>;
>> +		tx-disable-gpios = <&pcawan 1 GPIO_ACTIVE_HIGH>;
>> +		rate-select0-gpios = <&pcawan 2 GPIO_ACTIVE_HIGH>;
>> +		los-gpios = <&pcawan 3 GPIO_ACTIVE_HIGH>;
>> +		mod-def0-gpios = <&pcawan 4 GPIO_ACTIVE_LOW>;
>> +
>> +		/*
>> +		 * For now this has to be enabled at boot time by U-Boot when
>> +		 * a SFP module is present.
>> +		 */
>> +		status = "disabled";
>> +	};
>>  };
>>  
>>  &bm {
>> @@ -130,6 +146,7 @@ &eth2 {
>>  	phy-mode = "sgmii";
>>  	phy = <&phy1>;
>>  	phys = <&comphy5 2>;
>> +	sfp = <&sfp>;
>>  	buffer-manager = <&bm>;
>>  	bm,pool-long = <2>;
>>  	bm,pool-short = <3>;
>> @@ -195,7 +212,7 @@ i2c@3 {
>>  			/* routed to PCIe2 connector (CN62A) */
>>  		};
>>  
>> -		i2c@4 {
>> +		sfp_i2c: i2c@4 {
>>  			#address-cells = <1>;
>>  			#size-cells = <0>;
>>  			reg = <4>;
> 
> Matches what I've come up with,

Actually one minor diff: As I had pointed out to you privately before, I
set maximum-power-milliwatt to its max of 2000.

Does your hardware only support the default of 1000, or are you still
unsure of the limit that you've omitted it here? Not sure if it makes a
difference in practice, but it does show up in dmesg.

Regards,
Andreas

-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
GF: Felix Imendörffer
HRB 36809 (AG Nürnberg)
