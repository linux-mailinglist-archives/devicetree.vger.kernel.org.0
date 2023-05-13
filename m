Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BC7E701910
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 20:13:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229530AbjEMSNd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 May 2023 14:13:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229485AbjEMSNM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 May 2023 14:13:12 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9ED8946B8
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 11:13:08 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-50bc4ba28cbso19790833a12.0
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 11:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684001587; x=1686593587;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SdRy69fIEsxIBR9NIDENofSkdxQv1jnZ0R7WuYlxvmg=;
        b=cswtIRS11QeGOspQbIax2cbUnxPMuwqMCUQ+AgRqEZadVfHxZzrTHBrkyAg8yKXDbW
         YieljDi0i5askQoY4OEeuGhZT+ZCgZOs/lfQ04xcGM2GxBYJoavC1fwDCiZBz3YOU9G+
         69/M19hNO0j6J3rYI2UKq0Y7D5Fel5YS2Xa5KUgxcGkfASu+gO8HdrWLUqnGy7+iaKcS
         GgDgB4AQ1N8yQjn/nLICeOWTeV8M4MBX6/v+CtRIuxoKXRKcMzl8veSs04NzMpZbs51/
         Hfe7SeHHOfLgcRnu74iLTF2U/Q8QnlMBhOmAgqullUeXchuOB3VuekRtsXG/BSDbpi8j
         moSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684001587; x=1686593587;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SdRy69fIEsxIBR9NIDENofSkdxQv1jnZ0R7WuYlxvmg=;
        b=VET+JVltlvgwOvIR34ZwlNrVqkrxE61Pvmot750GJpCfBwAznfFFXKb2Fmb9w35LXg
         vSuHP5LE8/u4WL0l4K9eTmCZ4hehKOixWSe9nNaCokSdyxZcSyeL2leZM3cKMxbvyJ0i
         tD3e0zOai6FaS0MjqfVMrw8Div5ckYPkc/1HoRSI1z4tlSr2ZQykmvpbRl4uwoZ2hCNS
         96Rrxw0BHYUaTvTQI3Pc/z+8arVw1diV7gH6Wm66Wslro1cD8aaADFZAH7Rs346pFB5W
         6MhA6GasDUalgY3G1WrM4F4Q07BUU6xXBjkvJZL5uLF0q23UEIaTLF5Mp+gO22IZ8ty3
         KhRA==
X-Gm-Message-State: AC+VfDwu8aUNc/yiOE2cl/Vdw1GXjq1KNcR9XMMW8u7SWOJ10h5dWPx2
        NwqiYCeSS6tbl0q6XE/iqGeKa5PbATq36z05xTOHtw==
X-Google-Smtp-Source: ACHHUZ4m7lCl8p2Q7EHaoUU/9iQg5m8GgeAPaGDj82d7+DhAw/jzqEtERboZRuZ59/7bEz4RKl+kkg==
X-Received: by 2002:a17:907:7f94:b0:969:e9ec:9a0 with SMTP id qk20-20020a1709077f9400b00969e9ec09a0mr20377665ejc.77.1684000807359;
        Sat, 13 May 2023 11:00:07 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ba68:e5c9:694e:c6e4? ([2a02:810d:15c0:828:ba68:e5c9:694e:c6e4])
        by smtp.gmail.com with ESMTPSA id u24-20020a056402111800b0050bc4eb9846sm5105168edv.1.2023.05.13.11.00.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 May 2023 11:00:06 -0700 (PDT)
Message-ID: <633b305e-a311-3334-3d4e-30d5d09ebb6a@linaro.org>
Date:   Sat, 13 May 2023 20:00:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 08/10] pinctrl: cs42l43: Add support for the cs42l43
Content-Language: en-US
To:     Charles Keepax <ckeepax@opensource.cirrus.com>
Cc:     broonie@kernel.org, lee@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        tglx@linutronix.de, maz@kernel.org, linus.walleij@linaro.org,
        vkoul@kernel.org, lgirdwood@gmail.com,
        yung-chuan.liao@linux.intel.com, sanyog.r.kale@intel.com,
        pierre-louis.bossart@linux.intel.com, alsa-devel@alsa-project.org,
        patches@opensource.cirrus.com, devicetree@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-spi@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230512122838.243002-1-ckeepax@opensource.cirrus.com>
 <20230512122838.243002-9-ckeepax@opensource.cirrus.com>
 <9591999e-9d7f-2a4a-29df-d9c42dfa736b@linaro.org>
 <20230512155426.GJ68926@ediswmail.ad.cirrus.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230512155426.GJ68926@ediswmail.ad.cirrus.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2023 17:54, Charles Keepax wrote:
> On Fri, May 12, 2023 at 05:30:37PM +0200, Krzysztof Kozlowski wrote:
>> On 12/05/2023 14:28, Charles Keepax wrote:
>>> +	priv->gpio_chip.fwnode = dev_fwnode(cs42l43->dev);

What's also a bit confusing is that gpio_chip is the parent's node, but
pinctrl is not...

>>> +
>>> +	if (is_of_node(dev_fwnode(cs42l43->dev))) {
>>> +		device_set_node(priv->dev,
>>> +				fwnode_get_named_child_node(dev_fwnode(cs42l43->dev),
>>> +							    "pinctrl"));
>>
>> That's something unusual. It seems you want to bind to a DT node because
>> you miss compatible in DT node?
>>
> 
> Kinda, I don't really want to add multiple compatibles for the
> device. This is just a CODEC device, even in device tree it
> seems a little weird to have multiple compatibles for a single
> I2C device. On ACPI I am pretty sure it would be considered flat
> out right wrong. The fact Linux supports the device using multiple
> drivers is seemed to be a Linux implementation detail, rather than
> describing the hardware.
> 

I think if you do not have compatible, then the device node should be
rather the parent (so the main node with compatible), not the child.
Child is just a wrapper for pinctrls, but not something representing a
device.

Best regards,
Krzysztof

