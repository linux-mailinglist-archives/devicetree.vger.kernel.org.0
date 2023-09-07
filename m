Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81DC9797BA9
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 20:26:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233900AbjIGS0O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 14:26:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229702AbjIGS0O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 14:26:14 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49EEDBC
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 11:26:03 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 44F6B86940;
        Thu,  7 Sep 2023 20:26:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1694111161;
        bh=1sZCMdXaxm4dBNIGqpOt7CdLCUyjkrgjWTCfMYNWUmM=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=HeoD4q+CR/UMlrP9If1yLm6OPTjFGW/wvlZqQb3SvW8dKLgUTbT1cg4XGEqbU1G1F
         LODY+ub7m4wo/WkpaJAIpz2tKcjqXKzmpE7Rw+fcEBRrCXCn4kh7kXwec7BPWB94N9
         HDsZS07FRRLDJqGmv+9BZiuGKXMZrL38cn7F4pmO7S2VG6k4L4ikyQoYEGWNdfSp6p
         X9XFQWJxxpRHEibK/WrMIhkHRvg5SjNqoHoDBezH9YXs52tFT0GtdAG8rcVq8dILsL
         fYVwz5HljaSUIuUwAJOoXBDH02dYi+emKI36moCpZvwQh885O0aT3FdBzROqqYKY/2
         xSJa8gJwYs1SQ==
Message-ID: <f534c9c2-cd05-9c7d-8921-81ee0bda3013@denx.de>
Date:   Thu, 7 Sep 2023 20:25:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 1/4] arm64: dts: imx8mp: Describe VDD_ARM run and standby
 voltage for DH i.MX8M Plus DHCOM SoM
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Conor Dooley <conor+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Magnus Damm <magnus.damm@gmail.com>,
        Peng Fan <peng.fan@nxp.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>
References: <20230831182020.154863-1-marex@denx.de>
 <20230907154545.m3ofqncpwt6yitqu@pengutronix.de>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20230907154545.m3ofqncpwt6yitqu@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/7/23 17:45, Marco Felsch wrote:
> Hi Marek,

Hi,

> On 23-08-31, Marek Vasut wrote:
>> Describe VDD_ARM (BUCK2) run and standby voltage in DT.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
>> Cc: Conor Dooley <conor+dt@kernel.org>
>> Cc: Fabio Estevam <festevam@gmail.com>
>> Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
>> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>> Cc: Magnus Damm <magnus.damm@gmail.com>
>> Cc: Marek Vasut <marex@denx.de>
>> Cc: NXP Linux Team <linux-imx@nxp.com>
>> Cc: Peng Fan <peng.fan@nxp.com>
>> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> Cc: Sascha Hauer <s.hauer@pengutronix.de>
>> Cc: Shawn Guo <shawnguo@kernel.org>
>> Cc: devicetree@vger.kernel.org
>> Cc: linux-arm-kernel@lists.infradead.org
>> ---
>>   arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
>> index cb1953d14aa90..1644b56c3953d 100644
>> --- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
>> +++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
>> @@ -293,6 +293,8 @@ buck1: BUCK1 {	/* VDD_SOC (dual-phase with BUCK3) */
>>   			};
>>   
>>   			buck2: BUCK2 {	/* VDD_ARM */
>> +				nxp,dvs-run-voltage = <950000>;
> 
> Why do we need to set the "nxp,dvs-run-voltage"? If I read the driver
> correctly, then nxp,dvs-run-voltage and regulator-min/max-microvolt are
> touching the same register.

My understanding is that the nxp,dvs-run-voltage selects the default 
regulator voltage which is configured early on once the regulator is 
detected in DT (see of_parse_cb callback in the PCA9450 regulator 
driver) and may be higher than regulator-min-microvolt, while later on 
DVFS can adjust the regulator in range of regulator-min-microvolt to 
regulator-max-microvolt .

>> +				nxp,dvs-standby-voltage = <850000>;
>>   				regulator-min-microvolt = <850000>;
>>   				regulator-max-microvolt = <1000000>;

[...]
