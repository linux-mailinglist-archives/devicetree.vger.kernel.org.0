Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 157D950727
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2019 12:06:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726551AbfFXKEy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jun 2019 06:04:54 -0400
Received: from 9.mo177.mail-out.ovh.net ([46.105.72.238]:41864 "EHLO
        9.mo177.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728718AbfFXKEv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jun 2019 06:04:51 -0400
X-Greylist: delayed 4200 seconds by postgrey-1.27 at vger.kernel.org; Mon, 24 Jun 2019 06:04:50 EDT
Received: from player690.ha.ovh.net (unknown [10.109.160.251])
        by mo177.mail-out.ovh.net (Postfix) with ESMTP id 1C662FF65C
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2019 09:36:45 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr [90.126.248.179])
        (Authenticated sender: sebastien.szymanski@armadeus.com)
        by player690.ha.ovh.net (Postfix) with ESMTPSA id 5A23C70AE81F;
        Mon, 24 Jun 2019 07:36:34 +0000 (UTC)
Subject: Re: [PATCH 1/1] ARM: dts: imx6ul: fix PWM[1-4] interrupts
To:     Shawn Guo <shawnguo@kernel.org>,
        =?UTF-8?Q?Lothar_Wa=c3=9fmann?= <LW@KARO-electronics.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>
References: <20190618155834.15545-1-sebastien.szymanski@armadeus.com>
 <20190624004703.GF3800@dragon>
From:   =?UTF-8?Q?S=c3=a9bastien_Szymanski?= 
        <sebastien.szymanski@armadeus.com>
Openpgp: preference=signencrypt
Message-ID: <670f98af-2c55-de1f-d36c-37d1f33086c7@armadeus.com>
Date:   Mon, 24 Jun 2019 09:36:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190624004703.GF3800@dragon>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 9046605754512921669
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddruddugdduvdegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

On 6/24/19 2:47 AM, Shawn Guo wrote:
> +Lothar
> 
> On Tue, Jun 18, 2019 at 05:58:34PM +0200, Sébastien Szymanski wrote:
>> According to the i.MX6UL/L RM, table 3.1 "ARM Cortex A7 domain interrupt
>> summary", the interrupts for the PWM[1-4] go from 83 to 86.
>>
>> Fixes: b9901fe84f02 ("ARM: dts: imx6ul: add pwm[1-4] nodes")
>> Signed-off-by: Sébastien Szymanski <sebastien.szymanski@armadeus.com>
> 
> Just curious - did you spot the error by testing PWM or merely by
> looking at the code and document?

I spotted the error when trying to play sound with PWM [1].
The PWM driver (drivers/pwm/pwm-imx27.c) don't use interrupt that's
probably why nobody notice this error.

[1] https://github.com/sasamy/imx-snd-pwm

Regards,

> 
> Shawn
> 
>> ---
>>  arch/arm/boot/dts/imx6ul.dtsi | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
>> index bbf010c73336..a7f6d1d58e20 100644
>> --- a/arch/arm/boot/dts/imx6ul.dtsi
>> +++ b/arch/arm/boot/dts/imx6ul.dtsi
>> @@ -358,7 +358,7 @@
>>  			pwm1: pwm@2080000 {
>>  				compatible = "fsl,imx6ul-pwm", "fsl,imx27-pwm";
>>  				reg = <0x02080000 0x4000>;
>> -				interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
>> +				interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
>>  				clocks = <&clks IMX6UL_CLK_PWM1>,
>>  					 <&clks IMX6UL_CLK_PWM1>;
>>  				clock-names = "ipg", "per";
>> @@ -369,7 +369,7 @@
>>  			pwm2: pwm@2084000 {
>>  				compatible = "fsl,imx6ul-pwm", "fsl,imx27-pwm";
>>  				reg = <0x02084000 0x4000>;
>> -				interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
>> +				interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
>>  				clocks = <&clks IMX6UL_CLK_PWM2>,
>>  					 <&clks IMX6UL_CLK_PWM2>;
>>  				clock-names = "ipg", "per";
>> @@ -380,7 +380,7 @@
>>  			pwm3: pwm@2088000 {
>>  				compatible = "fsl,imx6ul-pwm", "fsl,imx27-pwm";
>>  				reg = <0x02088000 0x4000>;
>> -				interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
>> +				interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
>>  				clocks = <&clks IMX6UL_CLK_PWM3>,
>>  					 <&clks IMX6UL_CLK_PWM3>;
>>  				clock-names = "ipg", "per";
>> @@ -391,7 +391,7 @@
>>  			pwm4: pwm@208c000 {
>>  				compatible = "fsl,imx6ul-pwm", "fsl,imx27-pwm";
>>  				reg = <0x0208c000 0x4000>;
>> -				interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
>> +				interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
>>  				clocks = <&clks IMX6UL_CLK_PWM4>,
>>  					 <&clks IMX6UL_CLK_PWM4>;
>>  				clock-names = "ipg", "per";
>> -- 
>> 2.21.0
>>


-- 
Sébastien Szymanski
Software engineer, Armadeus Systems
Tel: +33 (0)9 72 29 41 44
Fax: +33 (0)9 72 28 79 26
