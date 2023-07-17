Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AE6D755CEE
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 09:32:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229965AbjGQHcU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 03:32:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229514AbjGQHcT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 03:32:19 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3CE0FE
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 00:32:18 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-51e48e1f6d1so5531814a12.1
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 00:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689579137; x=1692171137;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Pv91Y/hHafEW4ZRKNw2H1A2oNIjmoAKxyQzlEUETkRE=;
        b=zarwAJv92Xt2k7MoCvVR5lmLFy3I9K9d0x3NDKwc5FaYGmxcnYkn879V5sq2RrTIzM
         lKNJ69TPFjFx9Xvnk3QcatXUKgOpl3sy86xTUAtPi7QMcm3hEOR0r6T61gZroWnqFZ07
         ixekUmiwu/U5HgVF6/N4MnxN2h9t0XvPWBaEp+OEEO8KFzG0qEtzWxM/A8ubZuSAjV5T
         c2SRCLycWpAh7EzHq7KGLfGKiiq0MF/9AbP6Uj5pD9GQejXs1sL7jCylPbc/R7H2yr4k
         VT1Oj0d2ZxN3Dgp41vTvk1Qn/YnT6FWRglmtgNpxQyyDyXbAmVThmFADrZjJ0QMFutLr
         AG4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689579137; x=1692171137;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Pv91Y/hHafEW4ZRKNw2H1A2oNIjmoAKxyQzlEUETkRE=;
        b=kJ0CwgYTA4v4SHqlMnYn3ZbiukGbWiFWKFPZ/EU8VXzr/BoU1rFwTBDfYBT5NLHVia
         8uWwimbnND0q6AzbrGDqRfesfcfyYnS1ZpAFi85bg8mtEd/2y3UDqlQtMJacJ7AhPldw
         FUpP+DFmTS1u9fXYWzbpuz4SIKc7DPNGfg/UOHWlJ3jfuTto9D9RhjmP2nHTnyP2QLx/
         37jUUWbICpvogJpK2L2BhHR50YLffaB9PiszV+g7NsRP1l7vb1gPSK/4PMwqkK468xXS
         EcKvuFJaM6w8YjSTXBuEBjsqxQddftbyDIGRFCwTrpHOiGAJvFejRWZ5crg+0ejHwlke
         VP8w==
X-Gm-Message-State: ABy/qLZlqPZg8gh+kdES8IDDvr/ZPNDi+BpCX0El+HqjzGUNRoI1E1ZX
        +whm4BgmfSlKbfGq2eJDnK3xMQ==
X-Google-Smtp-Source: APBJJlHS++C+Il0h3Fm0PWn55t4tbwHXihF3t5QSMivrJVprA40Kdc7aHUFPuoXYPQywSjZRRSUSGg==
X-Received: by 2002:aa7:c3d8:0:b0:51f:f1a4:edc6 with SMTP id l24-20020aa7c3d8000000b0051ff1a4edc6mr9916946edr.37.1689579137200;
        Mon, 17 Jul 2023 00:32:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id e3-20020a056402088300b0051e06693590sm9437408edy.91.2023.07.17.00.32.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jul 2023 00:32:16 -0700 (PDT)
Message-ID: <8b70a042-bd9e-6c4d-dc71-07d807a1f960@linaro.org>
Date:   Mon, 17 Jul 2023 09:32:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] dt-bindings: spi: convert spi-brcm63xx.txt to YAML
Content-Language: en-US
To:     Jonas Gorski <jonas.gorski@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230715100211.14726-1-jonas.gorski@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230715100211.14726-1-jonas.gorski@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/07/2023 12:02, Jonas Gorski wrote:
> Changes done during conversion:
> 
> * added a description, lifting and adapting the limitation sentence from
>   brcm,bcm63xx-hsspi.yml
> * added appropriate compatibles for 

...

> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - brcm,bcm6368-spi
> +              - brcm,bcm6362-spi
> +              - brcm,bcm63268-spi
> +          - const: brcm,bcm6358-spi
> +      - const: brcm,bcm6348-spi
> +      - const: brcm,bcm6358-spi

These two are just enum. It's preferred syntax.

> +
> +  reg:
> +    items:
> +      - description: main registers

Instead shorter:
maxItems: 1

With above:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

