Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB677617CEB
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 13:45:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230121AbiKCMpq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 08:45:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231703AbiKCMpg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 08:45:36 -0400
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BDDB11463
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 05:45:33 -0700 (PDT)
Received: by mail-qt1-x833.google.com with SMTP id w4so1127897qts.0
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 05:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6PfI0eXpJADWpU8etauZ+FqXiRuercyjYh0eI8chCsY=;
        b=B79g/qrX1444FQEtiF31k2AIow0vRibKGmH36kwCcGEr+tl0DD+Fu1zAaHikjGF0Ba
         rq/3E2md0D7M73gk8g2VMbi7U9UHKJzaEXuyuLo9r5ggcGNXaUo48sJS2V5UYaG8Pl5r
         jgbNV4uhS6qjFw/dYIY+VCSKgFJNVgSk7hH+2GpcbzEX/IEK6gxrEWuSm3lSCfva7JU5
         xjff6G4+nI/5ardf7Gg5TD74GGPeMJqOOnfaP7KGS8IeC93ACWb9Y0IcyKUtsg4cawFD
         ye2ssnu0sh8YdUdu4U0qhuirYChydKyXH/CCNuW26w9zP7VANgHL4MQFzZ9pyFEfsPyo
         qx6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6PfI0eXpJADWpU8etauZ+FqXiRuercyjYh0eI8chCsY=;
        b=zEytti9LwW9aYYsCPVmZJSROo2u/ti0YjK/LAzip9wr+WZYNFrJSv95xpU9v8MC0zc
         x9snVQDBxY8wykx2iYgvLpOI50G3yFpT1jDp9mAHps2UV1KBmMpMB/+MSczX3nUrUGAU
         q2EzvEzKca3WZf3/XFDHLnOgpG3pUSnI5ojo8XgcAaLjy43O6E5zfh6LrrLrGtfGlO4E
         0hXpBGv1ojaOyYs1h9AuHV98QTDNciCwL8y/jSDay67BGb72+t2axzNW3acB6qkpMOXR
         NvbM0otD2r/TXzx+nuulTO8hxxDyNqc92fY5doQx9J6bi9oeC0888g9nlNiebxSdaS/1
         5Iaw==
X-Gm-Message-State: ACrzQf03K51EFh/iXtictia+lyRCS8s0MLf0aL1q7QcrgE+UDzkJ/6km
        qdrWNREHKkEWDSNOd8MzDA6QgQ==
X-Google-Smtp-Source: AMsMyM4c0L2RNLFJ9QYjJYZcRJHdUAcUob76iBxapW/rvc/MIya7YwMx6j72XranPEC29Yh43lcxug==
X-Received: by 2002:a05:622a:5c0e:b0:3a5:280d:9fc7 with SMTP id gd14-20020a05622a5c0e00b003a5280d9fc7mr16418000qtb.388.1667479532234;
        Thu, 03 Nov 2022 05:45:32 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:a35d:9f85:e3f7:d9fb? ([2601:586:5000:570:a35d:9f85:e3f7:d9fb])
        by smtp.gmail.com with ESMTPSA id h4-20020a05620a400400b006eea4b5abcesm687631qko.89.2022.11.03.05.45.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Nov 2022 05:45:31 -0700 (PDT)
Message-ID: <6bb3ab49-1c12-6863-a49a-2fd1f34de561@linaro.org>
Date:   Thu, 3 Nov 2022 08:45:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2 02/12] dt-bindings: display: mediatek: add MT8195 hdmi
 bindings
Content-Language: en-US
To:     Guillaume Ranquet <granquet@baylibre.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        David Airlie <airlied@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jitao shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>
Cc:     stuart.lee@mediatek.com, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-kernel@vger.kernel.org, mac.shen@mediatek.com,
        linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org
References: <20220919-v2-0-8419dcf4f09d@baylibre.com>
 <20220919-v2-2-8419dcf4f09d@baylibre.com>
 <c91ee3ce-3f30-a3ef-bb38-8571e488b6b6@linaro.org>
 <CABnWg9t3w4o4rmNosvYCpqG-h8DESerajH7OsXEYofRf2kr1Xg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CABnWg9t3w4o4rmNosvYCpqG-h8DESerajH7OsXEYofRf2kr1Xg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/11/2022 09:31, Guillaume Ranquet wrote:
> On Fri, 14 Oct 2022 18:08, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>> On 14/10/2022 11:15, Guillaume Ranquet wrote:
>>> Add mt8195 SoC bindings for hdmi and hdmi-ddc
>>>
>>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>>> ---
>>>  .../bindings/display/mediatek/mediatek,hdmi.yaml   | 67 +++++++++++++++++-----
>>>  .../display/mediatek/mediatek,mt8195-hdmi-ddc.yaml | 51 ++++++++++++++++
>>>  2 files changed, 104 insertions(+), 14 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
>>> index bdaf0b51e68c..955026cd7ca5 100644
>>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
>>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
>>> @@ -21,26 +21,21 @@ properties:
>>>        - mediatek,mt7623-hdmi
>>>        - mediatek,mt8167-hdmi
>>>        - mediatek,mt8173-hdmi
>>> +      - mediatek,mt8195-hdmi
>>>
>>>    reg:
>>>      maxItems: 1
>>>
>>> -  interrupts:
>>> -    maxItems: 1
>>> -
>>
>> This change is not really explained in commit msg...
>>
>>>    clocks:
>>> -    items:
>>> -      - description: Pixel Clock
>>> -      - description: HDMI PLL
>>> -      - description: Bit Clock
>>> -      - description: S/PDIF Clock
>>> +    minItems: 4
>>> +    maxItems: 4
>>>
>>>    clock-names:
>>> -    items:
>>> -      - const: pixel
>>> -      - const: pll
>>> -      - const: bclk
>>> -      - const: spdif
>>> +    minItems: 4
>>> +    maxItems: 4
>>> +
>>> +  interrupts:
>>> +    maxItems: 1
>>>
>>>    phys:
>>>      maxItems: 1
>>> @@ -58,6 +53,9 @@ properties:
>>>      description: |
>>>        phandle link and register offset to the system configuration registers.
>>>
>>> +  power-domains:
>>> +    maxItems: 1
>>> +
>>>    ports:
>>>      $ref: /schemas/graph.yaml#/properties/ports
>>>
>>> @@ -86,9 +84,50 @@ required:
>>>    - clock-names
>>>    - phys
>>>    - phy-names
>>> -  - mediatek,syscon-hdmi
>>>    - ports
>>>
>>> +allOf:
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            const: mediatek,mt8195-hdmi
>>> +    then:
>>> +      properties:
>>> +        clocks:
>>> +          items:
>>> +            - description: APB
>>> +            - description: HDCP
>>> +            - description: HDCP 24M
>>> +            - description: Split HDMI
>>> +        clock-names:
>>> +          items:
>>> +            - const: hdmi_apb_sel
>>> +            - const: hdcp_sel
>>> +            - const: hdcp24_sel
>>> +            - const: split_hdmi
>>> +
>>> +      required:
>>> +        - power-domains
>>> +    else:
>>> +      properties:
>>> +        clocks:
>>> +          items:
>>> +            - description: Pixel Clock
>>> +            - description: HDMI PLL
>>> +            - description: Bit Clock
>>> +            - description: S/PDIF Clock
>>> +
>>> +        clock-names:
>>> +          items:
>>> +            - const: pixel
>>> +            - const: pll
>>> +            - const: bclk
>>> +            - const: spdif
>>> +
>>> +      required:
>>> +        - mediatek,syscon-hdmi
>>> +
>>>  additionalProperties: false
>>>
>>>  examples:
>>> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml
>>> new file mode 100644
>>> index 000000000000..0fe0a2a2f17f
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml
>>> @@ -0,0 +1,51 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Mediatek HDMI DDC for mt8195
>>> +
>>> +maintainers:
>>> +  - CK Hu <ck.hu@mediatek.com>
>>> +  - Jitao shi <jitao.shi@mediatek.com>
>>> +
>>> +description: |
>>> +  The HDMI DDC i2c controller is used to interface with the HDMI DDC pins.
>>> +
>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - mediatek,mt8195-hdmi-ddc
>>
>> I think I wrote it - you already have bindings for HDMI DDC. I doubt
>> that these are different and it looks like you model the bindings
>> according to your driver. That's not the way.
> 
> Hi Krzysztof,
> 
> I've made a separate binding as this new IP is integrated into the
> HDMI hw block.
> The difference it makes is that the hw is slightly simpler to describe
> as the IP doesn't
> have it's own range of registers or an interrupt line.
> 
> I can use the "legacy mediatek mtk ddc binding" if I modify it to have
> the reg and
> interrupt properties not being required for mt8195.

OK, it is reasonable - such stuff should be in commit msg, so we won't
keep asking.

> 
> Would that work better for you?
> 
>>
>>> +
>>> +  clocks:
>>> +    maxItems: 1
>>> +
>>> +  clock-names:
>>> +    items:
>>> +      - const: ddc
>>> +
>>> +  mediatek,hdmi:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>> +    description:
>>> +      A phandle to the mt8195 hdmi controller
>>> +
>>> +required:
>>> +  - compatible
>>> +  - clocks
>>> +  - clock-names
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>>> +    #include <dt-bindings/interrupt-controller/irq.h>
>>> +    hdmiddc0: ddc_i2c {
>>
>> Node names should be generic - ddc.
>> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
>>
>> No underscores in node names.
>>
>> Additionally I2C devices have addresses on the bus. Why this one doesn't?
>>
> 
> This is an i2c adapter, not a device.
> And as it lives inside the HDMI hw block, I've omitted using an address here.
> 
> Is this valid? or should this be expressed differently?

What is an I2C adapter? Did you mean I2C controller (master)?

Best regards,
Krzysztof

