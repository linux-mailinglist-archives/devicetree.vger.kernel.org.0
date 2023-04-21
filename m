Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7EC26EA4DA
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 09:33:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230480AbjDUHdQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 03:33:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231138AbjDUHdM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 03:33:12 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A2DB86A9
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:33:00 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-94a34a14a54so214938166b.1
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682062379; x=1684654379;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vQvSNekuA+xVkE6LzCJUvTt84uwzbVdRtArlra4/NAE=;
        b=Ljf3ZDbvRgdJ6JcznQJ75U2uZwxUvQUikAQ70VIb9G+LZ23XFhrK7O5nrdiSyH87Ol
         Vvtr5vhlMgKh/r74pD/Ucq5hnxi8iGfIbQCV+jqPrLcB4pdf/U7iebAcqxSC/KmMZ1ke
         XAxNTEH+ApcRO65R7r+o0VMDUl3arjUlYHfb+6tIbcuTShuw544n0wyaWXtEPa1dMS00
         KaVbRP0TY15Vyw7wjp27neuwp1BWNlVHU1wyQA/lwEVGzvbsGQd565Ii1u+IIxsnI+Mx
         PMBuCYf0Bq3JIKAiWC5iNgJP5fEuurZxAJZYbIvaaWxeuqEABTcv/hdQkGMVFiWuaDBX
         U2sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682062379; x=1684654379;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vQvSNekuA+xVkE6LzCJUvTt84uwzbVdRtArlra4/NAE=;
        b=QfvHMeey6x2EWME6e4GqePNd7OR9apPzizVtaOs+ubVOFBJ2ZQ1KgFNXbZEprgVbND
         uAcElly/ox7ND3164VH0UtzEut4Ufhm5LFS9iQg3/7PEFtNWPXCkszEEEYHjdFCCzsWX
         3jUP9K7018QdHt3JvS2CyBAn2OEnun4Eru5UD1nLsNu25dJV9Qp4nzIp+sPol+KMCxGa
         66ZeFKCFCM5QNArv21bvCwpY2n6W03v6g1uR5QFibHizIxqxaKgwroZkdzHsiKwTjq1Y
         Oi3mqP3OvY0rV+oqr/s8G2CugVJRFy0u6MRebxXjS/VYmjS6YbySh/9gMoiIzcqObCDR
         02DA==
X-Gm-Message-State: AAQBX9f7HbMBquHYiZ5oDHt4nhtnW0XjzbykQq5d+hDa7JsfK1mufsG5
        6Eqkw1WcYxCLWNG+RYwtiRKgPnx0tgswJU8hciw=
X-Google-Smtp-Source: AKy350YuwSWU0zYYPJ6XKDHEgyOhUdwxSW1wUc+No4b/btQ4LYih3U7vbYDCAzVzftXQU4aL59+vJg==
X-Received: by 2002:a05:6402:4c6:b0:4ac:b687:f57e with SMTP id n6-20020a05640204c600b004acb687f57emr3993389edw.1.1682062378752;
        Fri, 21 Apr 2023 00:32:58 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:668b:1e57:3caa:4d06? ([2a02:810d:15c0:828:668b:1e57:3caa:4d06])
        by smtp.gmail.com with ESMTPSA id d21-20020aa7c1d5000000b005027d31615dsm1537217edp.62.2023.04.21.00.32.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 00:32:58 -0700 (PDT)
Message-ID: <7d3d614f-b0e8-5d65-da9d-4ed7a7ba5e35@linaro.org>
Date:   Fri, 21 Apr 2023 09:32:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 1/3] dt-bindings: iio: potentiometer: Add the Renesas
 X9250 potentiometers
Content-Language: en-US
To:     Herve Codina <herve.codina@bootlin.com>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Christophe Leroy <christophe.leroy@csgroup.eu>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20230420121320.252884-1-herve.codina@bootlin.com>
 <20230420121320.252884-2-herve.codina@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230420121320.252884-2-herve.codina@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/04/2023 14:13, Herve Codina wrote:
> The Renesas X9250 is a quad digitally controlled potentiometers.
> 

Thank you for your patch. There is something to discuss/improve.

> +maintainers:
> +  - Herve Codina <herve.codina@bootlin.com>
> +
> +description:
> +  The Renesas X9250 integrates four digitally controlled potentiometers.
> +  On each potentiometer, the X9250T has a 100 kOhms total resistance and the
> +  X9250U has a 50 kOhms total resistance.
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml
> +  - $ref: /schemas/iio/iio.yaml
> +
> +properties:
> +  compatible:
> +    enum:
> +      - renesas,x9250t
> +      - renesas,x9250u
> +
> +  reg:
> +    description:
> +      SPI device address.

SPI bus does not have device addresses, AFAIR. Drop description.

> +    maxItems: 1
> +
> +  '#io-channel-cells':
> +    const: 1
> +
> +  spi-max-frequency:
> +    maximum: 2000000
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#io-channel-cells'
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    spi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        x9250@0 {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +            compatible = "renesas,x9250t";
> +            reg = <0>;
> +            spi-max-frequency = <2000000>;
> +            #io-channel-cells = <1>;
> +        };
> +    };

Best regards,
Krzysztof

