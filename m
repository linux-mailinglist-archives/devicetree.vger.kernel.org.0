Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85E8C57F0F9
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 20:47:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238437AbiGWSrW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 14:47:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236810AbiGWSrV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 14:47:21 -0400
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D34DE18B24
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 11:47:19 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id o12so7018088pfp.5
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 11:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sudomaker-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=rsPZ3UqbP1l4DXR/Tzlf3U3kRDsFMBo5YFbvYGqZy2I=;
        b=bVkOWnq0tkioZ9fnbzZDHzlJG1CDmxY4gphW04FvQO8G7UWdyXyK5Jd+jg4CdK9zh9
         PfjWs6VRu4RV0QjXvroA+QEpIA7QY30xpCN8T991BsrRxMFH9Sh39EBSxxCeuxGvAJzY
         UVJJic2IqkXRPyLKgzyyzxmvQg9bF5Vf/3eiAoRSZ1V9DXjwvMHFjVl7LH49Rel+JxGp
         pl8Z1vDW04v0twYFMijKhy3Jls37IAVV/jmtzur3c3jFBlQ5G6dJ4WiDF8GYVpfLs6TQ
         xsO1G2rk6yPQQ13LgWktZ6GBqadQ2vzWYDLJBHrPD0xSmuRZlEf6HUBJBkvCTSsr5rNF
         mrPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=rsPZ3UqbP1l4DXR/Tzlf3U3kRDsFMBo5YFbvYGqZy2I=;
        b=o96bygSpWbzWsPrIyEOH+4FNUdEwymJm5acYAvoTIR+4/pHh1sJm9bFP+IN1R88vRk
         AhEh5jaAIkWra0pEuYbFMe3pwSkADtWsxFfgSbeOz/QPnhb0itVsdZ4AZuyKt9aSChrE
         08eYcTdE5co2ZbbOsOr56gKhTZYULeyIDxohm2ZlG/Hkm81Mfekdpmzsz8aE5hihKuN6
         YqZ6V4Jdi1DGIHS0C8cV8p4VwTTSWSPKRE/jPs7DMBb73vyU+KzEutcOZ9+6F+5T5vBL
         UPvuGv5swM1ojhEyZh1chuaOCiudlR3w/6/mNPyqSWiF6A3Do/GXeE0AtKvLGHUGBKRP
         aIuw==
X-Gm-Message-State: AJIora9b9eU8FhB8gmxyZzxZ4iSvEEtZp5DRTDero/TiWg64ZoqVBvuN
        Q4tqS5ttgJUVuUWyE7SJqzICcQ==
X-Google-Smtp-Source: AGRyM1vQleftizVLXtsyJEZpL+3neARgOltR9mQLjOc8T9CFophol9eh39QEwr/9Qs0tk1aR4aif4A==
X-Received: by 2002:a63:eb02:0:b0:41a:716c:bfb1 with SMTP id t2-20020a63eb02000000b0041a716cbfb1mr4915469pgh.198.1658602039237;
        Sat, 23 Jul 2022 11:47:19 -0700 (PDT)
Received: from [172.16.24.11] ([188.214.106.178])
        by smtp.gmail.com with ESMTPSA id n9-20020a170903110900b0016be4d78792sm6054287plh.257.2022.07.23.11.47.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jul 2022 11:47:18 -0700 (PDT)
Message-ID: <b5505a46-ce76-d0aa-009e-81d9ba16e1d5@sudomaker.com>
Date:   Sun, 24 Jul 2022 02:47:14 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH 2/3] dt-bindings: SPI: Add Ingenic SFC bindings.
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Zhou Yanjie <zhouyanjie@wanyeetech.com>,
        tudor.ambarus@microchip.com, p.yadav@ti.com, michael@walle.cc,
        miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-mtd@lists.infradead.org, linux-spi@vger.kernel.org,
        linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, aidanmacdonald.0x0@gmail.com,
        tmn505@gmail.com, paul@crapouillou.net, dongsheng.qiu@ingenic.com,
        aric.pzqi@ingenic.com, rick.tyliu@ingenic.com,
        jinghui.liu@ingenic.com, sernia.zhou@foxmail.com
References: <1658508510-15400-1-git-send-email-zhouyanjie@wanyeetech.com>
 <1658508510-15400-3-git-send-email-zhouyanjie@wanyeetech.com>
 <487a93c4-3301-aefd-abba-aabf4cb8ec90@linaro.org>
 <37062a5d-9da3-fbaf-89bd-776f32be36d9@wanyeetech.com>
 <d1a0dd15-3621-14e9-b931-417cefaab017@linaro.org>
From:   Mike Yang <reimu@sudomaker.com>
In-Reply-To: <d1a0dd15-3621-14e9-b931-417cefaab017@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 7/24/22 01:43, Krzysztof Kozlowski wrote:
> On 23/07/2022 18:50, Zhou Yanjie wrote:
>> Hi Krzysztof,
>>
>> On 2022/7/23 上午1:46, Krzysztof Kozlowski wrote:
>>> On 22/07/2022 18:48, 周琰杰 (Zhou Yanjie) wrote:
>>>> Add the SFC bindings for the X1000 SoC, the X1600 SoC, the X1830 SoC,
>>>> and the X2000 SoC from Ingenic.
>>>>
>>>> Signed-off-by: 周琰杰 (Zhou Yanjie) <zhouyanjie@wanyeetech.com>
>>>> ---
>>>>   .../devicetree/bindings/spi/ingenic,sfc.yaml       | 64 ++++++++++++++++++++++
>>>>   1 file changed, 64 insertions(+)
>>>>   create mode 100644 Documentation/devicetree/bindings/spi/ingenic,sfc.yaml
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/spi/ingenic,sfc.yaml b/Documentation/devicetree/bindings/spi/ingenic,sfc.yaml
>>>> new file mode 100644
>>>> index 00000000..b7c4cf4
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/spi/ingenic,sfc.yaml
>>>> @@ -0,0 +1,64 @@
>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>>> +%YAML 1.2
>>>> +---
>>>> +$id: http://devicetree.org/schemas/spi/ingenic,sfc.yaml#
>>> File name should be rather based on first compatible, so
>>> ingenic,x1000-sfc.yaml
>>
>>
>> No offense, does it really need to be named that way?
>> I can't seem to find documentation with instructions on this :(
>>
>> The use of "ingenic,sfc.yaml" indicates that this is the documentation
>> for the SFC module for all Ingenic SoCs, without misleading people into
>> thinking it's only for a specific model of SoC. And there seem to be many
>> other yaml documents that use similar names (eg. fsl,spi-fsl-qspi.yaml,
>> spi-rockchip.yaml, spi-nxp-fspi.yaml, ingenic,spi.yaml, spi-sifive.yaml,
>> omap-spi.yaml), maybe these yaml files that are not named with first
>> compatible are also for the same consideration. :)
> 
> We have many bad examples, many poor patterns and they are never an
> argument to add one more bad pattern.

Zhou already mentioned he was unable find the naming guidelines of these .yaml files.

Apparently you think it's unacceptable for new contributors of a certain subsystem to use existing code as examples, and/or they're responsible for figuring out what's a good example and what's a bad one in the existing codebase.

> 
> It might never grow to new devices (because they might be different), so
> that is not really an argument.

It is an argument. A very valid one.

"they *might* be different". You may want to get your hands on real hardware and try another word. Or at least read the datasheets instead of believing your imagination.

I would enjoy duplicating the st,stm32-spi.yaml into st,stm32{f,h}{0..7}-spi.yaml if I'm bored at a Sunday afternoon.

> 
> All bindings are to follow this rule, so I don't understand why you
> think it is an exception for you?

Zhou didn't ask you to make an exception. They have a valid point and they're asking why.

You may want to avoid further incidents of this kind by stop being bossy and actually writing a guideline of naming these .yaml files and publish it somewhere online.

> 
> 
> Best regards,
> Krzysztof

Best regards,
Mike Yang
