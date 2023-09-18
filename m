Return-Path: <devicetree+bounces-1057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C4B7A483B
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 13:22:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C93661C209FF
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 11:22:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6755F179B4;
	Mon, 18 Sep 2023 11:22:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E866AA4
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 11:22:46 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 524FC94;
	Mon, 18 Sep 2023 04:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1695036165; x=1726572165;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=kluPNx78PDXd32m1iNhuIVPny+fKABo9invjA3n+l5Q=;
  b=HojimILV1F1r1BsTiBpIclC51mM+HQ5c9rnKapvfARBb0/mwNnqF50h4
   3/ADVnyO1waW++XagsvGzMpmNlz8f/j7CphbduDt2m4I2L49CCcNmiaoI
   iNGpZ+RW5gevovdKf1VvLJ2kFdyqk+V4T5u3mG+rnhLmTQ/AWcf0liTQf
   O07jSrdedPEDkQ0NndsIWvZ2Lo6A+cSiecclkqsANF6t6iubDAXpS32eM
   r7iIK02MZThcxq2aL1RJF2ZJ+LBuhdWFb88B/IFWMjdU1QXJP3Onr/HfB
   73QY3Py+eK9Mki0ga2ZLW3nPnLlS9TaOSvVIo47eYEd0bblwwzsQTafAf
   w==;
X-CSE-ConnectionGUID: G6oqYu+RRRG6vKWhZq7ZXg==
X-CSE-MsgGUID: vfjtAAIqRESwikdz5gwCwg==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; 
   d="scan'208";a="5370427"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 18 Sep 2023 04:22:44 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 18 Sep 2023 04:22:42 -0700
Received: from [10.159.245.205] (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Mon, 18 Sep 2023 04:22:41 -0700
Message-ID: <8aac7493-4ace-aed2-7cd5-bb003605dddb@microchip.com>
Date: Mon, 18 Sep 2023 13:22:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH] ARM: dts: at91/trivial: fix typo in crypto DT naming
To: claudiu beznea <claudiu.beznea@tuxon.dev>, Tudor Ambarus
	<tudor.ambarus@linaro.org>, <linux-arm-kernel@lists.infradead.org>
CC: Conor Dooley <conor.dooley@microchip.com>, <linux-kernel@vger.kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
	<devicetree@vger.kernel.org>
References: <20230906135838.59247-1-nicolas.ferre@microchip.com>
 <7d1b2f5d-cbbb-810f-b511-84d6d4682fa1@tuxon.dev>
Content-Language: en-US, fr-FR
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
In-Reply-To: <7d1b2f5d-cbbb-810f-b511-84d6d4682fa1@tuxon.dev>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 18/09/2023 at 06:08, claudiu beznea wrote:
> On 06.09.2023 16:58, nicolas.ferre@microchip.com wrote:
>> From: Nicolas Ferre <nicolas.ferre@microchip.com>
>>
>> Fix typo in DT name for TDES node.
>>
>> Fixes: 4b6140b96dfe ("ARM: dts: at91: Use the generic "crypto" node name for the crypto IPs")
>> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> 
> Applied, thanks!
> 
> Hi, Nicolas,
> 
> Also, I've removed the fixes tag as the node is not referenced anywhere by
> its name thus no need for fixes in this case. Let me know if you consider
> differently.

Agreed, sure Claudiu, let's not add more work to the "stable" people.

Thanks, best regards,
   Nicolas

>> ---
>>   arch/arm/boot/dts/microchip/sama5d4.dtsi | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/boot/dts/microchip/sama5d4.dtsi b/arch/arm/boot/dts/microchip/sama5d4.dtsi
>> index 41284e013f53..cbfc60fed37c 100644
>> --- a/arch/arm/boot/dts/microchip/sama5d4.dtsi
>> +++ b/arch/arm/boot/dts/microchip/sama5d4.dtsi
>> @@ -694,7 +694,7 @@ aes: crypto@fc044000 {
>>                                clock-names = "aes_clk";
>>                        };
>>
>> -                     tdes: crpyto@fc04c000 {
>> +                     tdes: crypto@fc04c000 {
>>                                compatible = "atmel,at91sam9g46-tdes";
>>                                reg = <0xfc04c000 0x100>;
>>                                interrupts = <14 IRQ_TYPE_LEVEL_HIGH 0>;


