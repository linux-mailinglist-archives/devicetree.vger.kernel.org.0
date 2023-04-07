Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86DDB6DAA8E
	for <lists+devicetree@lfdr.de>; Fri,  7 Apr 2023 11:03:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240322AbjDGJDt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Apr 2023 05:03:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240454AbjDGJDq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Apr 2023 05:03:46 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21CD993C4
        for <devicetree@vger.kernel.org>; Fri,  7 Apr 2023 02:03:45 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id l17so7074287ejp.8
        for <devicetree@vger.kernel.org>; Fri, 07 Apr 2023 02:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680858223;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Uxz6HscDcYi/9jfdYB/tcZnaka5Wo/7dEpZExRMLZYw=;
        b=j/o839dsly3x4zv+krzsPnIt91TM4ORYR2+1VCFgpwLObQ3AfZDdAG3VO834Pl+mUe
         wHmOtQ2fDt7ndynZpKqtlp/KUoNk3tul+qFfZUILuRL7tdFPor/H6OsOVNtyxYMuqXyq
         8vNeK5LbgQfszbZhHANmlyU5QCHEln75Gq1JPAaeNY84jSdJX/qA/6bPpokQuKZg5Dyz
         hz1czKmkCI4BpOeIQebCogfTAGvtbo7Cv3TUXPCBXyOAiJuibFH24v4F1EtFdDPkFPUo
         uLahmED8DcKjUnXZp5QJRLw5GsHGa2zIJmEsrUFy+MsAoqo78atHrpaF8Xdu3wYnlHwR
         Ph1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680858223;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Uxz6HscDcYi/9jfdYB/tcZnaka5Wo/7dEpZExRMLZYw=;
        b=YLiFyTH/cJkiTzOlg+Bi2lotpDFfbAmpy32+AGALlD1Xo0s6tmleRvzw05KY0ikjNB
         gNxNBvG3MK6P8gPkv51M7ZryO9oh5MDdNBQNkzpUIlYD3zVPvK7e7nW/YtyGj2sAEp7Y
         g9GXOWaAy2rlZPEkEAF6pGhx1KCmaZBz6Sb7000yCBvI0eP6cgRY/7Z0eiCnhKCCNH8c
         dgpYEDw0URcfGP2YT5BUzFAyNBWAf63mmb+YugTDjbcCokvhkjDvmAq+AoVmaR3wyxwN
         Kv/xIB8hESWw6VGcKzdQ/vmCwd9uqssees6ArRHDyrs3wnRTdvXNhe1VmcnVpE+dob1H
         4CJw==
X-Gm-Message-State: AAQBX9cUGeFEoYP66Zug0vxvXBGWMbFLaqm7RJVMOUMTU2vSprqgW7dQ
        5EsDfLecCnl7Cj+s3G3EOWccqw==
X-Google-Smtp-Source: AKy350afZUTOUJGlpy2Cnj8IXoA67zyxf+p94mD+mt1nSCfj84BJOrog9Amf9YpvvFEo1RpTzHeDdg==
X-Received: by 2002:a17:907:3201:b0:8b1:2eef:154c with SMTP id xg1-20020a170907320100b008b12eef154cmr9538212ejb.0.1680858223497;
        Fri, 07 Apr 2023 02:03:43 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:14a3:366:3172:3c37? ([2a02:810d:15c0:828:14a3:366:3172:3c37])
        by smtp.gmail.com with ESMTPSA id wy6-20020a170906fe0600b009231714b3d4sm1827628ejb.151.2023.04.07.02.03.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 02:03:43 -0700 (PDT)
Message-ID: <95b4afd4-c93e-628b-fd22-6fcbc1d1234e@linaro.org>
Date:   Fri, 7 Apr 2023 11:03:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: phy: imx8mq-usb: add phy tuning
 properties
Content-Language: en-US
To:     Johannes Zink <j.zink@pengutronix.de>, vkoul@kernel.org,
        kishon@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        jun.li@nxp.com, haibo.chen@nxp.com, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230405112118.1256151-1-j.zink@pengutronix.de>
 <20230405112118.1256151-2-j.zink@pengutronix.de>
 <5398cbe0-c681-5dd7-0b3e-3a586cc4915f@linaro.org>
 <3f7257ee36dc44f162a87281c8279fd5bad91dea.camel@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <3f7257ee36dc44f162a87281c8279fd5bad91dea.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/04/2023 14:14, Johannes Zink wrote:
> Hi Krysztof,
> 
> thanks for your review, please find my questions below.
> 
> On Wed, 2023-04-05 at 13:51 +0200, Krzysztof Kozlowski wrote:
>> [snip]
>>>        A phandle to the regulator for USB VBUS.
>>>  
>>> +  fsl,phy-tx-vref-tune:
>>> +    description:
>>> +      HS DC Voltage level adjustment
>>
>> "Level" in what units?
>>
> 
> The datasheet just shows percent, ranging from -6 to +24%, in 2%
> increments. What unit would you suggest?

percent
https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/property-units.yaml

> 
>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>> +    enum: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
>>> 16]
>>> +
>>> +  fsl,phy-tx-rise-tune:
>>> +    description:
>>> +      HS Transmitter Rise/Fall Time Adjustment
>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>> +    enum: [0, 1, 2, 3]
>>> +
>>> +  fsl,phy-tx-preemp-amp-tune:
>>> +    description:
>>> +      HS Transmitter Pre-Emphasis Current Control
>>
>> If this is current then use standard unit suffixes.
> 
> According to the datasheet this is in "unit amonts" of 600uA, basically
> 0x600uA, 1x600uA etc. Should I just suffix it with uA then?

Yes
https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/property-units.yaml

The register values can work sometimes fine but also do not scale at
all. For any other variant all the meanings will differ. Any other IMX8
phy will need new bindings and new description/values for your
register-like-fields.

Best regards,
Krzysztof

