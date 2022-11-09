Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD2AE6220AE
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 01:23:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229552AbiKIAXx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 19:23:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbiKIAXx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 19:23:53 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 058BAFD15
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 16:23:51 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id B606481F4E;
        Wed,  9 Nov 2022 01:23:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1667953429;
        bh=5J87DtmZUrTG+SNxfHXwyY4vVTSNw3AyI/a/7tnLa6M=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=zePfdsvOlomrJxKa3krhIYLBBXgidrDgJKk50f3MbgXqvrsdNK8FQh/oORFu68jZI
         WSx8MQl72s1lpGT9ZvWfq9uoJK/N4xh/zBkPb1+IQsTz/JmJmefyr9xyhdGJtEXrc4
         GknUjBl5G2KmZtdxc4FbQVrgpnkft/rcOX3YHWlwq+1Zp8zxyfvLYTK95OnQUBUyfS
         RV7f20iRjTgMHFbdkkPdz+NdjOq5pIq6ISDC4SIhg3eYsP8hBwoB3qExlW7tcqwPQG
         8QsgTGBcnABerTBmda632DqPzVAuII7PtA1bBuq39sDdMUlHI4Q20cT3mLvqYi0SuN
         NjB4G2fL4+dEA==
Message-ID: <fcc986d3-d701-f4e5-2b7e-91f24099bc9e@denx.de>
Date:   Wed, 9 Nov 2022 01:23:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v4 3/3] dt-bindings: imx6q-pcie: Handle more resets on
 legacy platforms
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>
References: <20221106222524.223188-1-marex@denx.de>
 <20221106222524.223188-3-marex@denx.de>
 <036f8d77-864e-76f5-613f-59b971e4a4ed@linaro.org>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <036f8d77-864e-76f5-613f-59b971e4a4ed@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/8/22 19:17, Krzysztof Kozlowski wrote:
> On 06/11/2022 23:25, Marek Vasut wrote:
>> The i.MX6 and i.MX7D does not use block controller to toggle PCIe
>> reset, hence the PCIe DT description contains three reset entries
>> on these older SoCs. Add this exception into the binding document.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
>> Cc: Fabio Estevam <festevam@gmail.com>
>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>> Cc: Lucas Stach <l.stach@pengutronix.de>
>> Cc: Richard Zhu <hongxing.zhu@nxp.com>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> Cc: Shawn Guo <shawnguo@kernel.org>
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: NXP Linux Team <linux-imx@nxp.com>
>> To: devicetree@vger.kernel.org
>> ---
>> V2: - Add mx8mq to 3-reset PCIe core variant
>>      - Handle the resets in allOf section
>> V3: - Reinstate reset: maxItems:3 and add minItems:2
>>      - Move reset-names back to main section
>>      - The validation no longer works and introduces errors like these:
>>        arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dahlia.dtb: pcie@33800000: reset-names:0: 'pciephy' was expected
>> V4: - Reinstate reset minItems and maxItems
>>      - Turn the first two reset-names items into enums to cover all
>>        the various name combinations, sort the rest in allOf section
>> ---
>>   .../bindings/pci/fsl,imx6q-pcie.yaml          | 34 +++++++++++++++++--
>>   1 file changed, 32 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
>> index b14c12a47cc1c..46fc29384ed34 100644
>> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
>> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
>> @@ -84,14 +84,16 @@ properties:
>>         - const: pcie_phy
>>   
>>     resets:
>> +    minItems: 2
>>       maxItems: 3
>>       description: Phandles to PCIe-related reset lines exposed by SRC
>>         IP block. Additional required by imx7d-pcie and imx8mq-pcie.
>>   
>>     reset-names:
>> +    minItems: 2
>>       items:
>> -      - const: pciephy
>> -      - const: apps
>> +      - enum: [ pciephy, apps ]
>> +      - enum: [ apps, turnoff ]
>>         - const: turnoff
> 
> I would expect to remove all these entries. I asked to keep reset-names
> with minIetms and maxItems. It works fine with your approach, but why
> having the items in multiple places?

I feel like maybe I'm getting a bit lost in the complexity. I did that ^ 
and it does seem to work, so V5 is coming.
