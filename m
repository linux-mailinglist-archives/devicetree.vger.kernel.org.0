Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0D78522D28
	for <lists+devicetree@lfdr.de>; Wed, 11 May 2022 09:24:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242665AbiEKHYF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 May 2022 03:24:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231971AbiEKHYD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 May 2022 03:24:03 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CD5B1B12D8
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 00:24:00 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id d6so1443172ede.8
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 00:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=cCXXWwJzIMdAZKFOw/mKJ0j8XdlH3CZr6xlDP/lClgM=;
        b=MGS8DP7QyP0OM8eXixWMdJDSacfGLRKfeKa8pHid+EQsK5/L/vC91MQ1DquPtnDlDO
         tE7wI6UN1Lt8uLv0EGczgwwWsF23scuc2CMh7ReucyBPjfRV/XlSL9kuWjljTtMc8TwR
         41cZ4XxvubKLrUVusIxYlq5WLYSLzjUscSPIFbbx1Yc5S3GRiYUgWeLtitYEdpbsRTPv
         QclNJGyyCuMFp6e+nku1Gz6J+b32FlgbqA9qFGoCRJEjEEclRF34tfBUH6vlvzuPIDf6
         4NBok55o2Ndro11jMCz1p+ITNXYepTQT6huIkWKbs1CtXp6IAAO6kJ1lAOOTXRAvlFgy
         a/dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=cCXXWwJzIMdAZKFOw/mKJ0j8XdlH3CZr6xlDP/lClgM=;
        b=HbqXHZUwR1Er1A1hyF2PZ+PuvysBH802HhAXJuYLyLPMONpiGHos/MtYBYFqsZwKL1
         tpSb26REe2E7rlTyMy/ZoNJhvOBa/VGiypLlZN7autlAD0rWdz4KkDOkp8LilQopJQF8
         6oTuqCtQYvFdnPRHkr0Rk0F3vn+M4dU3xwl09c407Uw4xLvdJ4CY5TDqI1oR9B/v9TAg
         efpyMt7EBR2pkkexdcnCAl+MqYndeZjq3jOl6OfqwLzHu2ZlPu37BpolgAuAZ9oEFfyz
         owxfRWgua7Dj9p3iLhyam/Tki/JHNldXlg5+am1dsnQAeqAM6GnKd+sxtC9PU+EKqsZt
         XXAw==
X-Gm-Message-State: AOAM532+lRizIAVPXtAVn00A2+zhxb4+Y2eJdcRgb05EW8q7n0WgbQPu
        owrctuxH4i5TPWQi3jPH3/jMeg==
X-Google-Smtp-Source: ABdhPJyBEz8ER0lMbS2x4R8+BOYqgNo0DIdwGqHile4MHvdF4zsqCX08J9gREnSEPHC5no2E7MFIXA==
X-Received: by 2002:a05:6402:4304:b0:427:cb08:b085 with SMTP id m4-20020a056402430400b00427cb08b085mr27485799edc.194.1652253839068;
        Wed, 11 May 2022 00:23:59 -0700 (PDT)
Received: from [192.168.0.253] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id c6-20020aa7c746000000b0042617ba63b9sm717411eds.67.2022.05.11.00.23.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 May 2022 00:23:58 -0700 (PDT)
Message-ID: <7376f263-3443-06a0-5ef6-d11be1acd836@linaro.org>
Date:   Wed, 11 May 2022 09:23:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH] dt-bindings: gpio: gpio-mvebu: convert txt binding to
 YAML
Content-Language: en-US
To:     Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
        "brgl@bgdev.pl" <brgl@bgdev.pl>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
        "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
        "lee.jones@linaro.org" <lee.jones@linaro.org>
Cc:     "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>
References: <20220510094404.1020307-1-chris.packham@alliedtelesis.co.nz>
 <6db35313-5dcd-c9f2-724c-d157a835c9fc@linaro.org>
 <eaea4c27-05b3-d26f-d091-99e07d14aae6@alliedtelesis.co.nz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <eaea4c27-05b3-d26f-d091-99e07d14aae6@alliedtelesis.co.nz>
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

On 10/05/2022 22:55, Chris Packham wrote:
> (sigh resend, Thunderbird decided that this needed html)
> 
> On 11/05/22 01:40, Krzysztof Kozlowski wrote:
>>> +  marvell,pwm-offset:
>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>> +    description: Offset in the register map for the pwm registers (in bytes)
>> It's the same as offset. Why allowing both? Isn't one deprecated?
>>
> This one is in addition to offset. The "offset" is for the gpio 
> registers "marvell,pwm-offset" is for a separate pwm related register 
> that is not in the same contiguous block.

I see now different in the description. Egh, confusing. But the
confusion was done earlier, so let it be.

Best regards,
Krzysztof
