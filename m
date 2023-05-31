Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08598718B65
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 22:44:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229498AbjEaUoX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 16:44:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbjEaUoX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 16:44:23 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB125123
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 13:44:21 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id BD6F18620B;
        Wed, 31 May 2023 22:44:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1685565860;
        bh=X6b544dY3T8ZQCIcvNDco0sNI/wQBUXSh2MxSFBg3fI=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=TWsrgogICKEZAczMn6RM2PdQu0bGRn4scjrW0YBT/dqyv8FPLmTjjj3zsVq+tt0ZK
         nuTyv5LTVyF2X2LXEvfeLpX+lSJrIADIaytOFHCH8/X9wCCv0CXr4uxuXFp/jhcrDP
         0ZybMsUQnS1iO6L5OJO5YL+vAoHlQzqVsUqFsr3HVMnXYU2EbHtJNBJyk2ADW9H0a3
         F+4c7mv9+L6dITo9xWZT4lNlBdVgmNSyHH9GzXUGM0vl5QJTrNWOG/BARhQcXbt0gj
         QGlDelYSzUxIXX0zxpqGxeEu+fdm54wVrNFOM6ojXAe/JX0oLJA+0Imn7Pv64lAeO0
         +7xsgHipDA5pQ==
Message-ID: <e9d7b2de-ef57-80fa-f92b-6f66d413114a@denx.de>
Date:   Wed, 31 May 2023 22:44:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 1/3] dt-bindings: nvmem: syscon: Add syscon backed
 nvmem bindings
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        devicetree@vger.kernel.org, kernel@dh-electronics.com,
        linux-stm32@st-md-mailman.stormreply.com
References: <20230517152513.27922-1-marex@denx.de>
 <3951bf42-bf77-20a5-a343-46127b875dd5@linaro.org>
 <2aee9fc7-e0a8-b5ad-7362-8461bac618da@denx.de>
 <a954db86-c5b7-0c07-8881-0ceb39ac7337@linaro.org>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <a954db86-c5b7-0c07-8881-0ceb39ac7337@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/31/23 21:37, Krzysztof Kozlowski wrote:
> On 24/05/2023 05:30, Marek Vasut wrote:
>> On 5/18/23 16:26, Krzysztof Kozlowski wrote:
>>> On 17/05/2023 17:25, Marek Vasut wrote:
>>>> Add trivial bindings for driver which permits exposing syscon backed
>>>> register to userspace. This is useful e.g. to expose U-Boot boot
>>>> counter on various platforms where the boot counter is stored in
>>>> random volatile register, like STM32MP15xx TAMP_BKPxR register.
>>>>
>>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>>> ---
>>>> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
>>>> Cc: Conor Dooley <conor+dt@kernel.org>
>>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>>>> Cc: Marek Vasut <marex@denx.de>
>>>> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
>>>> Cc: Rob Herring <robh+dt@kernel.org>
>>>> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>>> Cc: devicetree@vger.kernel.org
>>>> Cc: kernel@dh-electronics.com
>>>> Cc: linux-arm-kernel@lists.infradead.org
>>>> Cc: linux-stm32@st-md-mailman.stormreply.com
>>>> ---
>>>> V2: Use generic syscon supernode
>>>> ---
>>>>    .../bindings/nvmem/nvmem-syscon.yaml          | 39 +++++++++++++++++++
>>>>    1 file changed, 39 insertions(+)
>>>>    create mode 100644 Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml b/Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml
>>>> new file mode 100644
>>>> index 0000000000000..7c1173a1a6218
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml
>>>> @@ -0,0 +1,39 @@
>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>>> +%YAML 1.2
>>>> +---
>>>> +$id: http://devicetree.org/schemas/nvmem/nvmem-syscon.yaml#
>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>> +
>>>> +title: Generic syscon backed nvmem
>>>> +
>>>> +maintainers:
>>>> +  - Marek Vasut <marex@denx.de>
>>>> +
>>>> +allOf:
>>>> +  - $ref: "nvmem.yaml#"
>>>
>>> Usual comment: drop quotes. We removed them everywhere, so you based
>>> your work on some old tree.
>>>
>>>> +
>>>> +properties:
>>>> +  compatible:
>>>> +    enum:
>>>> +      - nvmem-syscon
>>>> +
>>>> +  reg:
>>>> +    maxItems: 1
>>>
>>> Rob's questions are not solved.
>>
>> Can you reiterate this one ? I likely missed it.
> 
> You did not solve the case of more than one register. This isn't an odd
> case.

So why not just extend the bindings to support

reg = <0x14c 0x4>, <0x180 0x10>, ... ;

this kind of stuff ?

>>> The nvmem.yaml schema expects here to
>>> allow children. This should not be created per-register, but per entire
>>> block of registers.
>>
>> This thing works the other way around, I have a syscon register block
>> already, and I want to expose subset of it to userspace as read/write
>> accessible file to expose bootcounter available in that register (so I
>> can read it and reset it from user application).
> 
> And this makes it too limited. I would expect one device exposing
> multiple blocks or registers, just like all nvmem providers are doing.

What would be the real-world use case of that ?
