Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C39B566B6A
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 14:06:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234078AbiGEMGW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 08:06:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234019AbiGEMFp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 08:05:45 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1045C18E32
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 05:05:10 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id t25so20160086lfg.7
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 05:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=VickWh1cciHPIgvqvAt4x2IayEAX7YeLzrBgX+n2il0=;
        b=w5oW1MeCB6w7smJc1GcFK4l2AuBZtWiTIkGEVHAkGkj+NBlBkW2SScE5qHf2sdlunL
         YqcuVQpY0MjoJ8x1HouWM5oy518UBivrmGVJmLBFas22qZHA/TEJD0HkauYLxFrO4Waa
         KjnJVkQ5szr7cqaLubpRdKMAW2G/waXCFeVSncTDwHBgFvd15cQxEPQs5Biy/HDdbuZZ
         nzzsuDgKewrKWQXxt6nNkPW0Csq6nZzpfAunHXui/J763oyTU+RW2+OfBOQ+aoXaG5x8
         5UVQtbfmcfIXfXXn7Iesko+OaPS4VlGhN3FBW3FOhk4f3Ex/I+AarfCuKOGdwjoTu9e/
         /57Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=VickWh1cciHPIgvqvAt4x2IayEAX7YeLzrBgX+n2il0=;
        b=gfuM8tk+pqcPoAEGgulwofv+8mR3PEopwLRf4DwPNxBXMAZk2PrRHPQlJwYMpSjuqc
         15EbPU8QtksCGxlSrt3lpGsoRXh24SvBPLnoJKMbI8knjd/Oyr9XjjdqXJhxsee6sJBS
         zu/9QTETBtc6xXQTxoFJK5wCq4J0572A2lcomGQnXQbOzqFHIqVBCAqY1rbp8W54yuaM
         vPKvTGqJUTZWPKTXkDsyVCfLGwLb3YVCNTmTDgXeSGhRQaWndAJjCyDryjDv5jnr+V5Z
         0ELcMmz9FifzEZKmj2kGDp3jjTDfh7lYiepJ+SPsZJK8QhzrSZug4VtOv5jiVETmz+BE
         yX9w==
X-Gm-Message-State: AJIora/++XXdWxEysxciLwMNvwDDGuxH5RW2EL1MBqSZ7xaGDEJWMZIM
        Yi0MQNg84oSxmcfy0G2UHh9xPA==
X-Google-Smtp-Source: AGRyM1sAQIYKqMWupX3Qp3aT9V+SQ1IKpv7UJVrSB1OsCII6uoRjCqNDZCo9i12TloeAzzSHB7vQMw==
X-Received: by 2002:ac2:51cc:0:b0:482:e88a:950b with SMTP id u12-20020ac251cc000000b00482e88a950bmr3776325lfm.270.1657022707913;
        Tue, 05 Jul 2022 05:05:07 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id e18-20020ac25472000000b0047f77cc3287sm5657335lfn.274.2022.07.05.05.05.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 05:05:06 -0700 (PDT)
Message-ID: <d5e4350e-761d-e8e0-c84f-bb84c9aa9d8f@linaro.org>
Date:   Tue, 5 Jul 2022 14:05:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v6 1/3] dt-bindings: mfd: atmel,flexcom: Convert to
 json-schema
Content-Language: en-US
To:     Kavyasree.Kotagiri@microchip.com, Claudiu.Beznea@microchip.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, Nicolas.Ferre@microchip.com,
        alexandre.belloni@bootlin.com, UNGLinuxDriver@microchip.com
References: <20220705065758.17051-1-kavyasree.kotagiri@microchip.com>
 <20220705065758.17051-2-kavyasree.kotagiri@microchip.com>
 <0ca30eca-5c12-4b58-ccbf-b008d3413d4f@microchip.com>
 <SA2PR11MB4874514AC2B74A46B4CA454192819@SA2PR11MB4874.namprd11.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <SA2PR11MB4874514AC2B74A46B4CA454192819@SA2PR11MB4874.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/07/2022 14:00, Kavyasree.Kotagiri@microchip.com wrote:
>>> Convert the Atmel flexcom device tree bindings to json schema.
>>>
>>> Signed-off-by: Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>
>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> ---
>>> v5 -> v6:
>>>  - Removed spi node from example as suggested by Rob and
>>>    also pattern properties(spi dt-bindings conversion to yaml patch is under
>> review).
>>>    Once that is accepted, I will add back spi example through new patch.
>>>
>>> v4 -> v5:
>>>  - Fixed indentations.
>>>
>>> v3 -> v4:
>>>  - Corrected format of enum used for compatible string.
>>>
>>> v2 -> v3:
>>>  - used enum for compatible string.
>>>  - changed irq flag to IRQ_TYPE_LEVEL_HIGH in example.
>>>  - fixed dtschema errors.
>>>
>>> v1 -> v2:
>>>  - Fix title.
>>>
>>>  .../bindings/mfd/atmel,flexcom.yaml           | 72 +++++++++++++++++++
>>>  .../devicetree/bindings/mfd/atmel-flexcom.txt | 63 ----------------
>>>  2 files changed, 72 insertions(+), 63 deletions(-)
>>>  create mode 100644
>> Documentation/devicetree/bindings/mfd/atmel,flexcom.yaml
>>
>> AFAICT it would be better to have it named atmel,sama5d2-flexcom.yaml.
>>
> I see most of the yaml filenames have format of "vendor, function.yaml".For example: Documentation/devicetree/bindings/spi/atmel,quadspi.yaml
> So, I think it is ok to use "atmel,flexcom.yaml".

Most files not correct. The recommended naming is based on first
compatible, so as Claudiu suggested.


Best regards,
Krzysztof
