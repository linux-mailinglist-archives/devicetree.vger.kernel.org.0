Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D37316B71BC
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 09:55:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229928AbjCMIzt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 04:55:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229927AbjCMIzY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 04:55:24 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 609A6EC6F
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 01:52:28 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id cn21so15305171edb.0
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 01:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678697543;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hPMZwylYUo5wDbhtVdq3/gT0lUgRPZLRYDKQDG+GTuE=;
        b=wv5lnmK7r0o1akXslXcI/+5tvQOtFo2E6r1FYnSkVj4AHSF2KI/+fb0Tf2bIFSkdWG
         hqfN3lSJGZWni1etv1fDsycqEeHGflKXtbaMJQU/gwEZ4oRjeDjYatGxZrOg3bq1CUYn
         7ENIvTj1BDy9YwVZRU43EjwgZRaiqREbrW23ec8dk4e2alKkoWqkfNyUMbdR2LCGB1rZ
         3jJr29RSneSwkIvrzt1Gh3QuJijCbvSQ4bRIG6LYhJMhexpvP/w6e/DFLYCLx+5egC8j
         puARp6ojOeV3todWd4hf28y+3t0GhYA0HHQpL0RD9ZpTlYRHb6YnnFiGiqLCeCEsU2d+
         AtWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678697543;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hPMZwylYUo5wDbhtVdq3/gT0lUgRPZLRYDKQDG+GTuE=;
        b=c9kzzZaEdllVqv3GvIZVK9i87Hb5DyXi8YhLzIh/cKDBUox+bQ4b8lnewQDl7fF5Rj
         iVkjukXEO2oMe1VV+ywsWp2tInUe7a/gxYGUDWLLgEWSEqtf37SprA2ELC1nh3+uy6N/
         MgzOurlxtSKgb/OoJNKvFz4n3t9ZcRB8TdTAGwWhWcGC3DrJXAx6bz7sgqRidvGGNK4/
         2T3hZXPxPybjhW+X6/GFbkyPSZ+zDJRvswZlJ22sY2ibm3Ol2Q/wEFEuy8K9U/BEmMb8
         jWqjZ+qPOrPfT8ST8843cXW3AkK1gBYixvNJqXcVCdXa0YEUROIfrxKa+aK32GlHsmgy
         u4hA==
X-Gm-Message-State: AO0yUKUI5Fn9g13Js01rd/xTqO/4+Tau3ilY445a83PILeI7OlZ60elL
        a92H4rUicxr9FXEcSi4Wt/TJcA==
X-Google-Smtp-Source: AK7set+f+tpnts/kWZrebRfrAm05GQR4GXIMJeQuJlR5p3jGMRRneXG8jpt2OwtmWPfezLCV9DDfHw==
X-Received: by 2002:a17:906:384a:b0:8f0:143d:ee28 with SMTP id w10-20020a170906384a00b008f0143dee28mr32584180ejc.16.1678697542844;
        Mon, 13 Mar 2023 01:52:22 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:f052:f15:3f90:fcb3? ([2a02:810d:15c0:828:f052:f15:3f90:fcb3])
        by smtp.gmail.com with ESMTPSA id w5-20020a170906b18500b0090953b9da51sm3148322ejy.194.2023.03.13.01.52.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Mar 2023 01:52:22 -0700 (PDT)
Message-ID: <a924b435-ebe4-e0d1-5d55-ba191154eb0b@linaro.org>
Date:   Mon, 13 Mar 2023 09:52:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v1 3/3] misc: Add meta cld driver
Content-Language: en-US
To:     Delphine_CC_Chiu/WYHQ/Wiwynn <Delphine_CC_Chiu@wiwynn.com>,
        "patrick@stwcx.xyz" <patrick@stwcx.xyz>,
        Derek Kiernan <derek.kiernan@xilinx.com>,
        Dragan Cvetic <dragan.cvetic@xilinx.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     "garnermic@fb.com" <garnermic@fb.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stanislav Jakubek <stano.jakubek@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Samuel Holland <samuel@sholland.org>,
        "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20230117094425.19004-1-Delphine_CC_Chiu@Wiwynn.com>
 <20230117094425.19004-4-Delphine_CC_Chiu@Wiwynn.com>
 <1e1a23e0-5aa7-9f8d-cb67-e2a847d0b6d5@linaro.org>
 <TY2PR04MB4032AA411F6686EE12280CC183B99@TY2PR04MB4032.apcprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <TY2PR04MB4032AA411F6686EE12280CC183B99@TY2PR04MB4032.apcprd04.prod.outlook.com>
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

On 13/03/2023 09:48, Delphine_CC_Chiu/WYHQ/Wiwynn wrote:
> Hi Krzysztof,
> 
> Thanks for your review comment.
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Tuesday, January 17, 2023 6:55 PM
>> To: Delphine_CC_Chiu/WYHQ/Wiwynn <Delphine_CC_Chiu@wiwynn.com>;
>> patrick@stwcx.xyz; Derek Kiernan <derek.kiernan@xilinx.com>; Dragan Cvetic
>> <dragan.cvetic@xilinx.com>; Arnd Bergmann <arnd@arndb.de>; Greg
>> Kroah-Hartman <gregkh@linuxfoundation.org>
>> Cc: garnermic@fb.com; Rob Herring <robh+dt@kernel.org>; Krzysztof
>> Kozlowski <krzysztof.kozlowski+dt@linaro.org>; Stanislav Jakubek
>> <stano.jakubek@gmail.com>; Linus Walleij <linus.walleij@linaro.org>; Samuel
>> Holland <samuel@sholland.org>; linux-i2c@vger.kernel.org;
>> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org
>> Subject: Re: [PATCH v1 3/3] misc: Add meta cld driver
>>
>>   Security Reminder: Please be aware that this email is sent by an external
>> sender.
>>
>> On 17/01/2023 10:44, Delphine CC Chiu wrote:
>>> Add support for meta control-logic-device driver. The CLD manages the
>>> server system power squence and other state such as host-power-state,
>>> uart-selection and presense-slots. The baseboard management controller
>>> (BMC) can access the CLD through I2C.
>>>
>>> The version 1 of CLD driver is supported. The registers number, name
>>> and mode of CLD can be defined in dts file for version 1. The driver
>>> exports the filesystem following the dts setting.
>>>
>>> Signed-off-by: Delphine CC Chiu <Delphine_CC_Chiu@Wiwynn.com>
>>> Tested-by: Bonnie Lo <Bonnie_Lo@Wiwynn.com>
>>> ---
>>>  MAINTAINERS                         |   6 +
>>>  drivers/misc/Kconfig                |   9 +
>>>  drivers/misc/Makefile               |   1 +
>>>  drivers/misc/control-logic-device.c | 443
>>> ++++++++++++++++++++++++++++
>>>  4 files changed, 459 insertions(+)
>>>  create mode 100644 drivers/misc/control-logic-device.c
>>>
>>> diff --git a/MAINTAINERS b/MAINTAINERS index
>>> 7483853880b6..46e250a2c334 100644
>>> --- a/MAINTAINERS
>>> +++ b/MAINTAINERS
>>> @@ -13388,6 +13388,12 @@ T:   git git://linuxtv.org/media_tree.git
>>>  F:   Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
>>>  F:   drivers/staging/media/meson/vdec/
>>>
>>> +META CPLD DRIVER
>>> +M:   Delphine CC Chiu <Delphine_CC_Chiu@Wiwynn.com>
>>> +L:   linux-i2c@vger.kernel.org
>>> +S:   Maintained
>>> +F:
>> Documentation/devicetree/bindings/misc/meta,control-logic-device.txt
>>
>> Missing entries for driver code.
> 
> We saw there are entries defined in MAINTAINERS file(M, R, L, S, W, Q, B, C, P, T, F, X, N, K).
> Could you guide us which entries are must to have?

The driver paths.

>>>  obj-$(CONFIG_OPEN_DICE)              += open-dice.o
>>>  obj-$(CONFIG_GP_PCI1XXXX)    += mchp_pci1xxxx/
>>>  obj-$(CONFIG_VCPU_STALL_DETECTOR)    += vcpu_stall_detector.o
>>> +obj-$(CONFIG_CONTROL_LOGIC_DEVICE) += control-logic-device.o
>>
>> Does not look like ordered by name.
> 
> The file look like without ordered by name so we added the configuration in the tail.

Indeed, but don't add stuff to the end. Conflict-prone.



Best regards,
Krzysztof

