Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3260E623DC9
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 09:48:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229556AbiKJIse (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 03:48:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229551AbiKJIsd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 03:48:33 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28D6B635D
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 00:48:31 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id j4so1973357lfk.0
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 00:48:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5QyraTCqY2v4zpONouCATF0EjehSKbaWOJmoVi/2g60=;
        b=TM/aC2jyokp5p1KPCYT6j/2Xmsqlpgv/QWPNF7P2RUdnxHczCCmhdrX/YikQVNix8N
         aqaF2TGqGIUuu9DJqge3QrtXobzg+rLlS62TF5VM4xZJxNqFmzHzHMC0ztwb2GRHM4Lh
         qyCuj6B16hBD9tRyq3Wl0eEOlG6Am2QRGv9tK5x1MaORV90wCBvrr14DI2XzZVNA3U+f
         ah//CnHoW1tiU/ACC8zfLC0zmoI3osSYv2h6UsaUjgQytiNFoO5xDE3kSsVp7yGhk3an
         TvUNxAN/MluxbMRalVGkLSmOnZqPFxsCBgFXUXsf3VIf7X+GNpYI23E1l3Kw96eXlxvx
         dzxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5QyraTCqY2v4zpONouCATF0EjehSKbaWOJmoVi/2g60=;
        b=l9679xQVEmr/U3Sjma3JOYkI4Uhwav9mXZsbaWU2tLDFNik0sW/E75Pw2GkL15D32M
         n+5UnpcCQKsekavuv5e+8w/4a54mrg0x0lt9h0Te+pjec1dODI1wZBZWs+5Y5e9VuP04
         azx3cPWXWvEOr6niFvCYV32ixtZbs2a4Cp7H0rkJOJKaa6TCjM2slapmYo5EzeowoCBC
         7V4Itvvu7lGleR9Ie1LAvCKFIlxjGtDSRixS+Xa87zr01yzHENczQZZunGO0RSCF1JUr
         m9w32QHebdYJg1xV/CNo78IHEuzSjzTR6LOu1S6PeB97E/BQmTqvvzhVHviLngrdAFWi
         4l2Q==
X-Gm-Message-State: ACrzQf3DJs8rKma6OyzaL1oS1iXPn2PB4qICqlrdqnks8k7D0cKSmZcX
        +M83tPoPEYbyVtHS/l+G3TwQQw==
X-Google-Smtp-Source: AMsMyM5er8LudEMVrk6YDBDfvcRGHz83JCfTmvqNGE3bgCuwJz86XRf+f0HPwBeItGGUO6z7T5e6nQ==
X-Received: by 2002:ac2:5c4e:0:b0:4ab:db5d:10ee with SMTP id s14-20020ac25c4e000000b004abdb5d10eemr21011612lfp.142.1668070109043;
        Thu, 10 Nov 2022 00:48:29 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id f30-20020a05651c02de00b00278a21bb7b9sm2248072ljo.100.2022.11.10.00.48.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 00:48:28 -0800 (PST)
Message-ID: <c4669d31-ffee-e83c-4a45-370b1cc27910@linaro.org>
Date:   Thu, 10 Nov 2022 09:48:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2] dt-bindings: media: Add Omnivision ov8858 binding
Content-Language: en-US
To:     Nicholas Roth <nicholas@rothemail.net>
Cc:     devicetree@vger.kernel.org, mchehab@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
References: <c522c639-db0c-c1c4-0281-5dc524a8a86e@linaro.org>
 <6F5319F3-FDB2-405C-99E1-A9EC64264FD6@rothemail.net>
 <24ecc077-fc1d-5270-c901-9722ab7b68b1@linaro.org>
 <CAD2rFCqrJyTz1KXXK3WTiih7LTfAW07k8V19yQhA6_LeGiqfRg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAD2rFCqrJyTz1KXXK3WTiih7LTfAW07k8V19yQhA6_LeGiqfRg@mail.gmail.com>
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

On 09/11/2022 17:26, Nicholas Roth wrote:
> Happy to reply inline next time. I'm still getting used to this format
> :-). Here's the context around my clock frequency question-- I'd
> really like to understand this better:
> 
>>> +  clock-names:
>>> +    description:
>>> +      Input clock for the sensor.
>>> +    items:
>>> +      - const: xvclk
>>> +
>>> +  clock-frequency:
>>> +    description:
>>> +      Frequency of the xvclk clock in Hertz.
>>
>> The frequency of clock should go via common clock framework - you have
>> get_rate and set_rate. Drop entire property.
> 
> I am trying to be consistent with the ov8856 driver and bindings but
> would be happy to change. I’m not familiar with that framework though.
> Is there somewhere I could read about this, including the driver and
> device-tree changes I need to use this?

git grep clk_get_rate -- drivers/media/i2c/

For example imx219 or imx334.

Best regards,
Krzysztof

