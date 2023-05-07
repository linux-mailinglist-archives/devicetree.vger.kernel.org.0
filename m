Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A17FB6F975B
	for <lists+devicetree@lfdr.de>; Sun,  7 May 2023 09:43:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230356AbjEGHnh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 May 2023 03:43:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230133AbjEGHnf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 May 2023 03:43:35 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E379083E1
        for <devicetree@vger.kernel.org>; Sun,  7 May 2023 00:43:33 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-50bcae898b2so6149452a12.0
        for <devicetree@vger.kernel.org>; Sun, 07 May 2023 00:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683445412; x=1686037412;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q9wnpI4LY5XA7ZQ+x1OC+Dma/LdGYKig7MCJcU9UgWw=;
        b=ZhaZCy9KPVktg8gk9WLJpJ7otcDqj8JSnPjsZx621SYMTNO+STM7SMCG482IPpxMgB
         rIWJcxQxiG2o2RrweoZ0hdOTEwhzB0IC0v0BBryP6m1+VjRCXMAnMXyEQaZHRghEj/Ax
         zO7IQyrgB2UwvDdDQPVuZH9UHsF9eWasvcpJS1uf/WPTRlM8+RZKcePxyegpmo40DurV
         XtSog6pz8tYnfWyrBg64MUTELbjgWTyNcxilsqg40f+MxSZCe8kOzkn754NDbwyeETmE
         Exe5Mr0V8plqQ6dT4cpudrvIEwVA5/rU/o0hshSigsKoxqbuVanqYU7PlGsLSa284XM9
         RuPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683445412; x=1686037412;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q9wnpI4LY5XA7ZQ+x1OC+Dma/LdGYKig7MCJcU9UgWw=;
        b=hbgfga5+V11tqYKmnfDFKJP0NU07ZDwXNfxF66Plg28mevTcMMC7D+hj9uYe9fzqwR
         L3ZAyZ5mCqUsYdD6lQU992+NPKDayUiZwWmULE11Mqon48mtuW1qryQuB4rwf/09crkd
         5MuvZZk+NWdT/3cWKPopulClsM9Gf5sVGoziZF/26vq2wS7/TqTnRAPQo5ZwouDq7dDu
         VlYETdhbVY1VWLqkEyMffWvF8L3f2L5Be6G7eoWtU/R+/dkmw4BXgaBCLXJ35civ15Hi
         +S6o135W0alxaOxYPc2K0n9HWX4RqaYm8B7LCEIjAqI+n9tQnv6mgjUNmT61Z06Rd+xL
         mSww==
X-Gm-Message-State: AC+VfDzS2BB1RB/Lln2FWpGo01kDVBQp/8zxPBBUfD8/g5DPyC26SQJM
        2NEex1AIUDg3gRhslv7Yz7pRCg==
X-Google-Smtp-Source: ACHHUZ7+zmwIdFJH/nbHaLn4XM8hKakG/J5PsMXJK/E0DpgPAH+VwfRU3PK645C3P9HBQyyQ1RSHMg==
X-Received: by 2002:a17:906:9b89:b0:94a:5ecb:6ea7 with SMTP id dd9-20020a1709069b8900b0094a5ecb6ea7mr6771988ejc.43.1683445412357;
        Sun, 07 May 2023 00:43:32 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:183b:950f:b4d5:135a? ([2a02:810d:15c0:828:183b:950f:b4d5:135a])
        by smtp.gmail.com with ESMTPSA id n5-20020a1709065da500b00965e68b8df5sm3063825ejv.76.2023.05.07.00.43.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 May 2023 00:43:31 -0700 (PDT)
Message-ID: <cab7a294-cc2e-6070-8c89-77ca93eb52ab@linaro.org>
Date:   Sun, 7 May 2023 09:43:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v3 1/5] dt-bindings: spi: sun6i: add DT bindings for
 Allwinner R329/D1/R528/T113s SPI
Content-Language: en-US
To:     Icenowy Zheng <icenowy@aosc.io>,
        Maksim Kiselev <bigunclemax@gmail.com>,
        Andre Przywara <andre.przywara@arm.com>
Cc:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
        Maxime Ripard <mripard@kernel.org>, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
References: <20230506232616.1792109-1-bigunclemax@gmail.com>
 <20230506232616.1792109-2-bigunclemax@gmail.com>
 <835082fe07b77db8598aebabe98a74c2c5ac47d1.camel@aosc.io>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <835082fe07b77db8598aebabe98a74c2c5ac47d1.camel@aosc.io>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/05/2023 06:06, Icenowy Zheng wrote:
> 在 2023-05-07星期日的 02:26 +0300，Maksim Kiselev写道：
>> Listed above Allwinner SoCs has two SPI controllers. First is the
>> regular
>> SPI controller and the second one has additional functionality for
>> MIPI-DBI Type C.
>>
>> Add compatible strings for these controllers
>>
>> Signed-off-by: Maksim Kiselev <bigunclemax@gmail.com>
>> ---
>>  .../devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml   | 7
>> +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun6i-
>> a31-spi.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun6i-
>> a31-spi.yaml
>> index de36c6a34a0f..807dde457e3b 100644
>> --- a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-
>> spi.yaml
>> +++ b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-
>> spi.yaml
>> @@ -21,6 +21,7 @@ properties:
>>      oneOf:
>>        - const: allwinner,sun6i-a31-spi
>>        - const: allwinner,sun8i-h3-spi
>> +      - const: allwinner,sun50i-r329-spi
>>        - items:
>>            - enum:
>>                - allwinner,sun8i-r40-spi
>> @@ -28,6 +29,12 @@ properties:
>>                - allwinner,sun50i-h616-spi
>>                - allwinner,suniv-f1c100s-spi
>>            - const: allwinner,sun8i-h3-spi
>> +      - items:
>> +          - enum:
>> +              - allwinner,sun20i-d1-spi
>> +              - allwinner,sun20i-d1-spi-dbi
> 
> In this case I will prefer to list all 4 compatibles if backward
> compatibility is used:
> "allwinner,sun20i-d1-spi-dbi", "allwinner-sun20i-d1-spi",
> "allwinner,sun50i-r329-spi-dbi", "allwinner, sun50i-r329-spi", in case
> if we were gaining support for either quirks of D1 controller or
> SPI_DBI controllers.
> 

I don't understand. If I see correctly, all four of them are specified.

Best regards,
Krzysztof

