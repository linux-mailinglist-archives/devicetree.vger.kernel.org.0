Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0141F72AD73
	for <lists+devicetree@lfdr.de>; Sat, 10 Jun 2023 18:39:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230084AbjFJQjG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Jun 2023 12:39:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229989AbjFJQjF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Jun 2023 12:39:05 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 387C63C2B
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 09:38:49 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9788faaca2dso474588866b.0
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 09:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686415128; x=1689007128;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V/IK3y3lAajqv953jEwAcRgSDGZ5+ngtefnLO3SjzOE=;
        b=Ce4WSK769ea8Oxg8QQjhmSAWOczAq9c/FzE7d2Qf5i3hWR/FlWJfP0CUrAsLbcjbya
         cP/ROrfCjqLUwtbK9pEctvTHNrpGOu8tI7IUW9CZZtz8GqNfPlqfMGZHdtX+G2aDpL8H
         iR5v9zz8FV3siaKI87lzSunQBRETu5Vs/d7J6agdaweoC6GkJUnhvRCLmvYc3atBKcD/
         SXxSOHwj+u4x0ZM/xPNdemq7uXIlJl8bVE1r89aaoZb8K5MCtrzIZGX9HPy/WsMXIwmA
         4QkcVzS5Y3G3xIG4cNcfjWPKdWPTOF2y/aGVoDpNlc7ldHs1QjEut9pnaOKNMGZ6at2c
         q5bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686415128; x=1689007128;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V/IK3y3lAajqv953jEwAcRgSDGZ5+ngtefnLO3SjzOE=;
        b=YpxVi5rdUFJzRfuwOmqYmuEM0RY3xsHD1E55yxUoEy9sbylQxXC3shuq5A3nxqmR16
         rkCXeSwh1AmMyAXbU9x1OesrHdL/t5hvAey61j0J/Q7joSyNeCPUZbRzjJv/tJ2UaE48
         GQDlLkADmcDdTIXUB1eyVuHbazLvewyiYzDGhEmh293BjOHSZAojyGf83tXDonm7pZb7
         FeOH88LEVZHw8e9tYsX6WRYc90Nc7S9t2P793e8kJzIIANJovyBD6tQKq/5RiyUsTR7h
         +61vczpsy1miwSLv3vlFgt3SAXSmT4URJlscf3Tqhhp1l5FVh7muT9ZY+FaJWEEzUIGM
         kWcg==
X-Gm-Message-State: AC+VfDxydw2HLXq+VP/Jl+8fO03m/nXNcEByNMCUbzDoZZlS9+DEQii1
        T/zaOEJUa/7vlPx1owT4Nwf77g==
X-Google-Smtp-Source: ACHHUZ7S4a5+MvZbWH/1o0Fq16e0+n0hmSgAsAmZmXouOm/2AQVgs8AxE/kvpVAABCdu1nDDjZg5iA==
X-Received: by 2002:a17:907:7244:b0:974:55a2:cb0b with SMTP id ds4-20020a170907724400b0097455a2cb0bmr5084226ejc.55.1686415127691;
        Sat, 10 Jun 2023 09:38:47 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id n21-20020aa7c795000000b0050dfd7de30dsm2985086eds.94.2023.06.10.09.38.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jun 2023 09:38:47 -0700 (PDT)
Message-ID: <ada8dddb-9794-538d-19dd-992894580051@linaro.org>
Date:   Sat, 10 Jun 2023 18:38:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 11/18] dt-bindings: clk: amlogic,a1-peripherals-clkc:
 expose all clock ids
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230607-topic-amlogic-upstream-clkid-public-migration-v1-0-9676afa6b22c@linaro.org>
 <20230607-topic-amlogic-upstream-clkid-public-migration-v1-11-9676afa6b22c@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230607-topic-amlogic-upstream-clkid-public-migration-v1-11-9676afa6b22c@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/06/2023 12:56, Neil Armstrong wrote:
> Due to a policy change in clock ID bindings handling, expose
> all the "private" clock IDs to the public clock dt-bindings
> to move out of the previous maintenance scheme.
> 
> This refers to a discussion at [1] & [2] with Krzysztof about
> the issue with the current maintenance.
> 
> It was decided to move every A1 peripherals ID to the public clock
> dt-bindings headers to be merged in a single tree so we
> can safely add new clocks without having merge issues.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

