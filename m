Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9ECFE6E6A6A
	for <lists+devicetree@lfdr.de>; Tue, 18 Apr 2023 19:04:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231144AbjDRREC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Apr 2023 13:04:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230010AbjDRREB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Apr 2023 13:04:01 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 749FB7689
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 10:03:59 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id u3so23000905ejj.12
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 10:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681837438; x=1684429438;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yeb+j0uRHxo0/3jVaUSw8SJxsXMcawyAsWf7I/Y2TKY=;
        b=W4MZQ1Fh/8Yn/PCqbhmUVqyqu0txZLxfCH72szvS8+b0/iUDmZltHmG/gxOEtVO2D2
         I39nBTjBt1vegxBOEa0Sy1gUA2IkbS+7JjNvpAuT2CTxzYsltqteOVxxscyW6rNyTzmr
         ZJvOsLObxugbebBcV7ts67WZh9uzYWKnel9fxjFjWVupq22PUBryqLOoHN/eY/S8eQSn
         efNHIKvDADrL/lk+gH+liuNU7/C3/IQLNAGwbbT+ObtkiMSAzcKnSH78C3Ouv5dLuoYV
         tIiwEMZr1c39JQP5rj/pHzV8dE9TJWAsRZAGCyXy/Ui0gY2qHpUezwt7WZVFZW4Vh1fo
         f+Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681837438; x=1684429438;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yeb+j0uRHxo0/3jVaUSw8SJxsXMcawyAsWf7I/Y2TKY=;
        b=Cy09iy7Q44qdw6D9oficAqc+xLLzhmco+8gE3hnihmjSrd83sNpAqaeGEaLKv3OMWY
         P5202fPxKEVGr4HgwobG6h7HA/KRGKWA8yV1JBDe4UZUGJeVI0AKzP2xbfROp5qAtTQm
         mqrsnpyyCaHBDFk58x7h6PQLU1PvYlm3wpSrB1YtRR7vOmoycnnYyWqCsXuUtDz9LZuZ
         LaFfoS8dueJnXMLfZG3R4QrqShjZEJ1NgU+uiOhEut9mr1516X9SIl3/sg2twKmm8+tR
         emRDQK2USGuD0GaJQfluvhiJo47X9Eo/W7jT1PDHd1rbg4MrOfMi+J9RPHWIg2/KiStv
         4/WA==
X-Gm-Message-State: AAQBX9cKPIFlqEAHmA/e9BFC2zpnFM7E3sMtzix/5H8UPWJNFB+I/rNL
        IPNWvWJhRbR8Tq1mdvRAizwfKw==
X-Google-Smtp-Source: AKy350bG3ITZub0vdJV0FEDSEHb6p/ia1iyW2EpmA8HmbJ5FDbGX/sN/mAbqUSHkgldB+w6mXvBajg==
X-Received: by 2002:a17:906:5615:b0:94e:56c4:59f2 with SMTP id f21-20020a170906561500b0094e56c459f2mr11829378ejq.26.1681837437987;
        Tue, 18 Apr 2023 10:03:57 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a276:7d35:5226:1c77? ([2a02:810d:15c0:828:a276:7d35:5226:1c77])
        by smtp.gmail.com with ESMTPSA id w3-20020a170906b18300b0094b5ce9d43dsm8268301ejy.85.2023.04.18.10.03.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 10:03:57 -0700 (PDT)
Message-ID: <037279bc-0aba-0924-7679-b3f133cf837f@linaro.org>
Date:   Tue, 18 Apr 2023 19:03:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v1 4/9] dt-bindings: hwmon: Modify hpe,gxp-fan-ctrl
Content-Language: en-US
To:     nick.hawkins@hpe.com, verdun@hpe.com, linus.walleij@linaro.org,
        brgl@bgdev.pl, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, jdelvare@suse.com,
        linux@roeck-us.net, linux@armlinux.org.uk,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230418152824.110823-1-nick.hawkins@hpe.com>
 <20230418152824.110823-5-nick.hawkins@hpe.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230418152824.110823-5-nick.hawkins@hpe.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/04/2023 17:28, nick.hawkins@hpe.com wrote:
> From: Nick Hawkins <nick.hawkins@hpe.com>
> 
> Remove the fn2 register reference as GPIO will
> be using it.

Please wrap commit message according to Linux coding style / submission
process (neither too early nor over the limit):
https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586

Subject: everything is modify/update. Be a bit more descriptive what you
are doing here.

> 
> Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>
> ---
>  .../devicetree/bindings/hwmon/hpe,gxp-fan-ctrl.yaml         | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

BTW, bindings go before drivers using them.

Best regards,
Krzysztof

