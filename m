Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7547633BBC
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 12:47:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232588AbiKVLrS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 06:47:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233469AbiKVLqr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 06:46:47 -0500
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AB5EE0D0
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 03:46:39 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id d20so17599756ljc.12
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 03:46:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1W+tOmbzUugt5vguuunNAxGrxj0Uj2FDTeFT7UD9l44=;
        b=krhCVAgtgJLZ8truxVyZDebiAfqURsL66fLWMyF5wXZmLTkyKKpJHsTcmMuchGXbE3
         JLLvCA8UGdXSZIKE80o8wpFD8A+JzecC4oVvXihdivYfV1ceLfO+PYBkQ79iZ2wsBeUl
         5aK/NoUkymxEPE26t/E+LpaqvYW2PVt+kc3y5csD3OY9watR2AztrTQPnKAT9ntsM45q
         L+hjDvuB74QFskcVpbAob8KQD8+O/8vgCgUAznUFNpR1diZs3tVJwVRE6YPSkrBjrdQB
         tAffYYPtFQ+3ZWFlEkpzcBtHTX3CfFguLBQ6QXBTfXWNAK6v5OnjKG4FZx8WoIjyC4iq
         gf5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1W+tOmbzUugt5vguuunNAxGrxj0Uj2FDTeFT7UD9l44=;
        b=g1FvN42CahJzNh4QbOprVnQqKYX1aycE52DDTt4n4ZLg4lX9bRtDuuK4W53bitQYEB
         DYMwSUb7Zv8cA6MSO6SB3B2fTWy4xDeoSR4m0Wt7bBaeY4n6hChPA1shxPvuX2JlwPz8
         qNjTg5y4V3bZFhKqurd333/MZsbWj0lyngTCCnFKNA19XHyDEBF8cBxn4Mab7MJu2Ho3
         6jjkb5eDIUkBkbN5HpAfpuXq6yW3HB1nZmn9oklSUStHHXdyk+jrrpAfmsX1Lgqn0W1k
         OX4SWTEtAX3FAGcZIKT0JpwbZoQaSis9ueX8FyVUCFa3pkk6X62PI9iXxbI4U2c4PKuR
         tmEw==
X-Gm-Message-State: ANoB5pmVFyadKLd1fR/UrwHKtUmkhRsz42ym9z22UwoPuOJ64+k1Bl8S
        JzFrBuvkcuvjfmmNhtgRpHKwUA==
X-Google-Smtp-Source: AA0mqf7yHziI69XD7Hs4YK/aTyB0HwrVYxBFoK303E/EPLxgJ96PE4jAY5g0QjOA6QxxXuBvPZDVWQ==
X-Received: by 2002:a05:651c:322:b0:277:ebb:3465 with SMTP id b2-20020a05651c032200b002770ebb3465mr3488267ljp.308.1669117597658;
        Tue, 22 Nov 2022 03:46:37 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id q3-20020a056512210300b004a8b9c68728sm2479439lfr.105.2022.11.22.03.46.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 03:46:37 -0800 (PST)
Message-ID: <fbc13bdd-68f7-cc78-57a0-4efe62431cc4@linaro.org>
Date:   Tue, 22 Nov 2022 12:46:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 2/5] dt-bindings: pwm: Add RZ/V2M PWM binding
Content-Language: en-US
To:     Biju Das <biju.das.jz@bp.renesas.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
        linux-renesas-soc@vger.kernel.org
References: <20221118131641.469238-1-biju.das.jz@bp.renesas.com>
 <20221118131641.469238-3-biju.das.jz@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221118131641.469238-3-biju.das.jz@bp.renesas.com>
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

On 18/11/2022 14:16, Biju Das wrote:
> Add device tree bindings for the RZ/V2{M, MA} PWM Timer (PWM).
> 
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Thank you for your patch. There is something to discuss/improve.

> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - power-domains
> +
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - renesas,r9a09g055-pwm
> +then:
> +  required:
> +    - resets
> +
> +allOf:
> +  - $ref: pwm.yaml#

Put the if under allOf:

allOf:
 - $ref...
 - if:
     then:

This allows easier growth.

With above:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

