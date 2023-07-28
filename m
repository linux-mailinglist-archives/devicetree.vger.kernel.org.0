Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0820F766D7B
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 14:43:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234826AbjG1MnE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 08:43:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236625AbjG1Mmk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 08:42:40 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA8FB3AA3
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 05:42:35 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-99454855de1so281055366b.2
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 05:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690548154; x=1691152954;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4/n7cm36/8yWDoKasp6hGU9B6mkk1aGAdqGxIqpZEnY=;
        b=ed6jiUJoPqmsqmG7Bqa2r5KSCdJ7pe9J8g7h4ylgzGcegewSJ+VDab2gSJWjlxUrrO
         u97uw1IQBglfBoxHOBJqYnX4CfWZNbMd0SqLDqq3uUwlLoxD2eakNZ/7CkGUauF8Zmak
         i1Z6f7cqjKlq4nnknGqPP2XwEVVliIu3+xgx0T/GHeOQuSDKqRutTJ1VOo/P/e8y9J+Z
         SEcfcQzktw/vaKYRUWBP8xXfozJAa22MmGqwVObYIzHM2uSERGbtOgbzN7KCFXnhvEZ4
         WgSmJ467Yr/VBm2SRZlf+SpeAMFnxAbXl+v/UdfIFe9DRSZkUiEXT3RsnqRzOyhfs/ia
         52wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690548154; x=1691152954;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4/n7cm36/8yWDoKasp6hGU9B6mkk1aGAdqGxIqpZEnY=;
        b=M+n5jZyV0zvpPUcgaoUNWw1oKXh6yOV/l+iRMs9AJ8LGWgIObYVxNK05pELisckwaB
         RjAw952u5UVV3U9M83KrJ5Wl62Mepg3b3xWKrnUrQkBCmrur4tm9tJUe/cJoP/3+D6VO
         ZnvTLdqpKKASgcXoP2sii94ltbxq7qdTuquJGJbg0Vn5CL6uC/v8uD1Mxsy7VM2xCs3e
         adcRZls1nq6e5sjDZlObcsWdLXKww+sS+gXCv83ss4Q1dPwoQozZEqFbTcWUYcXG8tgp
         MaQYveeMVQ3Kze4+8Xs1zB/pGCapuTq9wbogdN6LXYzb0tc1T2NwiO4HYrgfkx901SQX
         RvcA==
X-Gm-Message-State: ABy/qLaKQ+QBK2ia5l9t0EaDxfCYcPZ2d9ec1tvI4ePATa2YPlBN8c45
        8yS0/Cht7DJq0KxzMwJlNmBgVw==
X-Google-Smtp-Source: APBJJlEZH/0is+8y1HyQY1lIeG9Yt8Xja4a00Mqlmm5oRRuVPRkp0uJyDLZS+43g8qmr0zLrGqyqlA==
X-Received: by 2002:a17:906:2257:b0:989:450:e585 with SMTP id 23-20020a170906225700b009890450e585mr1947892ejr.45.1690548154377;
        Fri, 28 Jul 2023 05:42:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id t25-20020a1709066bd900b0098e2eaec395sm2020526ejs.130.2023.07.28.05.42.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jul 2023 05:42:33 -0700 (PDT)
Message-ID: <8661f940-6c36-d654-664d-35156dcaffe4@linaro.org>
Date:   Fri, 28 Jul 2023 14:42:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 18/50] dt-bindings: atmel-ssc: add microchip,sam9x7-ssc
Content-Language: en-US
To:     Varshini Rajendran <varshini.rajendran@microchip.com>,
        claudiu.beznea@microchip.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230728102607.266187-1-varshini.rajendran@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230728102607.266187-1-varshini.rajendran@microchip.com>
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

On 28/07/2023 12:26, Varshini Rajendran wrote:
> Add microchip,sam9x7-ssc to DT bindings documentation.
> 
> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
> ---
>  Documentation/devicetree/bindings/misc/atmel-ssc.txt | 1 +


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

