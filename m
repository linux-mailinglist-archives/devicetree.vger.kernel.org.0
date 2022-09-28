Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44DC45EE366
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 19:45:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233534AbiI1RpG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 13:45:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234653AbiI1RpE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 13:45:04 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70E3B48EBC
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 10:45:01 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 0FFAF84B67;
        Wed, 28 Sep 2022 19:44:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1664387099;
        bh=gaYUOXQ4C9X/kZ+ny8vPFL/2ozYC/B1B4psO3k3Bm2E=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=ApiLBC8Bw+Hw9Kzi9Tetq5/m5q+LcKwerinps3C7ZutrZnqqhFtEDeL9zJWaZbra0
         dTwgC4d+8bGlf8wDc7C5iZqa/+GDdFfMVNkpStogfjSEISpCn4uGQek0pN6RwqEmbr
         uD5JuqkeOkPHACQDWxq/71ygC9zWcAIGmyho4JTgQ5GLVDeVwm3zUGcisVit3Qxlsk
         FO4zBxoD67+ZLgoOg1dQmMlYmT6qVgwf+C3xxNx4gxdrMFf9p+HfkBX3+hKye0MlQ/
         LuAGGRyEi3Oe8TmbHzNyZCKYuCijSWc/QlMpwF53/UPUrrgejHAMdSSGYn5Cr5mz+s
         yLpARcy/xjfsQ==
Message-ID: <7adc3299-5dd6-fd43-fd5e-c22d150a328a@denx.de>
Date:   Wed, 28 Sep 2022 19:44:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2] dt-bindings: memory-controller: st,stm32: Split off MC
 properties
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh@kernel.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Christophe Kerello <christophe.kerello@foss.st.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
References: <20220926225536.548139-1-marex@denx.de>
 <846bc515-bdda-6022-0611-daaa9a632e64@linaro.org>
 <e787f5b1-88e6-375c-b9e7-22db346c27be@denx.de>
 <393eb833-0dcd-bf6c-49f3-ab8d60e3a8e5@linaro.org>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <393eb833-0dcd-bf6c-49f3-ab8d60e3a8e5@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-6.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/28/22 19:24, Krzysztof Kozlowski wrote:
> On 28/09/2022 19:01, Marek Vasut wrote:
>> On 9/28/22 09:10, Krzysztof Kozlowski wrote:
>>
>> Hi,
>>
>> [...]
>>
>>>> diff --git a/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml b/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml
>>>> index a1f535cececcc..49243f447eb90 100644
>>>> --- a/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml
>>>> +++ b/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml
>>>> @@ -49,143 +49,6 @@ patternProperties:
>>>>      "^.*@[0-4],[a-f0-9]+$":
>>>>        type: object
>>>>    
>>>> -    properties:
>>>> -      reg:
>>>> -        description: Bank number, base address and size of the device.
>>>> -
>>>
>>> To be equivalent (and similar to SPI peripherals and controllers) this
>>> should reference st,stm32-fmc2-ebi-props.yaml as well.
>>>
>>> After such reference, you can add here unevaluatedProperties:false
>>> (could be same or new patch as it is not related to actual split).
>>
>> I don't think I understand. I don't see any ref from the controller node
>> to its props in various SPI controllers (even if that would make sense):
> 
> Because they reference spi peripheral props...
> 
>>
>> next$ git grep qspi-nor-peripheral-props.yaml
>> Documentation/devicetree/bindings/spi/cdns,qspi-nor-peripheral-props.yaml:$id:
>> http://devicetree.org/schemas/spi/cdns,qspi-nor-peripheral-props.yaml#
>> Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml:  -
>> $ref: cdns,qspi-nor-peripheral-props.yaml#
>>
>> No ref to cdns,qspi-nor-peripheral-props.yaml in
>> Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
>>
>> next$ git grep tegra210-quad-peripheral-props
>> Documentation/devicetree/bindings/spi/nvidia,tegra210-quad-peripheral-props.yaml:$id:
>> http://devicetree.org/schemas/spi/nvidia,tegra210-quad-peripheral-props.yaml#
>> Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml:  -
>> $ref: nvidia,tegra210-quad-peripheral-props.yaml#
>>
>> No ref to nvidia,tegra210-quad-peripheral-props.yaml in
>> Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
> 
> All your examples do it - reference spi peripheral props.
> 
> As I said, your change is now not equivalent. If any other device
> appears in st,stm32-fmc2-ebi, the schema won't be applied.
> 
> Let me put it that way: you must have there additionalProperties:false
> or unevaluatedProperties:false. Once you add it, you start seeing errors
> leading to missing ref.

Is what you are trying to convey that 
Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml does ref 
spi-controller.yaml# and that one does patternProperties: ref: 
spi-peripheral-props.yaml ?

So the fix for V3 should be the following ?

diff --git 
a/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml 
b/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml
index 49243f447eb90..0448bd07f4310 100644
--- 
a/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml
+++ 
b/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml
@@ -48,6 +48,7 @@ properties:
  patternProperties:
    "^.*@[0-4],[a-f0-9]+$":
      type: object
+    $ref: st,stm32-fmc2-ebi-props.yaml

  required:
    - "#address-cells"
