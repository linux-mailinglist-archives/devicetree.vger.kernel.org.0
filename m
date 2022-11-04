Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAFCC619A91
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 15:52:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231761AbiKDOw1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 10:52:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231737AbiKDOw0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 10:52:26 -0400
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com [IPv6:2607:f8b0:4864:20::829])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5010C3B
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 07:52:24 -0700 (PDT)
Received: by mail-qt1-x829.google.com with SMTP id h21so3163499qtu.2
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 07:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QgjU+OEEvQPZ01qzgjb2MKqqHyMalDRUVvIv26QXzls=;
        b=EEn0//VkZ+RccjlE/pD9lTHfQMk2wzl3pr5N8iZf+IhhfMGJ0ZrQE24okgkcanNyb4
         i+FS7LZpo3vxhzn4guBMal5KihP9v276yMLOr/KaZmCa+swk6orhWJhPfIhOji3edgxk
         OwYAbSCYeaF4IH8iqaBANSAgAQ5hdlVgdbPiTKMUmFSMo8ZnFCbplOk3PpfJO8e21SIq
         bTXd6bTUTllJHlRaU0n3BHCDyTHblxDIw6oYd/Esv4RtvaK5dq+W93e/dLk7rF8yYFMg
         62ZxAHiWZlBcs+EMikh1Cl0gDC9ul062+RvTpYLTj7cnKgXoAfcDZjxnUwwUP26xPlTk
         UGfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QgjU+OEEvQPZ01qzgjb2MKqqHyMalDRUVvIv26QXzls=;
        b=Edv0VX/BBQQRlOtOHp+IR2lds1cTKYgNBLxGep2n2ns73XH3Iq3REp7uMZj9FqChgP
         mbrNqfJ2vEuaY+8C/V4VCGTytSqqhUmIeTp4rU4gMFVvz4u9SIJrvQDt1Scq6tJXNxSe
         VWuHfSfxM3o5xM1JtlBlOk9GgPU38D6F3g2t1nyCTjImLpy+SJEbeZYLZJHvQbZq5fJc
         QmN/SvqhMToxRPp2Ywyu2Y4WzUwA60Gim/v5hQ8dgdcFamgBt+rgp0NnCb3+QFWdZifQ
         6uWsOxR4p2ULPN6+0bBRUnORwb988yDUrSqBK8yWs0UmTb0gD6M5RStP0s0DfuRXNzU4
         F5EQ==
X-Gm-Message-State: ACrzQf1IUqkBeQtlX1C3kDGp+IyMYqUFIX36EeJLbn1kVuluehkIzhA4
        r3mizi60+R1zvc+qmmpBCcFO/A==
X-Google-Smtp-Source: AMsMyM4YO7l4BmWs/QUGSvV1jS0dywSrAlj7aR/rV7nTudHC1ZtuLQY2KyT2tKW0cGiHGsyP4lLurQ==
X-Received: by 2002:ac8:7fc7:0:b0:3a5:71f2:c89a with SMTP id b7-20020ac87fc7000000b003a571f2c89amr1179362qtk.636.1667573543826;
        Fri, 04 Nov 2022 07:52:23 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:aad6:acd8:4ed9:299b? ([2601:586:5000:570:aad6:acd8:4ed9:299b])
        by smtp.gmail.com with ESMTPSA id u5-20020a05620a0c4500b006fa22f0494bsm3020401qki.117.2022.11.04.07.52.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 07:52:23 -0700 (PDT)
Message-ID: <34f40c1c-f933-cee6-f022-14c37650dc3a@linaro.org>
Date:   Fri, 4 Nov 2022 10:52:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH] dt-bindings: examples: add a list of templates and
 solutions
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20221028233701.572280-1-krzysztof.kozlowski@linaro.org>
 <20221101130720.GA963805-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221101130720.GA963805-robh@kernel.org>
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

On 01/11/2022 09:07, Rob Herring wrote:
> On Fri, Oct 28, 2022 at 07:37:01PM -0400, Krzysztof Kozlowski wrote:
>> It is useful to start from existing bindings when writing new ones,
>> especially when one does not know that much DT schema.  However we have
>> several bindings which are not the best examples, so people tend to copy
>> their issues into new bindings.
>>
>> Beginners also might not know how to achieve some more complex solutions
>> in DT schema, e.g. how one of two properties should be required by the
>> bindings.  Some of such solutions are already in example-schema.yaml,
>> but several other are missing.  Add reference with such re-usable
>> design-patterns.
> 
> My main concern here is what's a good example today is not tomorrow... 

Yes, I agree. The problem I want to solve is some folks copy-paste some
existing schema as starting point and then are surprised when receive
basic style feedback.

Of course the optimal solution would be to make all schemas in same
(proper) style, but this is going take some time...

How to solve this problem other way? I don't know.

> 
> 
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>  .../devicetree/bindings/examples.rst          | 63 +++++++++++++++++++
>>  Documentation/devicetree/bindings/index.rst   |  1 +
>>  2 files changed, 64 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/examples.rst
>>
>> diff --git a/Documentation/devicetree/bindings/examples.rst b/Documentation/devicetree/bindings/examples.rst
>> new file mode 100644
>> index 000000000000..710eea81d8b7
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/examples.rst
>> @@ -0,0 +1,63 @@
>> +.. SPDX-License-Identifier: GPL-2.0
>> +
>> +Examples of Devicetree Bindings to use a base
>> +=============================================
>> +
>> +Following Devicetree Bindings in DT Schema are a known good starting point when
>> +writing new bindings:
>> +
>> +1. Simple SPI device:
>> +   Documentation/devicetree/bindings/iio/adc/maxim,max11205.yaml
>> +
>> +2. PMIC (MFD) with several sub-devices:
>> +   Documentation/devicetree/bindings/mfd/mediatek,mt6370.yaml
>> +
>> +3. Battery charger (power supply):
>> +   Documentation/devicetree/bindings/power/supply/bq256xx.yaml
>> +   (but use vendor prefix in filename)
>> +
>> +4. Clock controller for several devices with different clock inputs:
>> +   Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
>> +
>> +5. GPIO controller:
>> +   Documentation/devicetree/bindings/gpio/qcom,wcd934x-gpio.yaml
>> +
>> +
>> +Re-usable design patterns when writing your own bindings
>> +========================================================
>> +
>> +Following bindings show how to use common pattern of writing bindings:
>> +
>> +1. Property required and present only for one variant.  Property cannot appear
>> +   on other variants:
>> +   Documentation/devicetree/bindings/example-schema.yaml
>> +   Line: 212
>> +
>> +2. Excluding properties, but none are required:
>> +   Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml
>> +   Line: 155
>> +
>> +3. Excluding required properties, but one is required:
>> +   Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml
>> +   Line: 91
>> +
>> +4. Array with numbers (items) from given range - min/max:
>> +   Documentation/devicetree/bindings/arm/l2c2x0.yaml
>> +   Line: 74
>> +
>> +5. Array with numbers (items) from given range - enum:
>> +   Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
>> +   Line: 101
>> +
>> +6. Uint32 matrix, variable length of two-items:
>> +   Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml
>> +   Line: 278
>> +
>> +7. Phandle to syscon with offset:
>> +   Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
>> +   Line: 42
>> +
>> +8. Variable length of array (e.g. clocks and clock-names) but narrowed to
>> +   specific variant:
>> +   Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
>> +   Lines: 33 and 71
> 
> It seems like some of these that are just a single property we could add 
> to example-schema.yaml.

I am afraid the example-schema will grow too big for folks to look into.
It's already quite complicated, with explanations of the dtschema
behavior itself.

How about then RST file with small code snippets?

> Also, perhaps a reference to this from writing-schema.rst.

I can do this as well.

The problem with my approach above (and adding these to writing-schema)
is that examples above can change, lines can be inadequate.

Best regards,
Krzysztof

