Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B80A964B59C
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 14:04:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235285AbiLMNEv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 08:04:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235436AbiLMNEl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 08:04:41 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2ED1A1DDFE
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 05:04:39 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 04D9A85479;
        Tue, 13 Dec 2022 14:04:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1670936676;
        bh=C73mKI1zIFjtYnVGABJ6/knKNd7eFoagdFrnS7uMI9c=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=0Al6+7Lt/NaE3SThv8SKUteCaSCBTWB88yMCpLXzVLTy2BZe1Vp09RuO5MKDkKu8+
         9LYzwmFTL/7TFMALz1+zOGrjT0cr6CJ1x2jgmq1EU4q5QuNcDOMnw5NdEozRDyrVeD
         fCiqqS0evUfvz+4BMl4YgyE5FBGotjkN8MxxD7gJeMIxJF9PRlFBByjCAaf3cdZ7A6
         3OuXqTUDdy7iLIlmDjNCX1j6ozRV+Spu1ywhO9XQajN3f0NjsdJUxBfntZ2xiiT71K
         fiFnWzQqZ4GWpOwXVbEYnaRikyLoh3eWCp3zYJRArqvdomm4iZthVMfqxeZs0TnsAW
         R0FOhJ1BOvwDQ==
Message-ID: <4ea1a5c1-bedf-6c6d-3d0e-fad75fcfeff7@denx.de>
Date:   Tue, 13 Dec 2022 14:04:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3] dt-bindings: mxsfb: Document i.MX8M/i.MX6SX/i.MX6SL
 power-domains property
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liu Ying <victor.liu@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
References: <20221212055137.270638-1-marex@denx.de>
 <CAL_Jsq+Cz7Ea7k1cTYEoXcEyg+1JQCyQnZqhJG5kL-BE4Wj-rQ@mail.gmail.com>
 <94cc48cf-c6eb-b626-88ab-18e9dfcb5fb1@linaro.org>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <94cc48cf-c6eb-b626-88ab-18e9dfcb5fb1@linaro.org>
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

On 12/13/22 08:57, Krzysztof Kozlowski wrote:
> On 12/12/2022 13:54, Rob Herring wrote:
>> On Sun, Dec 11, 2022 at 11:51 PM Marek Vasut <marex@denx.de> wrote:
>>>
>>> The power-domains property is mandatory on i.MX8M Mini, Nano, Plus
>>> and i.MX6SX, i.MX6SL. Document the property and mark it as required
>>> on the aforementioned variants of the IP, present in those SoCs.
>>>
>>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>> ---
>>> Cc: Fabio Estevam <festevam@gmail.com>
>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>>> Cc: Liu Ying <victor.liu@nxp.com>
>>> Cc: Lucas Stach <l.stach@pengutronix.de>
>>> Cc: NXP Linux Team <linux-imx@nxp.com>
>>> Cc: Rob Herring <robh+dt@kernel.org>
>>> Cc: Shawn Guo <shawnguo@kernel.org>
>>> Cc: linux-arm-kernel@lists.infradead.org
>>> To: devicetree@vger.kernel.org
>>> ---
>>> V2: - Add AB from Krzysztof
>>>      - Add mx6sx power domain into the list
>>> V3: - Update commit message
>>>      - Add i.MX6SL
>>>      - Update example
>>> ---
>>>   .../devicetree/bindings/display/fsl,lcdif.yaml  | 17 +++++++++++++++++
>>>   1 file changed, 17 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
>>> index 876015a44a1e6..1f17be501749b 100644
>>> --- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
>>> +++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
>>> @@ -52,6 +52,9 @@ properties:
>>>     interrupts:
>>>       maxItems: 1
>>>
>>> +  power-domains:
>>> +    maxItems: 1
>>> +
>>
>> This conflicts with adding 'power-domains' for i.MX8MP in my tree.
> 
> Yes, this is a duplicated patch.
> 
> Please either check for already submitted works in lore (dfn:) or use
> linux-next as your base...

Understood, I only used linux-next 20221208 , which was the latest 
available at that point.

If I rebase on today's next-20221213 , I see the only duplicate part is

"
+  power-domains:
+    maxItems: 1
+
"

The rest of this patch is still valid.

> Unack.

I see
