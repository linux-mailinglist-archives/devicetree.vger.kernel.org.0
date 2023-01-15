Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84D4066B1AB
	for <lists+devicetree@lfdr.de>; Sun, 15 Jan 2023 15:52:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230322AbjAOOwf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 Jan 2023 09:52:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231230AbjAOOwe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 Jan 2023 09:52:34 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEA70CDF9
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 06:52:33 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id mp20so16046246ejc.7
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 06:52:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2Yj3ZCXHbKRPY/verkHqKVV2Cn5cPlwC4PAo4402Q4Q=;
        b=iqw/8vxRAV1j4K+vf1puxs69rRZZNOsLn3Po3Wvob635y84Rs88b1q0Ve23rtKwAB8
         r5xL8BwntUVtjZBWb9lc61CHWl1mvtapmmTQv8NeXwhccnXIcYf5oZ86M1kasRckLOjb
         JgJAwgE+aR+Xs2ReBo6ya+2WjLg72YcuVnjGfFyonGFcYoBoY0QVTA5HaDUdRfB0wScK
         8TFXggBJej4KB6FS2Kl2lqxltiJsWdWa4jk9u2oBgkSnz1vYSh+qjhlQPt73I9DAdq0R
         r2NlSUOnLha9yMDDEE4/iN9J/W/KehPIhLSrhAXiPh5y6t+8KIHVNtIM8c9N6IAVP4bm
         yZXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2Yj3ZCXHbKRPY/verkHqKVV2Cn5cPlwC4PAo4402Q4Q=;
        b=SuRVeJh5Wwyb0JsgaQqOihrzINaHz0WPIUq5VnoWUnvDNlWIv2NDMgUadS/52QZ+Dv
         gSVAfXYfxbzV0WZfKjZD5vCMim3MUYFp34XhvQ4SgK7TJOc41yMjrFqbrOWZjt9Ac6qK
         rVZWy1zFynv2KwYyN/5f5KROHAURorZi0rX/gFinBr85igt52uXdph7FMox8Q3i83qGF
         8DUxTzkGuv0y9iRMFImRZ22gq4TSM/Sr3XEIpXuehqiYWMTtBIPmrk0REp4rT0dtNK1S
         TeEeOitR8zqrKIt613bhRacxtNvVSQAeFwUaEed+dEyNDJHYErXR5XU08qCQ1ot+pYsq
         Qzmw==
X-Gm-Message-State: AFqh2kqOdZRDba7yo+iK9q4XL+XZ9e/OHejbGOzHvkinA0CF1bssQDoz
        sIArZuGvEgMiW1AmD0mKEbavkQ==
X-Google-Smtp-Source: AMrXdXuiaVUL8PexVx8yHacmbIi/Aj8XME5c4Vcpg+doICTMFKAbvOswIjaRnFD+v5hTB7YgqWHpKA==
X-Received: by 2002:a17:906:d9cf:b0:870:ac36:268d with SMTP id qk15-20020a170906d9cf00b00870ac36268dmr202177ejb.35.1673794352254;
        Sun, 15 Jan 2023 06:52:32 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id r1-20020a17090609c100b007e0e2e35205sm10852102eje.143.2023.01.15.06.52.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Jan 2023 06:52:31 -0800 (PST)
Message-ID: <3d81a196-3b45-222d-a22b-4fb5a98f0ed8@linaro.org>
Date:   Sun, 15 Jan 2023 15:52:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] dt-bindings: phy: g12a-usb3-pcie-phy: fix compatible
 string documentation
Content-Language: en-US
To:     Heiner Kallweit <hkallweit1@gmail.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     linux-phy@lists.infradead.org,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <8f1b2db3-f17d-f192-c28e-cb34dfcaf63d@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8f1b2db3-f17d-f192-c28e-cb34dfcaf63d@gmail.com>
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

On 15/01/2023 15:24, Heiner Kallweit wrote:
> The compatible string in the driver doesn't have the meson prefix.
> Fix this in the documentation and rename the file accordingly.
> 
> Fixes: 87a55485f2fc ("dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert to yaml")
> Cc: stable@vger.kernel.org
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

