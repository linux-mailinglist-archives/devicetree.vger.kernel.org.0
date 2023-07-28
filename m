Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 798F8766D81
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 14:43:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236718AbjG1MnX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 08:43:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235351AbjG1MnO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 08:43:14 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B36B22D67
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 05:43:09 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-99b9421aaebso285024666b.2
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 05:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690548188; x=1691152988;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z+iuqBx3ekrCVidOhllN+DMVt0RJH/HxgzRnhtmgkRk=;
        b=jhmZ6nb9rdRM74KE1d31aXbj9qY8QbNw1AW+onH8CMQiI2u5oxP8VsyI4wwSTzGLe6
         R3GDJPe/khDxiPOu1MhaISrik2ADMdy5KvuoCmbNJn2h4BxPQxVEiVu4LmMlB9hw4QXw
         vsUXhFtiLD2GdDYVpz5Ej2YwGhCvwzTxBs3c4oyaXSM2nnJFaw1xPEms+R1xvOz3QFFt
         y1vjypb5JkUfgjbMNh+MiXQ8qbI8r9+nv3jCm+O+QxKCwn2BXPq0nHfX9Z/WnB00IW/9
         xlNgwBsJZ9Z/Dc/LkrCpi8filvPTGk/qL5NZFzbOTCauPURkqSXUw1fiSpUdSYRmJIyr
         GYBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690548188; x=1691152988;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z+iuqBx3ekrCVidOhllN+DMVt0RJH/HxgzRnhtmgkRk=;
        b=bk16Bs9n5eMPpbAc7sg5tD4RyQx8y2LIg7AF54od98xPe0Ql9dEK+Hkn0GDmQk2KQi
         R/r8Wq1dUabiQajsp48xXZ7SDbwsLXfC7PesGsjY7E6dSrAUW7cEmn388bw8GR5b/9Yz
         mTdibNnqzQ/EUlvEu2qRWqR9LVaGSp8r2vAfQRlGMChITEp9Yjl/SmsHCeD6OA0LHTA+
         3NEMc2mzhne7F9zSBYpDU53fTBgIRo4WnSEpTJzlmh0g2daeabO61BMi0iXGQI4Kyh65
         D2hvyKEvtOQDA6U9PQz7UKL8DIpInTh63i/UC8pFQcoMeXu7Z1Uxagh2EsPv87rMP3JF
         gt4g==
X-Gm-Message-State: ABy/qLattp6yHdt/30Amp3OOwbZHJT5rFI5VI07/tKYZ7C0w3SNR9vdO
        +9VqpuRk9BvUlpSHLoJEHBmQ5w==
X-Google-Smtp-Source: APBJJlFTIFM47y2zWx3yLO6+5yOItfReFp8Cvo1mAkBhk2WY4PAX7iOKwaIW3APeJuYx6lE7g+AJng==
X-Received: by 2002:a17:906:101e:b0:987:47b3:6e34 with SMTP id 30-20020a170906101e00b0098747b36e34mr1730208ejm.67.1690548188345;
        Fri, 28 Jul 2023 05:43:08 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id o13-20020a1709061b0d00b0099bcb44493fsm2026617ejg.147.2023.07.28.05.43.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jul 2023 05:43:07 -0700 (PDT)
Message-ID: <ae317334-e3f0-f6b7-0477-c10cf10ca2c7@linaro.org>
Date:   Fri, 28 Jul 2023 14:43:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 12/50] dt-bindings: dmaengine: at_xdmac: add compatible
 with microchip,sam9x7
Content-Language: en-US
To:     Varshini Rajendran <varshini.rajendran@microchip.com>,
        vkoul@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
        claudiu.beznea@microchip.com, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20230728102451.265869-1-varshini.rajendran@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230728102451.265869-1-varshini.rajendran@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/07/2023 12:24, Varshini Rajendran wrote:
> Add compatible for sam9x7.
> 
> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
> ---
>  Documentation/devicetree/bindings/dma/atmel-xdma.txt | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

