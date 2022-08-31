Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4D465A7E10
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 14:55:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231559AbiHaMzB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 08:55:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231237AbiHaMy7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 08:54:59 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1EDC765A
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 05:54:56 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id bq23so19837284lfb.7
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 05:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=V6XUFfKw/mcf35DuShi6/x/3ymScjwY/+2rsQ4Prf54=;
        b=g7zivDNFTvaNclQwX3j1LH1SHYCr4wqcC8y5fe/dBAYykEKVembblo+KqTFT5bQPlC
         eEPEZK1vu91aO0KFca1bDuq4yYzLv7K+rEtn9ClvNh7s9DZs/G3SAhGUCJFfqr6Lxv73
         QfuZnaBIEf1XvTxguE2FMO7/dUNR5FzrLLScrOP0pdSHypugDH82CbB2cQ0QDgMTSoUG
         +Kwbldg4eXjL735BMqh79DanVIUHLdE8+kIMwhqDq9PlOlt/Ji7YyKKN2k2hGy8WGNJ6
         cd2J/Gtyc/mu/YB7CPbEfIJjk0unZesnFscVmp6obD4+zHIczKfrabYPXMwAZnz+JVBf
         rH5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=V6XUFfKw/mcf35DuShi6/x/3ymScjwY/+2rsQ4Prf54=;
        b=Oh7QASxXbn1nj3eC+PFe576+BqPXeRFOOlm0NxF9RAg+IB54r2JHmw1I0cSAlc8DDh
         UXGJRbo+VmFlYEQjd+HG6qplu4w5GjtKBR/WKvmAzJbMXG22+S8JVqBxK6uTyePUEYY/
         iK01EF/a3CWfvNShgpmuIQQobxXXcs+BLMkf/d4G6AWi/BoKaCRQcz8BOpU+pZ92x+cA
         Hx0rEEdZzJe0yh4DC/pPXCjne61wvEZ/EUPsO7e6TWa8TBtBOpQ9wMSAJs61Nva8+p5m
         MXY/8Y6x5nweY8nwyFNSl0HJeEs3erIj/FK5MRudp2rqAZRsGG4UUq+LFW5Y4EbSxZBG
         Ir6A==
X-Gm-Message-State: ACgBeo35UyYXlgeIvJEtD6Le13UViFvLw6HE28+1ZWObYI1A13ZsP0He
        es6EIU8nOQMYOIaHfIwnvW9NBg==
X-Google-Smtp-Source: AA6agR5xyQHInsiAmVlULA23am/aIuyUWINMG0q1CPHSOdnoZ5UvmzllUhOyOstaX6BcJx52TIzcew==
X-Received: by 2002:a05:6512:3e0b:b0:494:735c:c7ec with SMTP id i11-20020a0565123e0b00b00494735cc7ecmr3803651lfv.373.1661950494688;
        Wed, 31 Aug 2022 05:54:54 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id s11-20020a056512214b00b0049461118819sm1482243lfr.77.2022.08.31.05.54.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Aug 2022 05:54:54 -0700 (PDT)
Message-ID: <7f8a4f33-4bde-384f-f541-f383c8e0b27d@linaro.org>
Date:   Wed, 31 Aug 2022 15:54:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH V2 1/8] dt-bindings: soc: imx: add binding for i.MX9
 syscon
Content-Language: en-US
To:     Peng Fan <peng.fan@oss.nxp.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        aisheng.dong@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Peng Fan <peng.fan@nxp.com>
References: <20220831074923.3085937-1-peng.fan@oss.nxp.com>
 <20220831074923.3085937-2-peng.fan@oss.nxp.com>
 <cb3870bc-451a-ff62-e671-f2045eecc781@linaro.org>
 <9c7854a2-bc9c-f4e6-3b37-f740e05768c5@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9c7854a2-bc9c-f4e6-3b37-f740e05768c5@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/08/2022 13:08, Peng Fan wrote:
> 
> 
> On 8/31/2022 5:15 PM, Krzysztof Kozlowski wrote:
>> On 31/08/2022 10:49, Peng Fan (OSS) wrote:
>>> From: Peng Fan <peng.fan@nxp.com>
>>>
>>> Add binding doc for i.MX9 blk_ctrl_ns_aonmix and blk_ctrl_wakeupmix
>>>
>>> Signed-off-by: Peng Fan <peng.fan@nxp.com>
>>> ---
>>>   .../bindings/soc/imx/fsl,imx9-syscon.yaml     | 37 +++++++++++++++++++
>>>   1 file changed, 37 insertions(+)
>>>   create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx9-syscon.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx9-syscon.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx9-syscon.yaml
>>> new file mode 100644
>>> index 000000000000..90c5e354f86c
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx9-syscon.yaml
>>> @@ -0,0 +1,37 @@
>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: "http://devicetree.org/schemas/soc/imx/fsl,imx9-syscon.yaml#"
>>> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
>>
>> One more - drop the quotes both lines above.
> 
> There will be dtbs_check error. I updated schema with:
> pip3 install git+https://github.com/devicetree-org/dt-schema.git@main
> 
> So it is ok the drop the two quotes above? Is there
> any new update in dt-schema that not landed in repo?

This is something new to me, can you paste the error?

Best regards,
Krzysztof
