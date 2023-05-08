Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EAC66FB50D
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 18:28:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234114AbjEHQ2B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 12:28:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234075AbjEHQ2B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 12:28:01 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E36526A4B
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 09:27:58 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-9660af2499dso526062766b.0
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 09:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683563277; x=1686155277;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g/h7eE7lBNuJ7w4njRPFgVZZXrbjnDfdO/62S8a6RFk=;
        b=bp95qD2SATCc85d2+/5RZbItrXw/jQhI2838uQBXGRKGy4oxzK2zUwuStQKO+PS6aC
         n0mIyKpbdzibhoT8m65Zt18TKOQkRaEIG3bwdSSwdYhc88fDi6dqRh88A/g+NemdzNAe
         NeKdd2T/jx1lk+Vr4xOo5i6l97c+UZ33ryQ2vzxTRerrV5WZv8SGBTCbIfpCEw2h3Yzr
         oZ5svW+c3XFGrsl/v3/UEHVXa2BLV9BLXP+QZuHeuEGnJ8Ixs6vkPmR/GOSvtdKlSlxO
         D/DmnQN+Rf7aOADOX3DSeZm4qAr/znLjw0lr8d2m1VKpkcFGcjjhKtG+K4ojIn5EBN0I
         FfKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683563277; x=1686155277;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g/h7eE7lBNuJ7w4njRPFgVZZXrbjnDfdO/62S8a6RFk=;
        b=NAe2PKlCisDCgQhbgXpP+94boxmNgyinrakW6k91DMLv+csOH0avTF5Gqb+8Hydmjo
         nSlVaoyXIUXQSURzSNu/fsIj4HsUPE5nNW0KiM6C0nJHO9NnVpZGr60v3OgW2YvzUHve
         hdJ1hD+Rc1BbVU4JSnbcXvUWI0BKnEpK4nm4cz57MkgSSHr1NokXMCHQZXRN7XlsCkZy
         kVKUWLYIhxUw+/dOPReRRrn1Hw5epQ/Ma9VvfEIL7HwoXlfmvdTIqApdTyN2uRg2qP+X
         vIfMgXuQzOg3EuojcrzDoCO4dNof4es26jFyZzigos7kriQhojMpts8A73w+4iRSHbxn
         XOCQ==
X-Gm-Message-State: AC+VfDxHGVghxQktjnOLdNC3Axb0mRq+9Y7XVafleOFWnmLdLd9TsfVE
        TRCchcXLOcTQ5UTT0FvdfacKNw==
X-Google-Smtp-Source: ACHHUZ7NC5gZ3eJbGw/lcE2UuBrS77FeWsGT3yUd1Mpr9nMm9IBtV2NIsWJI3eqW76O/Ry4WITjeIA==
X-Received: by 2002:a17:907:1c01:b0:966:335a:5b0b with SMTP id nc1-20020a1709071c0100b00966335a5b0bmr6576117ejc.18.1683563277296;
        Mon, 08 May 2023 09:27:57 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:50e0:ebdf:b755:b300? ([2a02:810d:15c0:828:50e0:ebdf:b755:b300])
        by smtp.gmail.com with ESMTPSA id hf27-20020a1709072c5b00b0096557203071sm144903ejc.217.2023.05.08.09.27.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 09:27:56 -0700 (PDT)
Message-ID: <869548f4-9748-a8a5-1b13-ef267810d80b@linaro.org>
Date:   Mon, 8 May 2023 18:27:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 5/5] dt-bindings: clocks: at91sam9x5-sckc: convert to
 yaml
Content-Language: en-US
To:     Claudiu Beznea <claudiu.beznea@microchip.com>,
        mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, nicolas.ferre@microchip.com,
        alexandre.belloni@bootlin.com
Cc:     linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230508104801.445261-1-claudiu.beznea@microchip.com>
 <20230508104801.445261-6-claudiu.beznea@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230508104801.445261-6-claudiu.beznea@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/05/2023 12:48, Claudiu Beznea wrote:
> Convert Atmel slow clock controller documentation to yaml.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  .../devicetree/bindings/clock/at91-clock.txt  | 30 --------
>  .../bindings/clock/atmel,at91sam9x5-sckc.yaml | 70 +++++++++++++++++++
>  2 files changed, 70 insertions(+), 30 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/at91-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/atmel,at91sam9x5-sckc.yaml
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

