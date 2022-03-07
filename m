Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38B9A4D0008
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 14:27:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242871AbiCGN2j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 08:28:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242869AbiCGN2i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 08:28:38 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E622E4F
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 05:27:44 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 1B54D3F5F1
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 13:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646659663;
        bh=0p+VuFDj8xL9U854Xhzlb2R5Iw4DSHVh49A3ct6TpJY=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=l+e8PpiUUo9XwQz7tFOXTa/s7Jql5gnoQzadCMjbO7SIePiFPMwC03GPxGEGjQ0x2
         /SjtfoVwUu3yyUC4gFV3qO28cYl0toPlSCbnvfmFyPGkQMOm7gd2VHSROCwRS95Cnu
         P+qFTQzjUXFtZyne13jrUon4v8YEI5SVQ3v+D/IaV+/e9VmHSUbGy66OWoR+DigjEI
         3sND7eEmUmkJZf5hAV8qoErtxfFKDx1uA4YmzKRAIGCi8LaLSdnSUY2hrQQaYMgrJJ
         MsiqXwwjIgAK7MUoVi5xeBAUCXlnKdJulShcwNqBbvxUN1gNrF3PJ7CcZMVh9XY82c
         DERkkcMmsySsQ==
Received: by mail-ed1-f70.google.com with SMTP id u28-20020a50d51c000000b004159ffb8f24so8620310edi.4
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 05:27:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0p+VuFDj8xL9U854Xhzlb2R5Iw4DSHVh49A3ct6TpJY=;
        b=D8WvA+aCSjI+BHzGSEBEVfJMyDqXhJ1T2beTlYMYGbjUFcGCTG8FN5wK6izKCG6r0B
         Jh06rlvigiAn1qG2PBu/bGsK8gfHmaeQ2gcIsbL1p9ZV1fOFP4GYQVUOrUedIcvsJSdv
         c3Nh0ATgiWnbHp4HX1fTAqf868Oa53Qy6Z6r5k9FDytqQFdgcv2BPO4vZK67tbSiIUgg
         KCKp6ab0Vi642vLpD9no0Zc3m5JfvITnT1fF7JADs9mU4M/7QCD34JOzTVmPJbMY+mDf
         JpcGj5ImkFpO6Hmxr4Kl5Yewo5fLdf5mdV2nOpFpdjlZEXuDflNoEzL0AtxvlmD+JmbS
         yQDA==
X-Gm-Message-State: AOAM531GOci02kVgM/TF06nNSWlBfke1vu5SllY+OT03ORXF5k9hbElR
        cYYPYKAEglLIz+Hgiyyei/F/y+Vuih9dIyd4uHG99DfwcQz8auds1K6MKwpG+PMLwWazAFG03Tm
        ZrlK+Hv0L6sDqkLbbeFQgQ3i6s0wFalu1azcgiZc=
X-Received: by 2002:aa7:d708:0:b0:416:67d:5e07 with SMTP id t8-20020aa7d708000000b00416067d5e07mr11332751edq.166.1646659661049;
        Mon, 07 Mar 2022 05:27:41 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxROn5oRRrVhYMnIFfX1j+2EeerLJmDS9wAaPDjifZ9sXyeRLKRZqzm4A9FlkGfkFICnqDwaA==
X-Received: by 2002:aa7:d708:0:b0:416:67d:5e07 with SMTP id t8-20020aa7d708000000b00416067d5e07mr11332734edq.166.1646659660859;
        Mon, 07 Mar 2022 05:27:40 -0800 (PST)
Received: from [192.168.0.142] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id u5-20020a170906b10500b006ce6fa4f510sm4707518ejy.165.2022.03.07.05.27.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Mar 2022 05:27:40 -0800 (PST)
Message-ID: <060968dc-9460-1b75-12a7-cb0bbe9563cc@canonical.com>
Date:   Mon, 7 Mar 2022 14:27:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/2] dt-bindings: regulator: Add bindings for Richtek
 RT5190A PMIC
Content-Language: en-US
To:     ChiYuan Huang <u0084500@gmail.com>
Cc:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        cy_huang <cy_huang@richtek.com>,
        lkml <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
References: <1646647704-2331-1-git-send-email-u0084500@gmail.com>
 <1646647704-2331-2-git-send-email-u0084500@gmail.com>
 <1e6893ca-69f4-a2ed-6ecc-23507c04002b@canonical.com>
 <CADiBU3_jC_+P4d-gjMRGpP0uBejUkCY-axNd4nh1Y_=95iav3A@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <CADiBU3_jC_+P4d-gjMRGpP0uBejUkCY-axNd4nh1Y_=95iav3A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/03/2022 14:21, ChiYuan Huang wrote:
> Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com> 於 2022年3月7日 週一 下午7:14寫道：
>>
>> On 07/03/2022 11:08, cy_huang wrote:
>>> From: ChiYuan Huang <cy_huang@richtek.com>
>>>
>>> Add bindings for Richtek RT5190A PMIC.
>>>
>>> Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
>>> ---
>>>  .../regulator/richtek,rt5190a-regulator.yaml       | 138 +++++++++++++++++++++
>>>  1 file changed, 138 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/regulator/richtek,rt5190a-regulator.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/regulator/richtek,rt5190a-regulator.yaml b/Documentation/devicetree/bindings/regulator/richtek,rt5190a-regulator.yaml
>>> new file mode 100644
>>> index 00000000..b9f5836
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/regulator/richtek,rt5190a-regulator.yaml
>>> @@ -0,0 +1,138 @@
>>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/regulator/richtek,rt5190a-regulator.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Richtek RT5190A PMIC Regulator
>>> +
>>> +maintainers:
>>> +  - ChiYuan Huang <cy_huang@richtek.com>
>>> +
>>> +description: |
>>> +  The RT5190A integrates 1 channel buck controller, 3 channels high efficiency
>>> +  synchronous buck converters, 1 LDO, I2C control interface and peripherial
>>> +  logical control.
>>> +
>>> +  It also supports mute AC OFF depop sound and quick setting storage while
>>> +  input power is removed.
>>> +
>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - richtek,rt5190a
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  interrupts:
>>> +    maxItems: 1
>>> +
>>> +  vin2-supply:
>>> +    description: phandle to buck2 input voltage.
>>> +
>>> +  vin3-supply:
>>> +    description: phandle to buck3 input voltage.
>>> +
>>> +  vin4-supply:
>>> +    description: phandle to buck4 input voltage.
>>> +
>>> +  vinldo-supply:
>>> +    description: phandle to ldo input voltage
>>> +
>>> +  richtek,buck1-fixed-microvolt:
>>> +    description: buck1 fixed voltage that depends on the external resistor.
>>> +    $ref: "/schemas/types.yaml#/definitions/uint32"
>>
>> You should use standard bindings for it.
>>
> Sorry, I didn't get the point for the meaning 'standard binding'.
> Do you mean to change 'richtek,buck1-fixed-microvolt' or 'uint32' definition?
> This voltage depends on the external resistor selection. It's 'fixed'
> by the application.

I meant that you should not have dedicated binding to set regulator
voltage, but use regulator-min/max-microvolt instead, within one
regulator node. Just set min/max to same level and handle it in the
driver. See for example:
drivers/regulator/scmi-regulator.c


Best regards,
Krzysztof
