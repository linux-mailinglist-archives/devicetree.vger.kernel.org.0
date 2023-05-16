Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6461C705344
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 18:11:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230223AbjEPQK6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 12:10:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231808AbjEPQKj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 12:10:39 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1116A267
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:10:05 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-51090206721so928754a12.0
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684253402; x=1686845402;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MXN9fC68+0wOwoUgN35mdkv/ToBeX0eP1GANhqJ616g=;
        b=jqfmezc+iDuiL4+8rcw0FLasJ7cFfDAZwrNmiOdNKwXYGyN4f3pviQBrfwZ6n8w1os
         eAgW61Oetq+gQnl+qln0X+SZvogfP/Gwnp3ygALuRXi6KiJK5rtdlPU8xVetofXKhYHz
         8G0jg/9LvWFNuiXY2SFqWJHoG+S3ZWmIZ6UdQXiC4rif8xvI6/LwwLhLkDkL68cXIiIs
         JedLKOK4v0JhelSF9VIYo20VOiLpUkSeH/cmgpjSktR6xg/VZQc9ExcMnzLPJiYDi6DY
         yFrX+ouiUcFnzcl8iAmZEzfT7SWAGLnh8ewQjVbpMIUkzDjTvZ7fxlPVK4nLMWp6zzVM
         xKJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684253402; x=1686845402;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MXN9fC68+0wOwoUgN35mdkv/ToBeX0eP1GANhqJ616g=;
        b=YLjzzKMnd2WkckXZULbnn2d7/VkTGZK1wI3trQmPxeFsZmqhQFdXeouhvZqU2g0vUv
         H/aANsWI3a2OL3BieC9pvQdhH6xWysJdov40AXWPQJByz0cZtnITkU9VfBRV9TYG25uA
         0dIlKKH6ABj4+qHEs3ahGQBWfUBwNDVQmrRp6uaHuDc41rC2IZZ64ny18Q2+Ao2LJq1c
         Vo7hEvbLUf6TgwcVI/9FmB408Z+WL+yKByOD520MH4KzN7ZZi2H2l8S8QK7IZPkb2q2H
         IxCXhCG8zofuGbwiyQHz3wL8nrpMPQgKj0Kmc+B7Tmzycp0HBLgRU+RAAd8dUksCAw2s
         bqVw==
X-Gm-Message-State: AC+VfDxAFMyJLB2keRSpApt6nTanX0XLo4g7Ut2oW3wXo6EEZKYP+w9l
        /mtvSjKd/loOxRgJWhedmhXg5A==
X-Google-Smtp-Source: ACHHUZ6bPH/QwuPvuWQmbb+0AoyFih81eO5OGQQ8+edrJxwWAeWmGVztoB1iBsg6nVRrxFd1f16Qwg==
X-Received: by 2002:a17:907:94c3:b0:969:e7da:fca0 with SMTP id dn3-20020a17090794c300b00969e7dafca0mr26907708ejc.8.1684253402008;
        Tue, 16 May 2023 09:10:02 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:77d1:16a1:abe1:84fc? ([2a02:810d:15c0:828:77d1:16a1:abe1:84fc])
        by smtp.gmail.com with ESMTPSA id hz20-20020a1709072cf400b0094f4d2d81d9sm11021871ejc.94.2023.05.16.09.10.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 09:10:01 -0700 (PDT)
Message-ID: <e2819075-c41f-716b-023f-fb1ad13a3466@linaro.org>
Date:   Tue, 16 May 2023 18:10:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] ASoC: dt-bindings: nau8315: Convert to dtschema
Content-Language: en-US
To:     David Lin <CTLIN0@nuvoton.com>, broonie@kernel.org
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, YHCHuang@nuvoton.com,
        KCHSU0@nuvoton.com, WTLI@nuvoton.com, SJLIN0@nuvoton.com,
        ctlin0.linux@gmail.com
References: <20230516054944.1081808-1-CTLIN0@nuvoton.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230516054944.1081808-1-CTLIN0@nuvoton.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/05/2023 07:49, David Lin wrote:
> Convert the NAU8315 audio CODEC bindings to DT schema.
> 
> Signed-off-by: David Lin <CTLIN0@nuvoton.com>
> ---


> +allOf:
> +  - $ref: dai-common.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - nuvoton,nau8315
> +      - nuvoton,nau8318
> +
> +  '#sound-dai-cells':
> +    const: 0
> +
> +  enable-gpios:
> +    maxItems: 1
> +    description:
> +      GPIO specifier for the chip's device enable input(EN) pin.
> +      If this option is not specified then driver does not manage
> +      the pin state (e.g. chip is always on).

The only thing driver is doing is to toggle this pin. If it is missing
the entire driver is noop, thus above comment is a bit funny. It
probably should be mandatory pin. But I see it was there since beginning
so ok.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

