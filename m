Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 26C5E78E6B5
	for <lists+devicetree@lfdr.de>; Thu, 31 Aug 2023 08:45:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233429AbjHaGpG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Aug 2023 02:45:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232167AbjHaGpG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Aug 2023 02:45:06 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AAB6A8
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 23:45:03 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9a5dff9d2d9so45995366b.3
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 23:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693464302; x=1694069102; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7dWDS9dtVikyI/W6YgtSMrS78Am1qgdN+VctPtJJV0I=;
        b=R336AHxdUPYPkx/0JdUSthzKIRa+K4WoVEoFylye4SYGVfjDe+OcVT+rauRYu7kUrn
         VaIY8cZmuz4tljXmzOUla+8LvBhMZdHuUq3zsh5pBXHUSVWNA3+QibwswILgig473+Si
         15uvF5q43IJl4m3Zb+XxDbFLRA27zRO91QlXF93L310VVcrXsy1AMVqXk6zcPhmwGrJZ
         ELZR97fVJpPLdhAUV9k036e33sLrUKxMRkuL9Hvnt6asAycY2P8a4m4QWTs+6hJtVblw
         B5pCkpDVAQHwt9qD1KdMot55bWGwR4ZyOO3ymgbcl7s4X0WA2MxBYxEX+Mtub/Q+Ap7M
         HlNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693464302; x=1694069102;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7dWDS9dtVikyI/W6YgtSMrS78Am1qgdN+VctPtJJV0I=;
        b=VGpSddSFGVeaREu96Yu2IfCjuJyq4VZ8sXUSkeinBNctJJwFmp/5UUb5SIV2fu4d7Q
         /gmD1kdbKkbRE6PPiYqu8Hi733I2h0mJsi9y69NVWMCQOFnt5+55+5arz2AhqWxmShb4
         FqfaNqBTjwRDWHTJflUreigaGm0F/ctCZa401hv3tEkWgxKjGb3LlXj3CNfWH8thHSZ1
         VUOrgo9WK5sITP4MdIFuU/7x0GikCvqrgYqlKmwUGz/lnf7usgRfNmkwlIySCKvE36zk
         twNSAWrU74V7u5mL+j52f5YdznqRw68SBb8zvMcLeJu8IlIAw+9mWzdZTh/OxlpvidOT
         BpQg==
X-Gm-Message-State: AOJu0YwVK/9qFaKp7XJil62JAxPZsnK+DOntImNhrwJmGoS0I73ZRLi8
        QO2xc0wVYcGuLL2c/IXPyiT0yw==
X-Google-Smtp-Source: AGHT+IG8ER1DZkwLkS8ltwacGdYzwYVFueweMXPTg7CdldbbujGszPJH8OBoJS3YdZo+OIGoPR3GsQ==
X-Received: by 2002:a17:906:318a:b0:9a5:8afe:8c5d with SMTP id 10-20020a170906318a00b009a58afe8c5dmr2942537ejy.16.1693464301690;
        Wed, 30 Aug 2023 23:45:01 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id a3-20020a17090680c300b009a19fa8d2e9sm383452ejx.206.2023.08.30.23.45.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Aug 2023 23:45:01 -0700 (PDT)
Message-ID: <9c23d906-bba3-533e-ac31-3bad4fa46d64@linaro.org>
Date:   Thu, 31 Aug 2023 08:44:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v5 1/2] ARM: dts: aspeed: Minerva: Add Facebook Minerva
 (AST2600) BMC
To:     PeterYin <peteryin.openbmc@gmail.com>, patrick@stwcx.xyz,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc:     cosmo.chou@quantatw.com, potin.lai@quantatw.com,
        daniel-hsu@quantatw.com
References: <20230831055030.3958798-1-peteryin.openbmc@gmail.com>
 <20230831055030.3958798-2-peteryin.openbmc@gmail.com>
 <4cbe662d-cd20-ceef-e3e4-6608029f94b7@linaro.org>
 <5347163b-c225-d805-d851-fe28e6b57c56@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5347163b-c225-d805-d851-fe28e6b57c56@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/08/2023 08:34, PeterYin wrote:
> 
> On 8/31/23 14:20, Krzysztof Kozlowski wrote:
>> On 31/08/2023 07:50, Peter Yin wrote:
>>> Add linux device tree entry related to
>>> Minerva specific devices connected to BMC SoC.
>>>
>>> Signed-off-by: Peter Yin <peteryin.openbmc@gmail.com>
>>> ---
>>>   arch/arm/boot/dts/Makefile                    |   1 +
>>>   .../boot/dts/aspeed-bmc-facebook-minerva.dts  | 377 ++++++++++++++++++
>>>   2 files changed, 378 insertions(+)
>>>   create mode 100644 arch/arm/boot/dts/aspeed-bmc-facebook-minerva.dts
>>>
>>> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
>>> index 9e1d7bf3cff6..edb0b2105333 100644
>>> --- a/arch/arm/boot/dts/Makefile
>>> +++ b/arch/arm/boot/dts/Makefile
>>> @@ -1604,6 +1604,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>>>   	aspeed-bmc-facebook-wedge400.dtb \
>>>   	aspeed-bmc-facebook-yamp.dtb \
>>>   	aspeed-bmc-facebook-yosemitev2.dtb \
>>> +	aspeed-bmc-facebook-minerva.dtb \
>> Third or fourth time: that's not a correct order. This is a nit, but
>> since you keep ignoring it, I don't believe any other feedback was
>> applied. Why you did not respond to my comments but just ignored them?
> Sorry, I don't notice this is different file.

You just skipped that comment and did not respond to it in your last
private reply... Just like in previous versions. Go through all the
comments from previous versions, not few.

Best regards,
Krzysztof

