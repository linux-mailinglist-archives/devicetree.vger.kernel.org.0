Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 564FE62F710
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 15:19:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242181AbiKROTG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 09:19:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242355AbiKROSm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 09:18:42 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC0C7391F3
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 06:18:40 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id d6so8401620lfs.10
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 06:18:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=47uUJ1rSQsietKEVLcYW7wfhoN5/4R7ZRzOSfe6CNVM=;
        b=p4IIvzIXlmyGxBdE1c0AnPo9oJv0zT8vNConUFHGiNm7i3lZuGsuuKsNkZvVnKqTgK
         On8qDc7hl6YWnBa5yVBAzrsW9SrrKqGJPaX0ivkyZEyJi2VXvfee4sl+B16YYQJ9JXAd
         tRVqnYYm1vDgsBpAb/s800YVgk2/mYCYdsPcskyT+QC87/W+ouLNTcjEhWsvoXTLMSAU
         M57F6CcVXILTUlt1t6vyR2oo+3plXUyVqttTPoeKpWnNjn9OFdwTbjHcC9CLgvH4pEG0
         6e7ZdGIORU147DrAWiBDUwMsSI1hWo1SeoOaUb46ST1xr9LtgYkXZcSN7NgwgGILgFWu
         H89A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=47uUJ1rSQsietKEVLcYW7wfhoN5/4R7ZRzOSfe6CNVM=;
        b=qYfFnvDY2peF2tgaAjX7G3AyhX6+OwW4QRG4l+dxaC9trmDDSe+ThhqQNP/e0C4J8h
         kjxUk6ocXogYPifN7tWFHUY9JNAsfyH9Sdx415W/vegqoqzTXTF+/MDiHkdbcEsuhqyp
         jqdfAoRQYS5cm2KPDG2km/USmqL2x0mAiHluqBuYVBhJxldVouLdeXHZ9eXjtGtQd4qI
         kx0gx4Iot0LO9GQcpi0bBGhk8Ln33jXCLQATpEAQNZ8qCFzSjMrsYKNXNA6voEWYMUa9
         f2ARYYutH42FMVp0Zhrhyi4mW9ebF7tImcOC08wlxdm9gxjPCiy3OYtL38l4DKxz+c+3
         HsBQ==
X-Gm-Message-State: ANoB5pnJ9VoU+2v/gRWH2/f6PevanQfdM6nwN+iTzBS1XjE2hRXP+nIQ
        +XGKYNIjEpW8H4fek4wO+ycCVw==
X-Google-Smtp-Source: AA0mqf6kTAmfu1Qzou07Pfde51WjI3d77r6jj6OLnG4XTcMztbWXTvuP+DDy7OkRdutrvx/J8+tjQA==
X-Received: by 2002:a19:f713:0:b0:498:f36a:76fa with SMTP id z19-20020a19f713000000b00498f36a76famr2617957lfe.532.1668781118606;
        Fri, 18 Nov 2022 06:18:38 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id a17-20020a2e9811000000b0026dc7b59d8esm675289ljj.22.2022.11.18.06.18.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Nov 2022 06:18:38 -0800 (PST)
Message-ID: <956e7470-a531-79e6-9f3a-d764d2af9421@linaro.org>
Date:   Fri, 18 Nov 2022 15:18:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/3] dt-bindings: input/touchscreen: Add compatible for
 IST3038 and IST30XXB
Content-Language: en-US
To:     "Lin, Meng-Bo" <linmengbo0689@protonmail.com>,
        linux-kernel@vger.kernel.org
Cc:     Markuss Broks <markuss.broks@gmail.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "open list:INPUT (KEYBOARD, MOUSE, JOYSTICK, TOUCHSCREEN)..." 
        <linux-input@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
References: <20221117163440.23394-1-linmengbo0689@protonmail.com>
 <20221117163440.23394-2-linmengbo0689@protonmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221117163440.23394-2-linmengbo0689@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/11/2022 17:34, Lin, Meng-Bo wrote:
> From: Markuss Broks <markuss.broks@gmail.com>
> 
> Imagis IST3038 and IST30XXB are variants (firmware?) of Imagis IST3038 IC,
> add the compatible for them to the IST3038C bindings.
> 
> Signed-off-by: Markuss Broks <markuss.broks@gmail.com>
> [Change from IST3038B to IST3038 and IST30XXB]

So IST30XXB is not a real device name?

> Signed-off-by: Lin, Meng-Bo <linmengbo0689@protonmail.com>
> ---
>  .../devicetree/bindings/input/touchscreen/imagis,ist3038c.yaml  | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/input/touchscreen/imagis,ist3038c.yaml b/Documentation/devicetree/bindings/input/touchscreen/imagis,ist3038c.yaml
> index e3a2b871e50c..85390f6ffe36 100644
> --- a/Documentation/devicetree/bindings/input/touchscreen/imagis,ist3038c.yaml
> +++ b/Documentation/devicetree/bindings/input/touchscreen/imagis,ist3038c.yaml
> @@ -18,7 +18,9 @@ properties:
>  
>    compatible:
>      enum:
> +      - imagis,ist3038
>        - imagis,ist3038c
> +      - imagis,ist30xxb

No wildcards. Real model numbers.

Best regards,
Krzysztof

