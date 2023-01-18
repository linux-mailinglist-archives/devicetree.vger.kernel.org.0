Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 585DF671D33
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 14:13:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230118AbjARNM6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 08:12:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230314AbjARNMo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 08:12:44 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F3D3BCE1F
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 04:36:04 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id CE46385601;
        Wed, 18 Jan 2023 13:35:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1674045360;
        bh=pd+vSjxo9TnfDDImXAGg7eWihijbglr75wfjH39B6kY=;
        h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
        b=w+SdVrGCh+98whFqZz7IHR4L8SJwyBw+uwN6B7+a9YddK3Zu6NWNQn2dfpj5hjQDR
         ZBYgGXbm7Db2mvsInZytIrK71LMwXchzGnijRsIre5Sjm/7OJAOq/3p57ZvsaBqLPy
         AIVGQ2Bwwjr8d7khmZMi0HDuCMiqXjBG44EsD0Eo6HDSJJgXhPho2+cxr+bWIM8uB1
         fkVTBHlYR+FYeIE8DRqrpveATiL5MEoriLWsi9siwt9g/6r+CUJTwp2wsa/VtDxYIc
         6q38SsmeNeKHZ+cZEzrbfFq7tLERjvfQfENzxHgyzDhl4EcUa+5e5d58tuE/gQ06cU
         848sH6ZmstnfQ==
Message-ID: <13b341ba-92d1-0989-5d7c-a9df080ca56b@denx.de>
Date:   Wed, 18 Jan 2023 13:35:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
From:   Marek Vasut <marex@denx.de>
Subject: Re: [PATCH] MAINTAINERS: Add entry for DHCOM i.MX8M Plus SoMs and
 boards
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
References: <20230117223852.130143-1-marex@denx.de>
 <e3b73baf-b36b-17c0-f414-bbf2dd746411@linaro.org>
Content-Language: en-US
In-Reply-To: <e3b73baf-b36b-17c0-f414-bbf2dd746411@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 1/18/23 12:37, Krzysztof Kozlowski wrote:
> On 17/01/2023 23:38, Marek Vasut wrote:
>> Add maintainers entry for DH electronics DHCOM i.MX8M Plus
>> based SoMs and boards.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
>> Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
>> Cc: Fabio Estevam <festevam@gmail.com>
>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>> Cc: Marek Vasut <marex@denx.de>
>> Cc: NXP Linux Team <linux-imx@nxp.com>
>> Cc: Peng Fan <peng.fan@nxp.com>
>> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> Cc: Sascha Hauer <s.hauer@pengutronix.de>
>> Cc: Shawn Guo <shawnguo@kernel.org>
>> Cc: devicetree@vger.kernel.org
>> To: linux-arm-kernel@lists.infradead.org
>> ---
>>   MAINTAINERS | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index d0a36e45aa4be..e9be585d507e9 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -5968,6 +5968,12 @@ S:	Maintained
>>   F:	arch/arm/boot/dts/imx6*-dhcom-*
>>   F:	arch/arm/boot/dts/imx6*-dhcor-*
>>   
>> +DH ELECTRONICS IMX8M PLUS DHCOM BOARD SUPPORT
>> +M:	Marek Vasut <marex@denx.de>
>> +L:	kernel@dh-electronics.com
>> +S:	Maintained
>> +F:	arch/arm64/boot/dts/freescale/imx8mp*-dhcom-*
> 
> We do not keep maintainer per board. The idea was to use in-board
> emails, but the patch doing that was not accepted. But regardless -
> entries per board in maintainers is crazy amount of new entries. Way too
> many.

What would you propose I should do here to get a valid entry for this 
machine ?
