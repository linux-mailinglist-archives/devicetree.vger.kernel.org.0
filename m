Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 495125EE2FE
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 19:24:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233060AbiI1RYq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 13:24:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234446AbiI1RYd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 13:24:33 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33DAD85F9F
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 10:24:31 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id s6so21372558lfo.7
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 10:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=8Z5zh1T5tY7YbcNGtu85v/lt9i1GBE15ciJzbg3QGl8=;
        b=v4f2dXn3NwjLAimGU1+YuNgGvvrQ5uC+PnjyYA9ihA1GIL0J5DzhFxZmRqDO786mfy
         +M1HCSHhZOCQoCvAtg45+boFV0XyHXwjFukqZmdwUV8cVDicfR+9ei3MKE6dmWNzJ065
         56EoD/IfyGopGKY630Dwe1LbRgf4Kqea0aWaAkoSoFXciait6ScPI+MtTeV6ekrbTuSp
         NPHNEnrYfSJckeuMF7juN6dek2f6MCfw/x1LBff9HVHQFKir541zeLRPcZPMfy+TX97V
         f2r9z2rYwFqIdAHWGou7gK4Dohno3jFXjWrOpVXUKkX2wboYhB3P6MwFypUUmrCGP+tz
         jHhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=8Z5zh1T5tY7YbcNGtu85v/lt9i1GBE15ciJzbg3QGl8=;
        b=b2wr8kCxzzyTzTGN992yI6wMfUHDjijItxfmVhqFCbYt9RtFre+SsM3DBMfyvnXFLY
         g2FrLAsmshK2gG7I/WxJLS8RU0C7gD8qYkdlgs37+r2wzD1HDTo8gc+Nxj+j/MaY26zM
         RJl+n6MY3z6ZZUuTryBuHXsyjVvYf8n6pQiMtKviAWDblA1BSWUKj63vPJhOJjT3HwHk
         v3Y4yH2CisUYEufPYOFtDdjaaLd3xz9EEt4kCy0qFeUOxJtofr20nmQrJbE7zo1BobOG
         XLn6tnrKSJDbva5ge95PZENP/fgETPJ1yi1kvbeHLyd3LnbrEVR5E8FMc2lt0EeRmHwO
         9C3w==
X-Gm-Message-State: ACrzQf3y0O8FH0y0doJouApBqq51qqMKQF6moGwwMRt04uqmb27bMZmn
        aKOV51BE604VLbUoBtPhsSCLZw==
X-Google-Smtp-Source: AMsMyM6NmGP9e9VnZSGpZi7HlyxRbi+yzCkLknJ93JX2bggmMDRITamIb4AEiUZimqPT/oDpm02zkQ==
X-Received: by 2002:a19:6555:0:b0:49e:7d52:a4ca with SMTP id c21-20020a196555000000b0049e7d52a4camr14799398lfj.198.1664385869565;
        Wed, 28 Sep 2022 10:24:29 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id o1-20020ac24e81000000b0049478cc4eb9sm526728lfr.230.2022.09.28.10.24.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 10:24:28 -0700 (PDT)
Message-ID: <393eb833-0dcd-bf6c-49f3-ab8d60e3a8e5@linaro.org>
Date:   Wed, 28 Sep 2022 19:24:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2] dt-bindings: memory-controller: st,stm32: Split off MC
 properties
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
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
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <e787f5b1-88e6-375c-b9e7-22db346c27be@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/09/2022 19:01, Marek Vasut wrote:
> On 9/28/22 09:10, Krzysztof Kozlowski wrote:
> 
> Hi,
> 
> [...]
> 
>>> diff --git a/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml b/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml
>>> index a1f535cececcc..49243f447eb90 100644
>>> --- a/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml
>>> +++ b/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml
>>> @@ -49,143 +49,6 @@ patternProperties:
>>>     "^.*@[0-4],[a-f0-9]+$":
>>>       type: object
>>>   
>>> -    properties:
>>> -      reg:
>>> -        description: Bank number, base address and size of the device.
>>> -
>>
>> To be equivalent (and similar to SPI peripherals and controllers) this
>> should reference st,stm32-fmc2-ebi-props.yaml as well.
>>
>> After such reference, you can add here unevaluatedProperties:false
>> (could be same or new patch as it is not related to actual split).
> 
> I don't think I understand. I don't see any ref from the controller node 
> to its props in various SPI controllers (even if that would make sense):

Because they reference spi peripheral props...

> 
> next$ git grep qspi-nor-peripheral-props.yaml
> Documentation/devicetree/bindings/spi/cdns,qspi-nor-peripheral-props.yaml:$id: 
> http://devicetree.org/schemas/spi/cdns,qspi-nor-peripheral-props.yaml#
> Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml:  - 
> $ref: cdns,qspi-nor-peripheral-props.yaml#
> 
> No ref to cdns,qspi-nor-peripheral-props.yaml in 
> Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
> 
> next$ git grep tegra210-quad-peripheral-props
> Documentation/devicetree/bindings/spi/nvidia,tegra210-quad-peripheral-props.yaml:$id: 
> http://devicetree.org/schemas/spi/nvidia,tegra210-quad-peripheral-props.yaml#
> Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml:  - 
> $ref: nvidia,tegra210-quad-peripheral-props.yaml#
> 
> No ref to nvidia,tegra210-quad-peripheral-props.yaml in 
> Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml

All your examples do it - reference spi peripheral props.

As I said, your change is now not equivalent. If any other device
appears in st,stm32-fmc2-ebi, the schema won't be applied.

Let me put it that way: you must have there additionalProperties:false
or unevaluatedProperties:false. Once you add it, you start seeing errors
leading to missing ref.

Best regards,
Krzysztof

