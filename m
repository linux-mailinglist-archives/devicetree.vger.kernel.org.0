Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B05E5B21C2
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 17:13:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232911AbiIHPNo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 11:13:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232885AbiIHPNo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 11:13:44 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 169BDF3409
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 08:13:43 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id x14so12886312lfu.10
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 08:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=y/RNcpUkEWX2LV+zjgSM9Uw7i5Cj3xbd4iTiTdZT/kk=;
        b=xl/3NoNrq/EXUAgr7Z+O5Qoq4OauCrG6GzaL+RLlsNhWOrObQMgPAt/K0vf8gqgSGk
         6Sd3OBdw67hHE/2QfClr0K0vxJhuqsuuxmEA3GF/RLbFUyHJIT4xU8JCkK5j4ZNQ5xTk
         FgsDe5Ea0RNm7+u78D+7yDXSAJxP1S977y/xmhhSPO99gHHl7QcP+u9mbnJJOL2vP3bI
         i35ByUQYoDMZ5iRoTCpQGZCTeTMfK+9zyxYxvSeCBLvHDxoU7UAgE3jv451q+7oVsjjK
         iQ/wiryCXBgta1203Im73nLGUnZ557jbVxCxz9nCohitmKxR9ef+mFFFjvMkcRW+Dxwd
         /6/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=y/RNcpUkEWX2LV+zjgSM9Uw7i5Cj3xbd4iTiTdZT/kk=;
        b=ewSRFQNtOo/dOXX3zv7t7yNkQs1I7a4nkf+jYAuVamNgGI8NFYGevPVzum9G5ZoK95
         6qv5UTnqhlqMfNMBbUMHO8r/1azcgsWuUSmwjhjPD1/3sunSyC//h3HtWtHAVf543JWv
         xn9rgEIrkd9b6n+eB/Wge23PivNt7xF5rc4YI3MlGYwfCUbU8pm6YEyGgOVvdTDpp1vH
         Fjk0G4V+u/UXU/UHF0VY7A50Mhn9hj0lXHbC5F4Wp21bgU1ca1JvNOM5y/XlrVMfo7Dq
         BiTASS5sTZtsed3R5uLxKL75U4d2Ubcw7DrA5b3WxMLVwYc3aUz5XG6b9a0F9zWk/eSk
         nZ0g==
X-Gm-Message-State: ACgBeo27e6FrwWJ50yZVhCDBfGCeBOQ8vEaO/EBrGdpFoY/7FgYn+x09
        XF0x818dFnnpyBi8KBheV8uOag==
X-Google-Smtp-Source: AA6agR75JFHKV0BPvcqFQuQn9phiqLaNMb2dYuaOx73MIucJiD9m44koldSx05iGR8wOiKPMomeImw==
X-Received: by 2002:a05:6512:2293:b0:48c:f602:475d with SMTP id f19-20020a056512229300b0048cf602475dmr3298844lfu.232.1662650021457;
        Thu, 08 Sep 2022 08:13:41 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id b7-20020a2eb907000000b00261b4df9ec4sm3228178ljb.138.2022.09.08.08.13.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 08:13:41 -0700 (PDT)
Message-ID: <1af71097-1c23-cf16-5707-c1253949af3a@linaro.org>
Date:   Thu, 8 Sep 2022 17:13:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [RESEND PATCH v9 1/3] dt-bindings: mfd: Convert atmel-flexcom to
 json-schema
Content-Language: en-US
To:     Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>,
        lee@kernel.org
Cc:     nicolas.ferre@microchip.com, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, UNGLinuxDriver@microchip.com,
        krzysztof.kozlowski+dt@linaro.org, claudiu.beznea@microchip.com
References: <20220908150658.1839520-1-kavyasree.kotagiri@microchip.com>
 <20220908150658.1839520-2-kavyasree.kotagiri@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220908150658.1839520-2-kavyasree.kotagiri@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/09/2022 17:06, Kavyasree Kotagiri wrote:
> Convert the Atmel flexcom device tree bindings to json schema.
> 
> Signed-off-by: Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>
> ---

(...)

> +
> +patternProperties:
> +  "^serial@[0-9a-f]+$":
> +    type: object
> +    description:
> +      Child node describing USART. See atmel-usart.txt for details
> +      of USART bindings.
> +
> +  "^spi@[0-9a-f]+$":
> +    $ref: ../spi/atmel,at91rm9200-spi.yaml

Full path, so /schemas/spi/atmel...

> +    description:
> +      Child node describing SPI.
> +
> +  "^i2c@[0-9a-f]+$":
> +    $ref: ../i2c/atmel,at91sam-i2c.yaml

/schemas/i2c/atmel....


Best regards,
Krzysztof
