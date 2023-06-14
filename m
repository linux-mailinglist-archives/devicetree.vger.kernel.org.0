Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87B5A7133F5
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 12:19:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232080AbjE0KTl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 06:19:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231634AbjE0KTk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 06:19:40 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52786F7
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 03:19:36 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 477D78468B;
        Sat, 27 May 2023 12:19:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1685182768;
        bh=dGW1py0tyMc0cDy0mch/O+/NN/vbH7LdGU/752yb6Qk=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=oNb9as1SZpYQG73S6XK+3CTxKxiazIq4vmpBJ7KN66U1hKvfqVX8/AdXh4WiJs6o4
         jBSQTxojJtaeamnRMG2VT0Wcu3t2V8/5hh0m0cbgrsL6tapS0+gJbGk/Q0uqMsQHdg
         fo01WCq0TcT3NsosOcA+iWBU8bFBNB/CTvmVzC0fZ0A72qtj8yhmXrt169XfXDlf+1
         rGvm5WvsFOQg36iCnv5a2ImfooGi+nvNKHyIy/PkL+/I03UNRxAtR08knVkZl/j6oM
         TXj+aSbEnsIb7OkZmVjx+BFnNk10rgQiFXqZbvl4KNqTAe4NSt6uS8AloyhY1xka4f
         COXy6+k0i78bw==
Message-ID: <a9815e8e-9d97-ab3b-40a5-851a9c70822a@denx.de>
Date:   Sat, 27 May 2023 12:19:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: dts: imx8mp: Add TC9595 bridge on DH electronics
 i.MX8M Plus DHCOM
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org
References: <20230515162424.67597-1-marex@denx.de>
 <20230527083515.GE528183@dragon>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20230527083515.GE528183@dragon>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,T_SCC_BODY_TEXT_LINE,T_SPF_TEMPERROR autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/27/23 10:35, Shawn Guo wrote:
> On Mon, May 15, 2023 at 06:24:24PM +0200, Marek Vasut wrote:
>> Add TC9595 DSI-to-DPI and DSI-to-(e)DP bridge to
>> DH electronics i.MX8M Plus DHCOM SoM . The bridge
>> is populated on the SoM, but disabled by default
>> unless used for display output.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
>> Cc: Conor Dooley <conor+dt@kernel.org>
>> Cc: Fabio Estevam <festevam@gmail.com>
>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>> Cc: NXP Linux Team <linux-imx@nxp.com>
>> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> Cc: Sascha Hauer <s.hauer@pengutronix.de>
>> Cc: Shawn Guo <shawnguo@kernel.org>
>> Cc: devicetree@vger.kernel.org
>> Cc: linux-arm-kernel@lists.infradead.org
>> ---
>>   .../boot/dts/freescale/imx8mp-dhcom-som.dtsi  | 55 +++++++++++++++++++
>>   1 file changed, 55 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
>> index 98a11c31d7d45..9c0cb75386e36 100644
>> --- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
>> +++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
>> @@ -240,6 +240,36 @@ &i2c3 {
>>   	sda-gpios = <&gpio5 19 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>>   	status = "okay";
>>   
>> +	tc_bridge: bridge@f {
>> +		compatible = "toshiba,tc9595", "toshiba,tc358767";
> 
> Is "toshiba,tc9595" documented?

Yes, the patch is coming in via drm-misc , see:

https://cgit.freedesktop.org/drm/drm-misc/commit/?id=adbcfcc92b5aaffdee4c5e62c077919014c483d9
