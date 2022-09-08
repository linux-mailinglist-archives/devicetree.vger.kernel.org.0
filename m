Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA17C5B1CFF
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 14:30:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231504AbiIHMap (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 08:30:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231364AbiIHMam (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 08:30:42 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CA11ED3B5
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 05:30:39 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id z25so27491072lfr.2
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 05:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=2JSg0Md2p+CmGWD53/F8gqr+5LvUMV5bnzBDJLc4OKI=;
        b=eMTPaR9UusL0OSdBjzBcBwHHo5rTFZoed5MAf3MoxqpwZiOS2o4AVhXuTfBv1A6roi
         xFpIRmlJ9ijOOADtQYkTQ4AfaCb4dQTCGoSwzsf5l4TRApHC/6Kqat4/AhPrsVBfAx7+
         bLp+CQu55dSmzu2OkfbtUCnnBvXVXKEV4PCZbO2YSJkwsMI7tCndCDGijlIl4vCt+0ZR
         bliRvewnIn4FFr+LaA1HS7javO398yDMSY2vTY1Y7anPRYF2ShtoiFO0dr+GAM/KcCgR
         CesJDHYH/lTFLMaKv08S5q+RBCG4cmZX9UkSnxKaLBtCgrANs7R9oVET5+L5OfFJG/wD
         9kug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=2JSg0Md2p+CmGWD53/F8gqr+5LvUMV5bnzBDJLc4OKI=;
        b=1ayFOrl0jTu5J++dW0hyRPPb0oUH9rUoJN6qt1lM0Y4JH/d1CiMJH0uXB6BGWC5Zcs
         c59WMnCgv2dK8kJpVb9sK83TuIRwuxQGHiiHXtX3BNYG2BxC8haYUBlQEcZf3qxXb6pO
         ikNFkuqhQnxhabYdY34H1qhw9Vu520wfR02y1LFoEucf5VJa2vbPj7sKm7Bg3DCJfgsp
         Yn5qPG0axt0HPOxh/hmae9LFadUhAmNThi1wSVghMKNWBkWh4GmTB1OorFXoRTaQdnc+
         v8mPkTjMhns8Dh8N2Vk9eACQ1cwuvZv9wIhfTArjqrQ8SyaeVTpLBzcqtexiaPqZz5Xf
         x4pA==
X-Gm-Message-State: ACgBeo3+0DpHqsGtcylqLmS6ODju+pIoE1BifXOW3fcUHUXb+2qjKdcw
        cLBu0K4ZtY2Frx4qBl+MUwF5eg==
X-Google-Smtp-Source: AA6agR4NJE0rWlxTJEd4+0cxqTYjfu1vyxY2Vtc3G3pCZlvlIpmRcM8RQPfIr4TGPFo/GpM8RsuZ4Q==
X-Received: by 2002:a05:6512:b12:b0:492:daa9:75ea with SMTP id w18-20020a0565120b1200b00492daa975eamr3025153lfu.297.1662640237478;
        Thu, 08 Sep 2022 05:30:37 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v7-20020a2ea447000000b0025e0396786dsm3163481ljn.93.2022.09.08.05.30.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 05:30:36 -0700 (PDT)
Message-ID: <9aa29d74-b1fc-d00e-dee4-57f277a366ab@linaro.org>
Date:   Thu, 8 Sep 2022 14:30:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 06/13] dt-bindings: serial: atmel,at91-usart: Add
 SAM9260 compatibles to SAM9x60
Content-Language: en-US
To:     Sergiu Moga <sergiu.moga@microchip.com>, lee@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
        claudiu.beznea@microchip.com, richard.genoud@gmail.com,
        radu_nicolae.pirea@upb.ro, gregkh@linuxfoundation.org,
        broonie@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
        jirislaby@kernel.org, admin@hifiphile.com,
        kavyasree.kotagiri@microchip.com, tudor.ambarus@microchip.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-clk@vger.kernel.org
References: <20220906135511.144725-1-sergiu.moga@microchip.com>
 <20220906135511.144725-7-sergiu.moga@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220906135511.144725-7-sergiu.moga@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/09/2022 15:55, Sergiu Moga wrote:
> Add the AT91SAM9260 serial compatibles to the list of SAM9X60 compatibles
> in order to highlight the incremental characteristics of the SAM9X60
> serial IP.
> 
> Signed-off-by: Sergiu Moga <sergiu.moga@microchip.com>
> ---
> 
> 
> v1 -> v2:
> - Nothing, this patch was not here before
> 
> 
>  Documentation/devicetree/bindings/serial/atmel,at91-usart.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/serial/atmel,at91-usart.yaml b/Documentation/devicetree/bindings/serial/atmel,at91-usart.yaml
> index b25535b7a4d2..4d80006963c7 100644
> --- a/Documentation/devicetree/bindings/serial/atmel,at91-usart.yaml
> +++ b/Documentation/devicetree/bindings/serial/atmel,at91-usart.yaml
> @@ -26,6 +26,8 @@ properties:
>        - items:
>            - const: microchip,sam9x60-dbgu
>            - const: microchip,sam9x60-usart
> +          - const: atmel,at91sam9260-dbgu
> +          - const: atmel,at91sam9260-usart

This is weird. You say in commit msg to "highlight the incremental
characteristics" but you basically change here existing compatibles.
This is not enum, but a list.


Best regards,
Krzysztof
