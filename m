Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19F1D6DFBF4
	for <lists+devicetree@lfdr.de>; Wed, 12 Apr 2023 18:56:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230013AbjDLQ4X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Apr 2023 12:56:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229992AbjDLQ4V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Apr 2023 12:56:21 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0A559028
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 09:55:52 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id qb20so30085953ejc.6
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 09:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681318533;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mL1Dmw1t8cH96ZKM0Y0rJ8RmORlNySoRf2nYIAB9Jzo=;
        b=d28p+fne4GmzRaXHcfIxScgVDg2XtPaJGzWNaeaYsnNrQP/mFYMAIAV3JVbIhWDMbu
         Fa+/y0rOjrQPkLzfSI6ggc0jbtP9nYDqnOK077i5kTPh8kOdV3bpjER9aYcC8vx/sHXf
         HdT2ny8s6RCRLIUyjNv7y+Ibx+zZyzkG8t5szrFkZzvxweU3bHSpAcmn+pNldAXxUH8d
         p1ZhmAYs7zvjgQiOszonoIM3nAVZ/FLwjfVIHk9otAEY6sN0RaSz9SJ3uqwLgFyz5u8A
         wEZkcdzxtdnDXXTnp4vMPvK7zFjOCAV86N8J/5DyF+XoPB3yX3zTK3yYn/4clac6Z2gG
         bFMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681318533;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mL1Dmw1t8cH96ZKM0Y0rJ8RmORlNySoRf2nYIAB9Jzo=;
        b=LDZwzqf0w1aTtt6IJFhf0QZb4pr/YJSBs1SHcllXWqjnGWdBkOgfqSwPmzVBDvhmfg
         /7dzQ19ez0/BMEqHaBP/8fJtZB/MgwV5fe3Nh7H175RSAzWrgBRZy27GepZPfZX93jkW
         O+h6N5HMq/gmi5RgsMZtQZLSKCUIRlrqwRwRtVypGFo0liRDPDtzIG6vpUJDavQ4b8wN
         K7rok6aBWT2O9YWXEccFmaJctz8v7al7z59dbAGOeqepFeDYTuRQrEbSAh0/a5yZPYC+
         xnFhaBxle6KZ+nurWPhgytkMrhFM3SUHrY7usPt0zWHVStnME0vj8oaIjaYsCfijfcib
         VmOg==
X-Gm-Message-State: AAQBX9fZ16QwDhGm1Bvj0aIIyhhCLAeg5qs8VsaB3ZeCIbRchAJrwFyZ
        KuEgx4plIIeTPVLotpR5XbrIJw==
X-Google-Smtp-Source: AKy350Z1Gn9hA8XdncuSMlmsY8g62jmSran04JCDS9kQw1y/M/VsEQjsDf8807x9ocMfcFbFGA7tSQ==
X-Received: by 2002:a17:906:538d:b0:94a:582d:169f with SMTP id g13-20020a170906538d00b0094a582d169fmr12936153ejo.5.1681318532872;
        Wed, 12 Apr 2023 09:55:32 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:938a:b3db:7c59:795e? ([2a02:810d:15c0:828:938a:b3db:7c59:795e])
        by smtp.gmail.com with ESMTPSA id f9-20020aa7d849000000b00505034c27b9sm822863eds.28.2023.04.12.09.55.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 09:55:32 -0700 (PDT)
Message-ID: <f6a4fb28-d635-4d99-44bb-d929cb41eef2@linaro.org>
Date:   Wed, 12 Apr 2023 18:55:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v4 1/3] dt-bindings: phy: Add starfive,jh7110-dphy-rx
Content-Language: en-US
To:     Changhuang Liang <changhuang.liang@starfivetech.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Conor Dooley <conor@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Jack Zhu <jack.zhu@starfivetech.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20230412084540.295411-1-changhuang.liang@starfivetech.com>
 <20230412084540.295411-2-changhuang.liang@starfivetech.com>
 <8dd0dc63-e0df-8764-f756-da032d9d671c@linaro.org>
 <eb47b7c7-bdbb-92d9-ba39-604ce487f297@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <eb47b7c7-bdbb-92d9-ba39-604ce487f297@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/04/2023 14:42, Changhuang Liang wrote:
> 
> 
> On 2023/4/12 19:34, Krzysztof Kozlowski wrote:
>> On 12/04/2023 10:45, Changhuang Liang wrote:
>>> StarFive SoCs like the jh7110 use a MIPI D-PHY RX controller based on
>>> a M31 IP. Add a binding for it.
>>
>> So this is D-PHY? Or the other patch is D-PHY? The naming is quite
>> confusing and your commit msgs are not helping here.
>>
>> Also the power domain phandle here adds to the confusion.
>>
> 
> Yes, this is DPHY, DPHY has rx and tx, and last version we are discussing that 
> use power domain replace syscon:
> https://lore.kernel.org/all/5dc4ddc2-9d15-ebb2-38bc-8a544ca67e0d@starfivetech.com/

The other patch - DPHY PMU - is confusing. Instead of writing short
commits, explain more.

> 
>>>
>>> Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
>>> ---
>>>  .../bindings/phy/starfive,jh7110-dphy-rx.yaml | 85 +++++++++++++++++++
>>>  1 file changed, 85 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
>>>
> [...]
>>> +
>>> +  power-domains:
>>> +    maxItems: 1
>>> +
>>> +  lane_maps:
>>
>> Why did this appear? Underscores are not allowed. It looks like you
>> re-implement some standard property.
>>
> 
> Will change to lane-maps.
> Yes, according to Vinod advice, lane mapping table use device tree
> to parse makes sense.

Hm, I have a feeling that I saw such property, so you should dig into
existing and in-flight bindings.

Best regards,
Krzysztof

