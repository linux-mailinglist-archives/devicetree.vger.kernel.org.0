Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 05FD5A9C82
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2019 10:02:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731375AbfIEICy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Sep 2019 04:02:54 -0400
Received: from 16.mo7.mail-out.ovh.net ([46.105.72.216]:41280 "EHLO
        16.mo7.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730485AbfIEICy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Sep 2019 04:02:54 -0400
X-Greylist: delayed 2400 seconds by postgrey-1.27 at vger.kernel.org; Thu, 05 Sep 2019 04:02:53 EDT
Received: from player738.ha.ovh.net (unknown [10.108.42.75])
        by mo7.mail-out.ovh.net (Postfix) with ESMTP id 50804130FA7
        for <devicetree@vger.kernel.org>; Thu,  5 Sep 2019 08:45:13 +0200 (CEST)
Received: from kaod.org (lfbn-1-2240-157.w90-76.abo.wanadoo.fr [90.76.60.157])
        (Authenticated sender: clg@kaod.org)
        by player738.ha.ovh.net (Postfix) with ESMTPSA id AF0039946597;
        Thu,  5 Sep 2019 06:45:07 +0000 (UTC)
Subject: Re: [PATCH] ARM: dts: aspeed-g4: Add all flash chips
To:     Andrew Jeffery <andrew@aj.id.au>, Joel Stanley <joel@jms.id.au>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
References: <20190905000221.31445-1-joel@jms.id.au>
 <d9805fa2-db79-457b-a166-7c84e1608128@www.fastmail.com>
From:   =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
Message-ID: <6348d0f1-6e2e-cae6-7f76-996825de0527@kaod.org>
Date:   Thu, 5 Sep 2019 08:45:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <d9805fa2-db79-457b-a166-7c84e1608128@www.fastmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Ovh-Tracer-Id: 12608108633323375469
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrudejiedguddtjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/09/2019 02:33, Andrew Jeffery wrote:
> 
> 
> On Thu, 5 Sep 2019, at 09:32, Joel Stanley wrote:
>> The FMC supports five chip selects, so describe the five possible flash
>> chips.
>>
>> Signed-off-by: Joel Stanley <joel@jms.id.au>
>> ---
>>  arch/arm/boot/dts/aspeed-g4.dtsi | 20 ++++++++++++++++++++
>>  1 file changed, 20 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
>> index e465cda40fe7..dffb595d30e4 100644
>> --- a/arch/arm/boot/dts/aspeed-g4.dtsi
>> +++ b/arch/arm/boot/dts/aspeed-g4.dtsi
>> @@ -67,6 +67,26 @@
>>  				compatible = "jedec,spi-nor";
>>  				status = "disabled";
>>  			};
>> +			flash@1 {
>> +				reg = < 1 >;
>> +				compatible = "jedec,spi-nor";
>> +				status = "disabled";
>> +			};
>> +			flash@2 {
>> +				reg = < 2 >;
>> +				compatible = "jedec,spi-nor";
>> +				status = "disabled";
>> +			};
>> +			flash@3 {
>> +				reg = < 3 >;
>> +				compatible = "jedec,spi-nor";
>> +				status = "disabled";
>> +			};
>> +			flash@4 {
>> +				reg = < 4 >;
>> +				compatible = "jedec,spi-nor";
>> +				status = "disabled";
>> +			};
> 
> The FMC supports parallel NOR and NAND interfaces too, but so far no-one has
> cared for these options, so if they ever do we'll fix it then.

New Aspeed SoCs only have SPI support. So I don't think the other interfaces
were ever used.

C. 
 
> 
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
> 

