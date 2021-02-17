Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23B1B31E18B
	for <lists+devicetree@lfdr.de>; Wed, 17 Feb 2021 22:39:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229828AbhBQVjJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Feb 2021 16:39:09 -0500
Received: from 1.mo173.mail-out.ovh.net ([178.33.111.180]:60969 "EHLO
        1.mo173.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbhBQVjI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Feb 2021 16:39:08 -0500
X-Greylist: delayed 413 seconds by postgrey-1.27 at vger.kernel.org; Wed, 17 Feb 2021 16:39:07 EST
Received: from player770.ha.ovh.net (unknown [10.108.42.192])
        by mo173.mail-out.ovh.net (Postfix) with ESMTP id BCDDB161911
        for <devicetree@vger.kernel.org>; Wed, 17 Feb 2021 22:31:31 +0100 (CET)
Received: from milecki.pl (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
        (Authenticated sender: rafal@milecki.pl)
        by player770.ha.ovh.net (Postfix) with ESMTPSA id EDB851B448C6B;
        Wed, 17 Feb 2021 21:31:24 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-98R0020a1a5315-f3ba-49e7-899d-9e162612c6c8,
                    9D37093870D14A2EE066C20BCCA99E0CC4E638DC) smtp.auth=rafal@milecki.pl
X-OVh-ClientIp: 194.187.74.233
Subject: Re: [PATCH 2/5] arm64: dts: broadcom: bcm4908: describe Ethernet
 controller
To:     Florian Fainelli <f.fainelli@gmail.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
References: <20210215204105.27830-1-zajec5@gmail.com>
 <20210215204105.27830-2-zajec5@gmail.com>
 <4b586f2c-851c-e4ea-6507-b9d9b7c08850@gmail.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Message-ID: <9b063942-21e7-2656-dcb3-66bb47c1d17c@milecki.pl>
Date:   Wed, 17 Feb 2021 22:31:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <4b586f2c-851c-e4ea-6507-b9d9b7c08850@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 10030360799246913167
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrjedvgdduvdegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepuffvfhfhkffffgggjggtgfesthekredttdefjeenucfhrhhomheptfgrfhgrlhcuofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepkeduheejheffudefhffghfegjeejleetkeevueelveegkefhhfffieehleelgfevnecukfhppedtrddtrddtrddtpdduleegrddukeejrdejgedrvdeffeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejjedtrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprhgrfhgrlhesmhhilhgvtghkihdrphhlpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16.02.2021 03:50, Florian Fainelli wrote:
> On 2/15/2021 12:41 PM, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> BCM4908 SoCs have an integrated Ethernet controller.
>>
>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>> ---
>>   .../boot/dts/broadcom/bcm4908/bcm4908.dtsi    | 20 +++++++++++++++++++
>>   1 file changed, 20 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
>> index 358958105337..2d2c23292508 100644
>> --- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
>> +++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
>> @@ -112,6 +112,14 @@ soc {
>>   		#size-cells = <1>;
>>   		ranges = <0x00 0x00 0x80000000 0x281000>;
>>   
>> +		enet: ethernet@2000 {
>> +			compatible = "brcm,bcm4908-enet";
>> +			reg = <0x2000 0x1000>;
>> +
>> +			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
>> +			interrupt-names = "rx";
>> +		};
>> +
>>   		usb_phy: usb-phy@c200 {
>>   			compatible = "brcm,bcm4908-usb-phy";
>>   			reg = <0xc200 0x100>;
>> @@ -199,6 +207,18 @@ port@3 {
>>   						phy-mode = "internal";
>>   						phy-handle = <&phy11>;
>>   					};
>> +
>> +					port@8 {
>> +						reg = <8>;
>> +						phy-mode = "internal";
>> +						ethernet = <&enet>;
>> +						brcm,use-bcm-hdr;
> 
> This looks redundant, because we have an "ethernet" phandle property
> here this will become the CPU port for DSA and so we would enable
> Broadcom tags on that port. Did you somehow need that for the switch
> driver to work?

I blindly added that property. I verified now that it's not needed.

It seems bcm_sf2_imp_setup() handles setup properly.
