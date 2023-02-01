Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8BFA2686D7B
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 18:57:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231200AbjBAR5R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 12:57:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229612AbjBAR5Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 12:57:16 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EC4B7D9AB
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 09:57:15 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id ud5so53821717ejc.4
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 09:57:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TOFsxXHlxqXlA48qiMJeRgdKOO85/Un+y+0ovI7eg9s=;
        b=SNUcBIWjdhnSifyDAOpYUNmlHlyBwOo9WpeUSlITBB1jweyACIgKX/hE4+PbBJY9BQ
         RH9JLG17cSJHCTxph+W0jg/1kjSwadyrEsR24WUz69HNOIr0zTFVrjC9xszm1jDCoB3V
         uXaxoan0q7fr0FaDPgBmDkM6uZByZPtVyWVZXfQ9H3AME8WQebRHWBfmp3zCj92vfruy
         720/4go2C3Yp0ybgFm/leBflp9MmjBes5CUeFl2wdFR09gE+3XNIx3etQbiQ4ckQQYFF
         c3ODKR7xf2sd55cvVBvm0xKh2oMGIcgVHM8Hj9t5Szqbqlwn2MgwniEfz6DZhD1LlQRf
         jwvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TOFsxXHlxqXlA48qiMJeRgdKOO85/Un+y+0ovI7eg9s=;
        b=jZ9vFgtEjXE3XcMplazHO9RHhKgV7a67D9e5xSGOu/MrwVvV9ixXPYN/v/p3hqfLtZ
         JU/dbjoWOG31tETdY/XzC0ERwKUHFkPjLe9sr3xxm/eHujY0tIdCJZSzOAb+98maSmtC
         3Sstbmb/Zc+0PyFLl2RTReU1Vbe8KGRLcNSBDnXIWiEuGVzetOmBHsqd/xJ/mtZZ2Gbm
         9md25WDCDbkvauqxu/ltvsFVKKPDaouSyS78KV3RCy6RJNTq/BEAtwtg7UaVKt0axdoY
         /35VlenJbFqYywnBd9RwW2x3Pc0zE96wOAT8YMAn9cVfBGx+DiPrPJxlda5Nm48ZC/kf
         u6XA==
X-Gm-Message-State: AO0yUKVGCDrzLpsWeYeSJm8AnurpbimMsEtzH/DET6z8mHBAmmyLOPgP
        F+y8xjNX4gxbc4foJDqcHgWAWJYnxB8=
X-Google-Smtp-Source: AK7set8u9NBpkH3sd96Za/IN2WsP6wrucWFFBzodpos6r0bO8ltj/mKpzcWPQltTninqrv7bhS4dVQ==
X-Received: by 2002:a17:906:5450:b0:87b:daca:aa1a with SMTP id d16-20020a170906545000b0087bdacaaa1amr2614878ejp.45.1675274233842;
        Wed, 01 Feb 2023 09:57:13 -0800 (PST)
Received: from ?IPV6:2a01:c23:b912:d400:3963:7bc4:12b:ddb3? (dynamic-2a01-0c23-b912-d400-3963-7bc4-012b-ddb3.c23.pool.telefonica.de. [2a01:c23:b912:d400:3963:7bc4:12b:ddb3])
        by smtp.googlemail.com with ESMTPSA id p7-20020a170906b20700b0088478517830sm6755950ejz.83.2023.02.01.09.57.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Feb 2023 09:57:13 -0800 (PST)
Message-ID: <618af59e-2e0f-7192-6411-620f49fcdcaf@gmail.com>
Date:   Wed, 1 Feb 2023 18:57:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] arm(64): dts: meson: adjust order of some compatibles
Content-Language: en-US
To:     neil.armstrong@linaro.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <e7b3fd1e-69eb-e66e-8abc-72b7c5fa975d@gmail.com>
 <b5a29098-53b2-c940-0b1f-4dff40d97e44@linaro.org>
From:   Heiner Kallweit <hkallweit1@gmail.com>
In-Reply-To: <b5a29098-53b2-c940-0b1f-4dff40d97e44@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01.02.2023 18:32, Neil Armstrong wrote:
> Hi Heiner,
> 
> On 01/02/2023 18:30, Heiner Kallweit wrote:
>> During review of a new yaml binding, affecting these dts, it turned out
>> that some compatibles aren't ordered as they should be. Order should be
>> most specific to least specific.
>>
>> Suggested-by: Rob Herring <robh+dt@kernel.org>
>> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
>> ---
>>   arch/arm/boot/dts/meson8b.dtsi              | 4 ++--
>>   arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi | 4 ++--
>>   arch/arm64/boot/dts/amlogic/meson-gxl.dtsi  | 4 ++--
>>   3 files changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
>> index d5a3fe21e..5979209fe 100644
>> --- a/arch/arm/boot/dts/meson8b.dtsi
>> +++ b/arch/arm/boot/dts/meson8b.dtsi
>> @@ -580,8 +580,8 @@ &ethmac {
>>   };
>>     &gpio_intc {
>> -    compatible = "amlogic,meson-gpio-intc",
>> -             "amlogic,meson8b-gpio-intc";
>> +    compatible = "amlogic,meson8b-gpio-intc",
>> +             "amlogic,meson-gpio-intc";
>>       status = "okay";
>>   };
>>   diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
>> index 923d2d8bb..12ef6e81c 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
>> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
>> @@ -300,8 +300,8 @@ &ethmac {
>>   };
>>     &gpio_intc {
>> -    compatible = "amlogic,meson-gpio-intc",
>> -             "amlogic,meson-gxbb-gpio-intc";
>> +    compatible = "amlogic,meson-gxbb-gpio-intc",
>> +             "amlogic,meson-gpio-intc";
>>       status = "okay";
>>   };
>>   diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
>> index 04e9d0f1b..af912f698 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
>> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
>> @@ -312,8 +312,8 @@ &clkc_AO {
>>   };
>>     &gpio_intc {
>> -    compatible = "amlogic,meson-gpio-intc",
>> -             "amlogic,meson-gxl-gpio-intc";
>> +    compatible = "amlogic,meson-gxl-gpio-intc",
>> +             "amlogic,meson-gpio-intc";
>>       status = "okay";
>>   };
>>   
> 
> Please send a new clean patchset with the associated bindings changes then this patch,
> and split ARM and arm64 in 2 patches.
> 
Shouldn't this patch be first? Else make dtbs_check will complain.

> Neil

