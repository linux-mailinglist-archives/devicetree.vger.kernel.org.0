Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 133F1580E5C
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 10:00:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237886AbiGZIAs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 04:00:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231384AbiGZIAs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 04:00:48 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C13C2B247
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 01:00:47 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id w18so4581238lje.1
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 01:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ifUXJuaiQtYO7an7q4L8whQdS+EfwH+rE3bjrkpTz58=;
        b=swvDpU2DSg9Bb2u9W0ZNBt2sOB2bYBvErhsK4m40rV9E2O/R9pIbB0L7cMRueWLvRz
         s0eIg2qjP1dv3tNGfpNY/40xZGNOU5+RzYCCfNHiOf1Q8RYM79NkWMdvGkoJguxCFNh5
         Qb7mvBZxqXFmkGVSTkhM7UVPIbQwWJRF5iVeNW6gEAbDYUH6FCtEY4j+k7psThAiIWYc
         ZqVQ/fpjofHucTpkMoy6psAnWLCXsovoLTCb2nJFI/pXprdQ5sZ+xDMLOdYEnJMIeP6T
         eK36Vj6q9y31K4zpOvuCLKfcwzBRow3c42IGMLvGuVhAXVpAL7GiDJJiAqVgcdrrHa3V
         /yUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ifUXJuaiQtYO7an7q4L8whQdS+EfwH+rE3bjrkpTz58=;
        b=P9cqbTHvSz2p19MxusEPKwF76ojlWENx6NEd/4CtW8ZbzeBTPHdLhZv9BJATAoguiM
         399eEq32aQXS4uYgarpZQ170iSN2g/04Q9vVHcVRqX/Ay9pxN6BUB4st9o55nnTsiSXq
         UiwjH5bxj+Nr9SQbbRcjiKqkxMY/Znp7cOSUbMmZJ0xSWdKSHMH3pl6xJ4Qx0BtalZr7
         +i4PVaRERgJQVR+3eTzVLO3WcIsDY0MHaKlLOfVBZI1ljMxnD9sfPQ7c4i+7BZ8xH5vf
         CSc2WI2Iiyhosa+MNt70Kq0zuobdbjiNR+KH9yGEUx1FoRzDLm18A142d+/nI4mFXKkr
         QGsA==
X-Gm-Message-State: AJIora9Zisq+WVD2tbLoXtdm/NKzQH4N8XHJm5WVems8sb4WtE1ifZSb
        qlvVuZPY827xx7nMO/UQ/CPoGA==
X-Google-Smtp-Source: AGRyM1uMSRg/ui8g0VWukrJtyrC0UwT2Kg/VttrZopDK/em51IEUNfx/FekgLLFGS1YhUtgYgbSvFg==
X-Received: by 2002:a2e:aaa5:0:b0:25d:eefb:e243 with SMTP id bj37-20020a2eaaa5000000b0025deefbe243mr5209538ljb.464.1658822445153;
        Tue, 26 Jul 2022 01:00:45 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id g8-20020a0565123b8800b0048a8b72bffbsm1101745lfv.184.2022.07.26.01.00.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jul 2022 01:00:44 -0700 (PDT)
Message-ID: <fd50b23b-d801-a98a-6a85-0b3e4fbb401e@linaro.org>
Date:   Tue, 26 Jul 2022 10:00:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 4/4] mfd: Samsung: Add Samsung sysmgr driver
Content-Language: en-US
To:     dj76.yang@samsung.com,
        "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
        "lars.persson@axis.com" <lars.persson@axis.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
        "lee.jones@linaro.org" <lee.jones@linaro.org>
Cc:     "javierm@redhat.com" <javierm@redhat.com>,
        "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
        "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Moon-Ki Jun <moonki.jun@samsung.com>,
        Sang Min Kim <hypmean.kim@samsung.com>,
        Wangseok Lee <wangseok.lee@samsung.com>
References: <f0ab0036-54eb-f0e4-3169-740e7fca9c65@linaro.org>
 <20220713045746epcms1p302c6643d12ed505d24298e1edb5889ec@epcms1p3>
 <CGME20220713045746epcms1p302c6643d12ed505d24298e1edb5889ec@epcms1p1>
 <20220726075100epcms1p105e6df50e1efb6fc43786699d223c051@epcms1p1>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220726075100epcms1p105e6df50e1efb6fc43786699d223c051@epcms1p1>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/07/2022 09:51, Dongjin Yang wrote:
> On 14/07/2022 04:28, Krzysztof Kozlowski wrote:
>> On 13/07/2022 06:57, Dongjin Yang wrote:
>>>  This driver is used for SoCs produced by Samsung Foundry to provide
>>>  Samsung sysmgr API. The read/write request of sysmgr is delivered to
>>>  Samsung secure monitor call.
>>>  
>>>  Signed-off-by: Dongjin Yang <dj76.yang@samsung.com>
>>>  ---
>>>   MAINTAINERS                        |   2 +
>>>   drivers/mfd/Kconfig                |  11 +++
>>>   drivers/mfd/Makefile               |   1 +
>>>   drivers/mfd/samsung-sysmgr.c       | 167 +++++++++++++++++++++++++++++++++++++
>>>   include/linux/mfd/samsung-sysmgr.h |  30 +++++++
>>>   5 files changed, 211 insertions(+)
>>>   create mode 100644 drivers/mfd/samsung-sysmgr.c
>>>   create mode 100644 include/linux/mfd/samsung-sysmgr.h
>>>  
>>>  diff --git a/MAINTAINERS b/MAINTAINERS
>>>  index 55cb8901ccdc..44ad4bd406a9 100644
>>>  --- a/MAINTAINERS
>>>  +++ b/MAINTAINERS
>>>  @@ -1870,9 +1870,11 @@ F:        arch/arm/mach-artpec
>>>   F:        drivers/clk/axis
>>>   F:        drivers/crypto/axis
>>>   F:        drivers/firmware/samsung-smc-svc.c
>>>  +F:        drivers/mfd/samsung-sysmgr.c
>>>   F:        drivers/mmc/host/usdhi6rol0.c
>>>   F:        drivers/pinctrl/pinctrl-artpec*
>>>   F:        include/linux/firmware/samsung-smc-svc.h
>>>  +F:        include/linux/mfd/samsung-sysmgr.h
>>
>> Not related to Axis/Artpec SoC.
>>
> 
> It is Artpec8 SoC.
> 
>>>   
>>>   ARM/ASPEED I2C DRIVER
>>>   M:        Brendan Higgins <brendanhiggins@google.com>
>>>  diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
>>>  index 3b59456f5545..ce6ab5842bf0 100644
>>>  --- a/drivers/mfd/Kconfig
>>>  +++ b/drivers/mfd/Kconfig
>>>  @@ -51,6 +51,17 @@ config MFD_ACT8945A
>>>             linear regulators, along with a complete ActivePath battery
>>>             charger.
>>>   
>>>  +config MFD_SAMSUNG_SYSMGR
>>>  +        bool "System Manager for Samsung Foundry platforms"
>>>  +        depends on ARCH_ARTPEC && OF
>>
>> Samsung Foundry does not match ARTPEC... Artpec 6 is not Samsung Foundry
>> SoC, is it?
>>
> 
> This is for Artpec8. 
> 
>> Missing compile test.
>>
> 
> Sorry, I will run it.
> 
>>>  +        select MFD_SYSCON
>>>  +        select SAMSUNG_SECURE_SERVICE
>>>  +        help
>>>  +          Select this to get System Manager support for SoCs which use
>>>  +          Samsung Foundry platforms.
>>>  +          This System Manager has depedency on Samsung Secure Service
>>>  +          for providing secure service call.
>>
>> Looking at the driver, it does literally nothing. Looks like workaround
>> for incomplete bindings and DTS. It's a no-go.
>>
> 
> This driver is for providing secure smc read/write to other IP driver in Artpec8 SoC.

There are no users of it and as I said - it looks like a workaround for
incomplete bindings. You do not justify here chosen design.


(...)

>>>  +EXPORT_SYMBOL_GPL(samsung_sysmgr_regmap_lookup_by_phandle);
>>
>> This breaks layers/encapsulation and looks like a hack for incomplete
>> bindings/DTS. No, no exporting regmaps.
>>
> 
> Similar with syscon (syscon_regmap_lookup_by_phandle), but needed additional secure smc call.

That's not what the code is doing.

Best regards,
Krzysztof
