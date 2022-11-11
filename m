Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D383362551F
	for <lists+devicetree@lfdr.de>; Fri, 11 Nov 2022 09:21:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232471AbiKKIV5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Nov 2022 03:21:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231615AbiKKIV4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Nov 2022 03:21:56 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4A4F41980
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 00:21:54 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id p8so7254740lfu.11
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 00:21:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RaXB6dN6ptekdk24JrkBO1mYR3sj0qJtXHnyugR9QHo=;
        b=a2g3SnvKK+xz2sLTjlgXMio5mgQbURrE6LawvamLerfbL6eLSdhUDPCIPevb/dnFbr
         Y7KnjrOgYh045wITt8Nkot3LveepWYCFC1txDsXBhLNne7ZzGdeis9E8I34Ewl1/Vcew
         no/tiezkwXS2HfLR2LlsPQJ2Qvr7G51IBgTLiby61DPCqjJAArYtq2rKDsfaNGudOK8g
         bU0F6sNXDijc0TkplafA4wvsztaKnz2VaVxYfw7aD+B7oicKI0RAiuv6hSwaKYkSl98V
         GiQN13fkkCQmatFEj9c4In6eToZO6ms+imQp3PmeQWnX4YSSAKlk1UnACGawwB9Sc9m+
         L3Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RaXB6dN6ptekdk24JrkBO1mYR3sj0qJtXHnyugR9QHo=;
        b=jvZnPcMMX5HrLxmS8p5gwzNogojp+FjPM1MUI/0RfC9l6aUx9WWWJjLC8q0J644dDY
         4GmzavCoDcf+/IgCgoDk21QesLDtniLJquo+ZjP0PnKUQbAfzRKAiU2CiUhdTH0yQPij
         DKvz46tHUNKuNrodLhKnej1tlC2+RwgrQCZWT6HgIhIH9NvrY2hcl8b4bkWhoqFCCmIZ
         6zeeHjVAyKkNST0CZFQeQv6u1dB7ANoVDhmnzn6FXKBUqQRRD0BeJaJIe4jQB9FYdjlZ
         0ywcWNw3/+lWrhQILwj5zDnoQVTEXKwin1+wzbK5xBxo7doKij0RkzmurQKi5XmUl8P5
         F1aQ==
X-Gm-Message-State: ANoB5pkrqGpIrbJqgJaLLIy2dkR+00jV8Bf7yFZcvlIW5CC3cbrrB8IK
        Wj/B4CLcEUJorL9VvqZ5hFUt3Bs3j9ZTlQ==
X-Google-Smtp-Source: AA0mqf5H8FEamvhBHsnS1Kb+wkjKZTuntz658YH1Sdaz0Lniv1d8nAxLjpLbjbvtqRkJtkzrb4z2ew==
X-Received: by 2002:a19:6553:0:b0:4b0:fbfe:84fb with SMTP id c19-20020a196553000000b004b0fbfe84fbmr367750lfj.417.1668154913117;
        Fri, 11 Nov 2022 00:21:53 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id f29-20020a05651c03dd00b0026e897e3236sm282161ljp.6.2022.11.11.00.21.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 00:21:52 -0800 (PST)
Message-ID: <affc49a4-ecbc-23c7-3d24-25cec1c302c7@linaro.org>
Date:   Fri, 11 Nov 2022 09:21:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: aspeed: add Facebook Greatlakes
 board
Content-Language: en-US
To:     Delphine CC Chiu <Delphine_CC_Chiu@Wiwynn.com>, patrick@stwcx.xyz,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Cc:     garnermic@fb.com, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, soc@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
References: <20221007055346.3484180-1-Delphine_CC_Chiu@Wiwynn.com>
 <20221111034828.2377-2-Delphine_CC_Chiu@Wiwynn.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221111034828.2377-2-Delphine_CC_Chiu@Wiwynn.com>
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

On 11/11/2022 04:48, Delphine CC Chiu wrote:
> Document the new compatibles used on Facebook Greatlakes
> 
> Signed-off-by: Delphine CC Chiu <Delphine_CC_Chiu@Wiwynn.com>
> ---
>  Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

