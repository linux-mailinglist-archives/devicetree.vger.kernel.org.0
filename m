Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1C07571427
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 10:14:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232605AbiGLIOv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 04:14:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230196AbiGLIOt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 04:14:49 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B769ADC1
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:14:48 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id z25so12681368lfr.2
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=NaYE0YC5oBomgL0PmclsweYRAytccspL/sTByqhvc7I=;
        b=XV6LgXVn8D1tK9kHTYiLURnyiM7aue61n6dT5mNZwp7VGrsl9wcAgZsiYjLgfVeYtY
         AN9vERoMbcUyuYjcRZpPAJPBVrFArEvQt+qd3TDJYQUsDH/Sj5GvbJub9fEv0f1lqfwO
         ogpEjwFHMT3pZlkjoanORhcX+rIHznRkm8Uf0V6plzlcV3t5mTF05LagSSv8Z3WSmI3h
         JU/MUe29p5qYV1wj+6rrfy37pGqEHkd+XkLPWHYwM2bZKTnCR0crQCkbOZvBZ7L5O2JI
         uNx1+XkNSrkXMtuBT3xD27F3T/qjIVbFwJXjeUYUPCI6q2OAu0DWZ7CJkwW0Bpt7rsN9
         pWHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=NaYE0YC5oBomgL0PmclsweYRAytccspL/sTByqhvc7I=;
        b=3jxzgZr+MoDIX+Xd5TB6qfTc9eCM+Rc4vg4ivhG7DUkYO/devRUP8B9Q1qh1hosCpI
         DZIsTfNqWsdbW+r5OoeL7JUvrusrZck1Zz0Qs11hCfSkpM67oVJhuDnsitRlE4MifrNQ
         1ZFpW916ImtRTU5REyWRJiLraduzXE6d4LYtg6W47tLF+oWeMZ8LkywUZEUrV+axJV+x
         MFL9k5oEPF+tUEQOqRo6Rr4JhV2Z2qyk5idk6vFVM3B6EoA0uQcGDoJzLVZ+9jO+08PJ
         n8B5E98VxHGvtiTlKdFYT00CfMVjC2mSiFB9BT4MyecLUu+Q1UOJazfvgFnDVL46vZET
         eb0w==
X-Gm-Message-State: AJIora99e559bZaIYryHDztH+qaMAw+UaSIFqI8xXyID8ANft1rlAHKN
        SVDwLjihzzT/8zJHPDEiTUvbfA==
X-Google-Smtp-Source: AGRyM1uTRuXVxUGxHjUXtpenfQ8xEOSmzLpVZr/APJjFs1AGo/9O39jOrEr1RmWyohWhys6FfXZczw==
X-Received: by 2002:a05:6512:c0f:b0:489:dc4c:55bd with SMTP id z15-20020a0565120c0f00b00489dc4c55bdmr6821749lfu.118.1657613687148;
        Tue, 12 Jul 2022 01:14:47 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cab-55.bb.online.no. [88.92.171.55])
        by smtp.gmail.com with ESMTPSA id v9-20020a05651203a900b004790a4ce3e5sm2051670lfp.278.2022.07.12.01.14.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 01:14:46 -0700 (PDT)
Message-ID: <18103915-6ab5-cf23-c5c5-707864b3e049@linaro.org>
Date:   Tue, 12 Jul 2022 10:14:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 1/2] dt-bindings: sound: atmel,classd: Convert to
 json-schema
Content-Language: en-US
To:     Ryan.Wanner@microchip.com, lgirdwood@gmail.com, broonie@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
        claudiu.beznea@microchip.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220711183010.39123-1-Ryan.Wanner@microchip.com>
 <20220711183010.39123-2-Ryan.Wanner@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220711183010.39123-2-Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/07/2022 20:30, Ryan.Wanner@microchip.com wrote:

One more:

> +
> +examples:
> +  - |
> +    #include <dt-bindings/dma/at91.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    classd: sound@fc048000 {
> +    	compatible = "atmel,sama5d2-classd";
> +    	reg = <0xfc048000 0x100>;
> +        interrupts = <59 IRQ_TYPE_LEVEL_HIGH 7>;

Wrong indentation. I asked about this in v1.


Best regards,
Krzysztof
