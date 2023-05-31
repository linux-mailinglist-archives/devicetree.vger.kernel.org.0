Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00A80718A5A
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 21:40:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230033AbjEaTky (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 15:40:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229484AbjEaTkx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 15:40:53 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F8199F
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 12:40:52 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-96f818c48fbso1079565766b.0
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 12:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685562051; x=1688154051;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Pobc0FZC6eSroL/2lHGSWPK4EdAbIGAq+x1N33jzXbs=;
        b=kfFl6UjQ4EwXR9O5rqEeCXLNFvrihpxmfNee25KH5BLrtviktGmFTbPdAlBFMtRHmy
         A/oqkPbSI5NZkj45ltLv4PAnSE+TGYjqg5HLNvHNOje1RBuby+fTk5j7nEZML8crztTA
         XLSGLqrCsWqJRt7vO8gNCPpd3x8QcMsBbXei2aodtMadWs0PWLs7TaSAs8jI1kVGcHDT
         3lUZVUfgt8hpg5W+VsynbKQwIZ7ZvMvaTTNj996Yc1LAF2sUth1tMWU6d5CK6XefF6yf
         vQ3MCtPoiTAu/SAhlYINVXxdxR7ypUnrS8SesuQFOtWOECK8qr+OMpvoysYFwDbacJHZ
         G9DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685562051; x=1688154051;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Pobc0FZC6eSroL/2lHGSWPK4EdAbIGAq+x1N33jzXbs=;
        b=hEV1ilwM4K7dEAv7Kr3G4Sc9FNu+lMQ0jNqWlk9QAd44ppjlD3wzM+XnWKNtaaoPjp
         JOUIIzrqlcklhwKFIA8Yuscu7a2SA7fRB5WlYxBgaXuCKevm9UHh+tyCErD+h+Nqa8OO
         VdnYfKd6HFGZFO6MVLcGV6FThO9MC8vw+ly/hM8k3Z1vJSXCr6nPPM8W7byudTwz31qP
         MEr5ZGUnqKF+BoGa7T52A0uozq25at9cjS8lRthElxta0exUFWQ+qoLNUemFkKSoOK6S
         igOwH5mgfSzLybsRfM5TTSkareq4FgGJyb0UQbArKKD/ePycb68oDAd/CHDx1TuBHNLI
         Vu3w==
X-Gm-Message-State: AC+VfDw+jIHHeP59yj1ISvKAA+gCcaUVsdxsiGk1G4WuoehSjNo6e3Id
        ArMSKFazIKbDxfOTTXdr6irkRQ==
X-Google-Smtp-Source: ACHHUZ6NOszzBlFtX4KUWAeQCIqCPlPa5liXWZCOZ+7MT+N4TdFLdIIAyRDgUmJ9D1GhTkhVXTGH5Q==
X-Received: by 2002:a17:907:c07:b0:970:164c:31b5 with SMTP id ga7-20020a1709070c0700b00970164c31b5mr6228000ejc.46.1685562050764;
        Wed, 31 May 2023 12:40:50 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id se24-20020a170906ce5800b009662b4230cesm9583865ejb.148.2023.05.31.12.40.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 12:40:50 -0700 (PDT)
Message-ID: <6699ec62-9eb5-8b9a-97e0-4b0d5f760962@linaro.org>
Date:   Wed, 31 May 2023 21:40:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 1/3] dt-bindings: nvmem: syscon: Add syscon backed
 nvmem bindings
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org,
        Daniel Golle <daniel@makrotopia.org>
Cc:     Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        devicetree@vger.kernel.org, kernel@dh-electronics.com,
        linux-stm32@st-md-mailman.stormreply.com
References: <20230517152513.27922-1-marex@denx.de>
 <1ad00eb9-7bcb-b93a-191e-7673c835c31e@linaro.org>
 <2ff8d48f-c069-6ece-7865-4268296618fd@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <2ff8d48f-c069-6ece-7865-4268296618fd@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/05/2023 05:29, Marek Vasut wrote:
> On 5/18/23 16:30, Krzysztof Kozlowski wrote:
>> On 17/05/2023 17:25, Marek Vasut wrote:
>>> Add trivial bindings for driver which permits exposing syscon backed
>>> register to userspace. This is useful e.g. to expose U-Boot boot
>>> counter on various platforms where the boot counter is stored in
>>> random volatile register, like STM32MP15xx TAMP_BKPxR register.
>>>
>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>> ---
>>
>> Let me also leave a note here - cross linking for all parties:
>>
>> Please propose a solution solving also mediatek,boottrap, probably
>> extendable to range of registers. Other solution is what Rob mentioned -
>> this might not be suitable for generic binding and device.
> 
>  From what I can tell, shouldn't the mediatek 1g MAC driver have a 
> nvmem-cells phandle to this OTP/fuses/whatever area and shouldn't the 
> driver read out and decode its settings within the kernel ?

Maybe, but since you both implement the same driver and similar
bindings, it's a NAK for having both. It looks like solution matching
both or boottrap is not really nvmem syscon (as you said).

> 
> That doesn't seem really related to this particular issue I'm trying to 
> solve I'm afraid.

It's similar in implementation, not necessarily in hardware.

Best regards,
Krzysztof

